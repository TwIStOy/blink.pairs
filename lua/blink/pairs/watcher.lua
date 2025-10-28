local utils = require('blink.pairs.utils')

local watcher = {
  --- @type table<number, boolean>
  watched_bufnrs = {},
}

--- Runs a full parse on the buffer when start_line, old_end_line, and new_end_line are not provided.
--- Otherwise, incrementally parses the buffer.
--- @param bufnr number
--- @param start_line? number
--- @param old_end_line? number
--- @param new_end_line? number
--- @return boolean did_parse
local function parse_buffer(bufnr, start_line, old_end_line, new_end_line)
  local start_time = vim.uv.hrtime()
  local rust = require('blink.pairs.rust')

  local lines = vim.api.nvim_buf_get_lines(bufnr, start_line or 0, new_end_line or -1, false)

  -- TODO: use 'lua' filetype for cmd buffers with := and :lua
  local ft = vim.bo[bufnr].filetype
  -- map cmdline's 'cmd' filetype to 'vim'
  if ft == 'cmd' then ft = 'vim' end

  -- if we don't support the buffer filetype, check if treesitter contains a mapping for it (e.g. codecompanion -> markdown)
  if not rust.supports_filetype(ft) then
    local treesitter_lang = vim.treesitter.language.get_lang(vim.bo[bufnr].filetype)
    if not treesitter_lang then return false end

    local treesitter = require('blink.pairs.context.treesitter')
    local filetypes = treesitter.get_filetypes(treesitter_lang)
    for _, filetype in ipairs(filetypes) do
      if rust.supports_filetype(filetype) then
        ft = filetype
        break
      end
    end
  end

  local ok, ret =
    pcall(rust.parse_buffer, bufnr, utils.get_tab_width(bufnr), ft, lines, start_line, old_end_line, new_end_line)
  local did_parse = ok and ret

  if did_parse and require('blink.pairs.config').debug then
    vim.print('parsing time: ' .. (vim.uv.hrtime() - start_time) / 1e6 .. ' ms')
  end

  return did_parse
end

--- Runs an initial parse on the buffer and attaches via nvim_buf_attach
--- for incremental parsing
--- @param bufnr number
--- @return boolean is_attached Whether the buffer is parseable and attached
function watcher.attach(bufnr)
  if watcher.watched_bufnrs[bufnr] then return true end

  local did_parse = parse_buffer(bufnr)
  if not did_parse then return false end

  watcher.watched_bufnrs[bufnr] = true

  vim.api.nvim_buf_attach(bufnr, false, {
    on_detach = function() watcher.watched_bufnrs[bufnr] = nil end,

    -- Full parse
    on_reload = function() parse_buffer(bufnr) end,
    on_changedtick = function(_, _, _) parse_buffer(bufnr) end,

    -- Incremental parse
    on_lines = function(_, _, _, start, old_end, new_end)
      -- detach if no longer parseable
      if not parse_buffer(bufnr, start, old_end, new_end) then return true end
    end,
  })

  return true
end

return watcher
