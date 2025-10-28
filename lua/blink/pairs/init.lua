-- TODO: injected languages for markdown
-- TODO: many many more language definitions

local pairs = {}

local function set_highlights()
  local function set_hl(color, fg, ctermfg)
    vim.api.nvim_set_hl(0, 'BlinkPairs' .. color, { ctermfg = ctermfg, fg = fg, default = true })
  end

  set_hl('Orange', '#d65d0e', 15)
  set_hl('Purple', '#b16286', 13)
  set_hl('Blue', '#458588', 12)
  set_hl('Unmatched', '#ff007c', 9)

  vim.api.nvim_set_hl(0, 'BlinkPairsMatchParen', { link = 'MatchParen', default = true })
end

--- @param user_config blink.pairs.Config
function pairs.setup(user_config)
  set_highlights()

  local config = require('blink.pairs.config')
  config.merge_with(user_config)

  pairs.download_if_available(function(err)
    if err then error(err) end

    if config.mappings.enabled then
      require('blink.pairs.mappings').register(config.mappings.pairs, config.mappings.cmdline)
    end
    if config.highlights.enabled then require('blink.pairs.highlighter').register(config.highlights) end
  end)
end

--- You may optionally use `blink.download` for prebuilt binaries with the included `Cross.toml`
--- and `.github/workflows/release.yaml`
function pairs.download_if_available(callback)
  local success, downloader = pcall(require, 'blink.download')
  if not success then return callback() end

  -- See https://github.com/Saghen/blink.download for more info
  local root_dir = vim.fn.resolve(debug.getinfo(1).source:match('@?(.*/)') .. '../../../')

  downloader.ensure_downloaded({
    -- omit this property to disable downloading
    download_url = function(version, system_triple, extension)
      return 'https://github.com/saghen/blink.pairs/releases/download/' .. version .. '/' .. system_triple .. extension
    end,
    on_download = function()
      vim.notify('[blink.pairs] Downloading prebuilt binary...', vim.log.levels.INFO, { title = 'blink.pairs' })
    end,

    root_dir = root_dir,
    output_dir = '/target/release',
    binary_name = 'blink_pairs', -- excluding `lib` prefix
  }, callback)
end

-- Get match at a given position in a buffer
function pairs.get_match_at(bufnr, row, col)
  local ok, blink_pairs = pcall(require, 'blink_pairs')
  if not ok or not blink_pairs.get_match_at then return nil end

  return blink_pairs.get_match_at(bufnr, row, col)
end

return pairs
