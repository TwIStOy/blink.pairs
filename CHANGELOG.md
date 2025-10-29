## [0.4.1](https://github.com/Saghen/blink.pairs/compare/v0.4.0...v0.4.1) (2025-10-29)

### Reverts

* drop changedtick checks in watcher ([6d363d8](https://github.com/Saghen/blink.pairs/commit/6d363d845bafff26e9b48047b6e1ddb05888e1e7))

## [0.4.0](https://github.com/Saghen/blink.pairs/compare/v0.3.0...v0.4.0) (2025-10-28)

### BREAKING CHANGES

* stdlib, Context, treesitter, injections (#46)

### Features

* `BlinkPairsMatchParen` highlight group, linked to `MatchParen` ([aad41fc](https://github.com/Saghen/blink.pairs/commit/aad41fc3046050c4d415b6aa8187be7908562dcc))
* `matchparen.include_surrounding` ([e93ccdf](https://github.com/Saghen/blink.pairs/commit/e93ccdfa8042afa52f35e07e678869a7f34c6d34)), closes [#53](https://github.com/Saghen/blink.pairs/issues/53)
* add `vim.g.blink_pairs` and `vim.b.blink_pairs` support ([f2118c5](https://github.com/Saghen/blink.pairs/commit/f2118c57dc29417c7ef4d040964bd294acfa532d))
* add sql parser ([0398daf](https://github.com/Saghen/blink.pairs/commit/0398daf94200f2905067677d3ac159b4b305d864))
* **cmdline:** support cmdline mode ([#48](https://github.com/Saghen/blink.pairs/issues/48)) ([8821738](https://github.com/Saghen/blink.pairs/commit/8821738bbbe6bb63ac0669389e5dce917c2ea166))
* drop changedtick checks in watcher ([78d3a1f](https://github.com/Saghen/blink.pairs/commit/78d3a1fd3babbf34f3ce20a01350b4fd3cdd8281)), closes [#60](https://github.com/Saghen/blink.pairs/issues/60)
* fix nix build by disabling tests ([3cf0b66](https://github.com/Saghen/blink.pairs/commit/3cf0b660caf266992d6c62eb1f6049c483b35409))
* improved erroneous field in config message ([6896d6a](https://github.com/Saghen/blink.pairs/commit/6896d6a7558ce9518d9cc202f4c884c6c5346819))
* indent aware unmatched openings ([#52](https://github.com/Saghen/blink.pairs/issues/52)) ([565b4d4](https://github.com/Saghen/blink.pairs/commit/565b4d48a9e29d6fb93560c2cc2db6e1307f22f0))
* indent simd impl ([3def427](https://github.com/Saghen/blink.pairs/commit/3def4273ae9000af9876fb1870c5eb01c813c5b6))
* **latex:** support `' pair ([#42](https://github.com/Saghen/blink.pairs/issues/42)) ([8a4fc8a](https://github.com/Saghen/blink.pairs/commit/8a4fc8af7f322670de936b52effb2de228f0a4df))
* nix ([570ac7d](https://github.com/Saghen/blink.pairs/commit/570ac7d0a6a3bfabfde06d54b7c2d7900a2d6eb5))
* skip mappings on unmatched pair ([6bf7fea](https://github.com/Saghen/blink.pairs/commit/6bf7fea9cbbe0205acc1f5a2b6180f0f210c72df))
* stdlib, Context, treesitter, injections ([#46](https://github.com/Saghen/blink.pairs/issues/46)) ([be61fe8](https://github.com/Saghen/blink.pairs/commit/be61fe8b9d4a9e089cec07fc1803b841167c9c49))
* support disabling open/close/open_or_close rules individually ([a9d5c34](https://github.com/Saghen/blink.pairs/commit/a9d5c34c80672c4577bfa4ddb426ca244c11fdc3))
* support making `highlights.groups` a function ([c2d4030](https://github.com/Saghen/blink.pairs/commit/c2d4030c10e6628de159cbac79a32a70ad746290)), closes [#61](https://github.com/Saghen/blink.pairs/issues/61)
* support treesitter language mappings ([53327ab](https://github.com/Saghen/blink.pairs/commit/53327ab7aa06287010280ea81068f0690dc825f9)), closes [#59](https://github.com/Saghen/blink.pairs/issues/59)
* unmatched pair detection ([86247d6](https://github.com/Saghen/blink.pairs/commit/86247d6d489bb26b3a6b793e8110881703378556))

### Bug Fixes

* abbreviations not expanded in insert mode ([64fd515](https://github.com/Saghen/blink.pairs/commit/64fd5154dbe15e4712007df4e3801c2209ec09a0))
* add disabled_filetypes to partial config ([ad46843](https://github.com/Saghen/blink.pairs/commit/ad468433de0c04d8baf36ee549998c3d4b5ef246))
* avoid drawing while in cmdline mode ([879fb3d](https://github.com/Saghen/blink.pairs/commit/879fb3d76026efd305a686bab1d34f5be67d93ee)), closes [#50](https://github.com/Saghen/blink.pairs/issues/50)
* **benches:** make sure indent benches are black boxed properly ([d99d752](https://github.com/Saghen/blink.pairs/commit/d99d752be1f8df50fef777cd89ad02cf9cf69682))
* disable `'` in latex ([#45](https://github.com/Saghen/blink.pairs/issues/45)) ([7913618](https://github.com/Saghen/blink.pairs/commit/791361857b29163a21af45b85931ca71c9675c71))
* **highlight:** don't use ephemeral extmarks ([#43](https://github.com/Saghen/blink.pairs/issues/43)) ([95d04ce](https://github.com/Saghen/blink.pairs/commit/95d04ce524501affa98503c4d838b8c3a4f49770)), closes [#41](https://github.com/Saghen/blink.pairs/issues/41)
* **highlights:** catch errors in parsing ([34e6676](https://github.com/Saghen/blink.pairs/commit/34e667657804518db914810ebe91836cff0885df)), closes [#38](https://github.com/Saghen/blink.pairs/issues/38)
* ignore `'` after letter in all languages ([f59e6da](https://github.com/Saghen/blink.pairs/commit/f59e6da6a07de4bcdb018038d1c17bbc0ebbd325))
* s/blink.cmp/blink.pairs ([fb8a7cb](https://github.com/Saghen/blink.pairs/commit/fb8a7cbc7a65a8b6feb293ec678a6f6ed96406b6))
* try to expand abbreviations in mapping ([#62](https://github.com/Saghen/blink.pairs/issues/62)) ([66e22e0](https://github.com/Saghen/blink.pairs/commit/66e22e00b2f6ed6217abfceb53f6675f75fafe12))
* **types:** cmdline was not optional ([524bf76](https://github.com/Saghen/blink.pairs/commit/524bf76eae437bf965319bef413ba727729792f4))
* use `'` mapping when `'` found after cursor ([cb37d8a](https://github.com/Saghen/blink.pairs/commit/cb37d8acfd30031084247a4f97038b05bf8501b6)), closes [#63](https://github.com/Saghen/blink.pairs/issues/63)
* use per-buffer last_changedticks ([211274c](https://github.com/Saghen/blink.pairs/commit/211274cd88aef4164b7ccd4f6e5ef523f1ee348d)), closes [#60](https://github.com/Saghen/blink.pairs/issues/60)

### Performance Improvements

* **indent:** replace implementation (again) ([9c2ac08](https://github.com/Saghen/blink.pairs/commit/9c2ac08700f9a6950e6fa56cacbebe8bc640d881))
* **indents:** search for newlines, lane width ([b5ed8c3](https://github.com/Saghen/blink.pairs/commit/b5ed8c31cca3c8a62b12a5c8343752bdf3218d80))

## [0.3.0](https://github.com/Saghen/blink.pairs/compare/v0.2.0...v0.3.0) (2025-06-13)

### BREAKING CHANGES

* use nightly rust
* add highlights, rename to BlinkPair$Color (#10)

### Features

* add benchmarks ([b08c2a2](https://github.com/Saghen/blink.pairs/commit/b08c2a27988c03c74778423c892804e659ac3568))
* add clojure parser ([#8](https://github.com/Saghen/blink.pairs/issues/8)) ([2d593c1](https://github.com/Saghen/blink.pairs/commit/2d593c1e9308483b592b4540f106e89af9d99691))
* add highlights, rename to BlinkPair$Color ([#10](https://github.com/Saghen/blink.pairs/issues/10)) ([494d332](https://github.com/Saghen/blink.pairs/commit/494d33274526e27c83e872de099bfb9dd6a9792e))
* add mappings enable/disable api ([#27](https://github.com/Saghen/blink.pairs/issues/27)) ([493dfd0](https://github.com/Saghen/blink.pairs/commit/493dfd0ddc50fe528865e0b718dffc219ca86f86))
* add remaining languages ([9f74ef9](https://github.com/Saghen/blink.pairs/commit/9f74ef9e99d88df1371149db0b4a7cd6c82f0002))
* add rust ([598fe34](https://github.com/Saghen/blink.pairs/commit/598fe3474f208cdfb67f9bf2d9e8a28d78833517))
* add tokenize benchmarks ([7775d46](https://github.com/Saghen/blink.pairs/commit/7775d46141670b18d6b8c4f54a96e2d040e178b5))
* add typst to backtick pair filetypes ([bdeab45](https://github.com/Saghen/blink.pairs/commit/bdeab4508fc3f91ae1383deb97da288a61168e07))
* add tyspt parser ([fd40afd](https://github.com/Saghen/blink.pairs/commit/fd40afd0914509ce6265c77bbaa9e6398ac10e10))
* allow disabling pairs by setting to `{}` ([#6](https://github.com/Saghen/blink.pairs/issues/6)) ([5d42831](https://github.com/Saghen/blink.pairs/commit/5d4283173ff785aff89b67f870ad722c023afd58))
* avoid concatenating and splitting from/to lines/text ([#19](https://github.com/Saghen/blink.pairs/issues/19)) ([2eb7741](https://github.com/Saghen/blink.pairs/commit/2eb7741166aa5e8753d17d175d6336185fc36e01))
* avoid copying strings ([84ac023](https://github.com/Saghen/blink.pairs/commit/84ac023e112c03be76d7aedcbf8bcd405308bb65))
* basic, likely buggy, rule system ([9fe4e26](https://github.com/Saghen/blink.pairs/commit/9fe4e2668dbf8f3982afe349b535adaacdfe11e1))
* choose SIMD width at build time ([2ee4ddd](https://github.com/Saghen/blink.pairs/commit/2ee4ddd04014e3756bf3b908da067d93a7cc6526))
* cleanup tokenizer ([049d5b2](https://github.com/Saghen/blink.pairs/commit/049d5b254525d7c3af7d4a1fd9ee72e9f4fdc9c6))
* config refactoring and validation ([#7](https://github.com/Saghen/blink.pairs/issues/7)) ([7845caa](https://github.com/Saghen/blink.pairs/commit/7845caace6e9c74706ee4a17e1a7ef1be7d045c6))
* disable `space` rules for backtick, single and double quotes ([23f1d5e](https://github.com/Saghen/blink.pairs/commit/23f1d5ee1594ca059585005dcd2544803d7c2986))
* disable with `vim.g.pairs`, `vim.b.pairs` or `mappings.disabled_filetypes` ([db86320](https://github.com/Saghen/blink.pairs/commit/db863207dd52c9ecec3852f4904cd4db21b496e7))
* don't ask questions ([98850f2](https://github.com/Saghen/blink.pairs/commit/98850f2f8cb45d71a87c1c9b8c7e69d4da4c3440))
* don't clone BlockStringSymmetric delimiters ([14f1929](https://github.com/Saghen/blink.pairs/commit/14f1929ec02522dfa4d5b616c76220b632e6fb2a))
* don't lex rest of line when on line comment ([b70c3b0](https://github.com/Saghen/blink.pairs/commit/b70c3b01241d6f491327b81df7c14daf8957ba15))
* enable typescript, javascriptreact, and typescriptreact filetypes ([34d9509](https://github.com/Saghen/blink.pairs/commit/34d950951850dc5d32001e05b65347b8d589fd6c))
* exclude test languages from github language stats ([e2b2777](https://github.com/Saghen/blink.pairs/commit/e2b277721a72e92e03506292727ca507b4429297))
* generic matchers ([e54be82](https://github.com/Saghen/blink.pairs/commit/e54be8262861ed7bb4707f110fc1fab221dbf27e))
* get matching pairs from rust ([1b384f1](https://github.com/Saghen/blink.pairs/commit/1b384f119533adedc952e4e96c7caa7600740b84))
* github issue templates ([#1](https://github.com/Saghen/blink.pairs/issues/1)) ([cb21b81](https://github.com/Saghen/blink.pairs/commit/cb21b810b78478e6c4f1810f83990af8ef1dcaff))
* handle escaped chars in line and block strings ([e7f128f](https://github.com/Saghen/blink.pairs/commit/e7f128fd2cb18a64c72a5fb3fa85af7e68ef91ca))
* handle multiple backslashes in `is_escaped` ([#24](https://github.com/Saghen/blink.pairs/issues/24)) ([403795f](https://github.com/Saghen/blink.pairs/commit/403795f549910d9bc83d20c91c415bdcb23e3c66))
* **highlights:** matchparen ([3d66e0f](https://github.com/Saghen/blink.pairs/commit/3d66e0f202df33bf54e20dc02f0613684452ad42))
* implements basic arbitrary spans ([#31](https://github.com/Saghen/blink.pairs/issues/31)) ([02184b2](https://github.com/Saghen/blink.pairs/commit/02184b26d7c4df25990564fa91be1eee2c528f63))
* initial support for latex ([#21](https://github.com/Saghen/blink.pairs/issues/21)) ([217532d](https://github.com/Saghen/blink.pairs/commit/217532daa3cdd869e2c838ff1d6808db1bb7b4db))
* intern delimiters as 'static during lexing ([ae8de24](https://github.com/Saghen/blink.pairs/commit/ae8de240908552c66427b8e6857676b873fa413a))
* many languages ([#18](https://github.com/Saghen/blink.pairs/issues/18)) ([e370ff1](https://github.com/Saghen/blink.pairs/commit/e370ff149b7fa21d82ebc634dae2c135eed20668))
* **markdown:** when clause for `_` on word char ([8f44c8c](https://github.com/Saghen/blink.pairs/commit/8f44c8ca4e17db7a2a7d066db7002b082b50c607))
* multi byte tokens ([26f7b60](https://github.com/Saghen/blink.pairs/commit/26f7b6052be8d67546450fa4f18d16931e6752d6))
* **nix:** use fenix for rust toolchain to allow using experimental features ([#32](https://github.com/Saghen/blink.pairs/issues/32)) ([f642abf](https://github.com/Saghen/blink.pairs/commit/f642abf190cb3c595b67934493d0ddffdfb957a8))
* parse character literals in rust and csharp ([07d014e](https://github.com/Saghen/blink.pairs/commit/07d014ec36b727ead8e44fdfeef72e64fa5bf7f1))
* pre-allocate matches vec ([4fc3b62](https://github.com/Saghen/blink.pairs/commit/4fc3b62d00a42cbefd9705e05f87a8cfe5934fbc))
* recover from poisoned mutex, ensure splice range is valid ([53a3437](https://github.com/Saghen/blink.pairs/commit/53a3437c3548283a97409455b57ef9ed0d79dea8))
* remove `row` from Match ([b90cf6f](https://github.com/Saghen/blink.pairs/commit/b90cf6f5d67a05ea24397c123415d33cfe396f80))
* remove old parser ([29e900a](https://github.com/Saghen/blink.pairs/commit/29e900a31348158ed6ec227dc803462fee715634))
* remove unnecessary clone ([0b95174](https://github.com/Saghen/blink.pairs/commit/0b95174eb857fbaae75ab8c0fe7c11a19b4ee5fa))
* return states from parser ([5821ffb](https://github.com/Saghen/blink.pairs/commit/5821ffb3036acada5c6f1383992f8bb4709258b2))
* rework types, macro arm generation and lua interface ([f192f69](https://github.com/Saghen/blink.pairs/commit/f192f69dbd28afb18ed9d8f0d9e1d23437332a4b))
* rework with separate tokenization and parsing stages ([2bdde60](https://github.com/Saghen/blink.pairs/commit/2bdde60d3df466424ed7f7ed1ccb880f52cf6627))
* **rust:** when clause for lifetimes ([e6f2c7b](https://github.com/Saghen/blink.pairs/commit/e6f2c7b84f7fb9650ccf750c7195413774c5ad2b))
* simd matcher ([23a130c](https://github.com/Saghen/blink.pairs/commit/23a130c2ad22a9ab1c0439db5dc03943eac111a4))
* split matcher out of parser, add broken stack impl ([349e64c](https://github.com/Saghen/blink.pairs/commit/349e64c861b92d82c83670212af8e84895164140))
* support block strings ([80b3501](https://github.com/Saghen/blink.pairs/commit/80b35016801efcf5e39201b15e395f0ef1f26d86))
* tokenize many more chars ([4e265d1](https://github.com/Saghen/blink.pairs/commit/4e265d116f160fa885a1a1d5e0a864c63cf8f508))
* track parsing state across incremental reparses ([6580310](https://github.com/Saghen/blink.pairs/commit/6580310f9a2241ce4e28531c309e29e9bfc331ad)), closes [#13](https://github.com/Saghen/blink.pairs/issues/13)
* u8 tokens, matcher macros ([ac8c48c](https://github.com/Saghen/blink.pairs/commit/ac8c48ce37ec8d1909db50c7b28bd07368a33c93))

### Bug Fixes

* `"""` and `'''` trigger condition ([f07dee0](https://github.com/Saghen/blink.pairs/commit/f07dee0174b21196ba328b4ad7a5bce331f7013e))
* add when rule to triple backtick ([73ebe22](https://github.com/Saghen/blink.pairs/commit/73ebe224fd8943aa604fd0b9cb6ca311f86fa9bf))
* backspace removing single space ([fc83e73](https://github.com/Saghen/blink.pairs/commit/fc83e732ffda037c07a7b585833c0e3c81818a04)), closes [#4](https://github.com/Saghen/blink.pairs/issues/4)
* **bench:** use tokenize result to avoid optimizing everything away ([ad14954](https://github.com/Saghen/blink.pairs/commit/ad14954da8849bfda2b08c2f791bca857ee2ed64))
* blink.cmp.config.utils => blink.pairs.config.utils ([0f9dc66](https://github.com/Saghen/blink.pairs/commit/0f9dc663e77bc9d2568caada95caad292fe2db51))
* block comment close parsing ([b40fa18](https://github.com/Saghen/blink.pairs/commit/b40fa1859a45fa55c62233a242fce00f83c30862)), closes [#22](https://github.com/Saghen/blink.pairs/issues/22)
* clear matchparen namespace on update ([e99c5d4](https://github.com/Saghen/blink.pairs/commit/e99c5d4e06946590cdbde77db5ef7008db90befa))
* close_pair moving wrong direction ([d7f2c67](https://github.com/Saghen/blink.pairs/commit/d7f2c67ca998c4c3fdf27f533cfb0d9c0a6343f3))
* config requiring all match paren options ([dc8cccc](https://github.com/Saghen/blink.pairs/commit/dc8cccc703bd9d9400b0f1b469bdbc831c48735f))
* correctly parse single-character strings ([ca1c57b](https://github.com/Saghen/blink.pairs/commit/ca1c57b78b6227a1a30ba8e66ae35f8c9d86b5b0))
* don't autopair in replace mode ([#23](https://github.com/Saghen/blink.pairs/issues/23)) ([6a48b60](https://github.com/Saghen/blink.pairs/commit/6a48b606b7e5d0598991b770e0bc7e388697ad9a))
* don't find matches pairs for `Kind::NonPair` ([850ca26](https://github.com/Saghen/blink.pairs/commit/850ca2613a4be15e2c7bea7d89f1366f0181af00))
* handle BlockStringClose correctly ([49dd69c](https://github.com/Saghen/blink.pairs/commit/49dd69c4673d34e9539c087d5b78c3cb4f5027d2))
* handle escaped newline in strings ([b0e0287](https://github.com/Saghen/blink.pairs/commit/b0e02870eb3e00a4364728cac4eea179f126a2b8))
* is_after_cursor checking char behind cursor ([da36791](https://github.com/Saghen/blink.pairs/commit/da36791a40bad5f1d730aee957bc78e406db07a3)), closes [#3](https://github.com/Saghen/blink.pairs/issues/3)
* **latex:** support latex, tex and bib filetype ([#33](https://github.com/Saghen/blink.pairs/issues/33)) ([fc905a4](https://github.com/Saghen/blink.pairs/commit/fc905a47a4b44b072c7f73c5a63ffb5574f671c5))
* lua block comment closing ([a57bfdd](https://github.com/Saghen/blink.pairs/commit/a57bfdd9522fab770c78709a86f99c90e210f87b))
* match_pair missing adjacent opening pair on closing pair ([8fee979](https://github.com/Saghen/blink.pairs/commit/8fee9792acf092e4aab19aa054a7d2e4b948aa70))
* **matcher:** ignore escaped prefixes for line comments ([#40](https://github.com/Saghen/blink.pairs/issues/40)) ([024f69a](https://github.com/Saghen/blink.pairs/commit/024f69affca6be7a3b4850495224faf0769b6f67))
* **matchparen:** use open length when no closing length ([dcf5c1e](https://github.com/Saghen/blink.pairs/commit/dcf5c1efdbbceae55fbb8f0fd63b9df9a8da75c3))
* multichar MatchParen ([5549644](https://github.com/Saghen/blink.pairs/commit/554964403213b13e69b6813689a25fa834923222))
* **nix:** use nightly toolchain for build ([#37](https://github.com/Saghen/blink.pairs/issues/37)) ([ea45248](https://github.com/Saghen/blink.pairs/commit/ea4524806fa32b5a1fa28861af8f158a2ca4412b))
* occasional panic when typing in define_matcher macro ([f8a4701](https://github.com/Saghen/blink.pairs/commit/f8a4701e448dae715a24e570770abcbe25cdd0e8))
* only `impl` some Match constructors for `cfg(test)` ([cdfd2d2](https://github.com/Saghen/blink.pairs/commit/cdfd2d21f2c673c9cf01b77eef423b334df9e8fa))
* readme installation miss a comma ([#14](https://github.com/Saghen/blink.pairs/issues/14)) ([197d758](https://github.com/Saghen/blink.pairs/commit/197d7584a72500de537388ea684ad806fc5130a0))
* remove unnecessary clone ([6fc191b](https://github.com/Saghen/blink.pairs/commit/6fc191b76dc7a30a657d89196b98f280ffd35958))
* remove unnecessary clone ([723e4ae](https://github.com/Saghen/blink.pairs/commit/723e4aedcd25684de040ea87fe4bbef939326ecf))
* remove unnecessary unwrap ([51ef71a](https://github.com/Saghen/blink.pairs/commit/51ef71a4157cd29823a8ba592f98fc13e96ba817))
* resolve freeze after file content increases ([#12](https://github.com/Saghen/blink.pairs/issues/12)) ([fc93e3d](https://github.com/Saghen/blink.pairs/commit/fc93e3d4d736d666c09d09108b3b853af1817aea))
* rust block comment closing delimiter ([1edc7e5](https://github.com/Saghen/blink.pairs/commit/1edc7e5e25660227701a0fa827b8a1583853c08a))
* **rust:** remove raw `r""` strings ([00e0a2d](https://github.com/Saghen/blink.pairs/commit/00e0a2d939513faccbada2b062fb0cb277af7da5))
* serialize Option as lua nil instead of userdata ([5ab0eee](https://github.com/Saghen/blink.pairs/commit/5ab0eee3d62c593d8b7f68fc9550a3b163598a98))
* symmetric block string delimiters ([#16](https://github.com/Saghen/blink.pairs/issues/16)) ([0f06988](https://github.com/Saghen/blink.pairs/commit/0f069883e4a4a6bc5cdd8a29a67ca88a9b8014e4))
* toml has ' strings ([ada6892](https://github.com/Saghen/blink.pairs/commit/ada689258a49992975faa307312cbd13488a941c))
* types ([d765230](https://github.com/Saghen/blink.pairs/commit/d76523095c8311c10de270557c881ec175ed1922))
* use nightly rust ([812f8a5](https://github.com/Saghen/blink.pairs/commit/812f8a526b899392522ec29c7e504b3b7488e562))
* use regex for single-line string parsing ([6bbbd22](https://github.com/Saghen/blink.pairs/commit/6bbbd227a025d04cbbc82df234cde93db3f704e4))
* use when rule when filetype defined ([fa3db9b](https://github.com/Saghen/blink.pairs/commit/fa3db9b788a8691f686881d301c40aa1abf8812c)), closes [#2](https://github.com/Saghen/blink.pairs/issues/2)

### Performance Improvements

* don't allocate a Vec for tokens ([2719f64](https://github.com/Saghen/blink.pairs/commit/2719f64df602a11f87ea94e8e5b0193b3c7ebc8b))
* optimized release/bench build flags ([4225f60](https://github.com/Saghen/blink.pairs/commit/4225f60642da74a3880f15354f4ba0546a053c04))
* splat SimdVec inside hot loop ([d4a47f7](https://github.com/Saghen/blink.pairs/commit/d4a47f714821ac442af0631c5242c64e6da430e8))

## [0.2.0](https://github.com/Saghen/blink.pairs/compare/v0.1.0...v0.2.0) (2025-03-15)

### Features

* add json parser ([04054a1](https://github.com/Saghen/blink.pairs/commit/04054a12444eb6605467c50f4ae21315bbc8b407))
* auto pairs support ([0afc7bb](https://github.com/Saghen/blink.pairs/commit/0afc7bb0f756a93dc65647634a2202652a46a5e2))
* escaped and space mappings ([3438406](https://github.com/Saghen/blink.pairs/commit/3438406fc1cfb9a3ada5c46b1c408faf49e9e29c))
* remove `<` from default config ([d287879](https://github.com/Saghen/blink.pairs/commit/d287879f4763a5e04391088e5d7266b949277c25))

## [0.1.0](https://github.com/Saghen/blink.pairs/compare/ea6839761ae64eecebe191363760812bb9a31824...v0.1.0) (2025-03-14)

### Features

* add nix flake ([5f0408d](https://github.com/Saghen/blink.pairs/commit/5f0408d7ca9fc6aff9089b2ec74d34d35c129557))
* initial commit :crab: ([ea68397](https://github.com/Saghen/blink.pairs/commit/ea6839761ae64eecebe191363760812bb9a31824))
* switch ci to rust stable ([5af2afc](https://github.com/Saghen/blink.pairs/commit/5af2afc1282e687ffd50485b58fe6dc718ac26f0))
* switch from nvim-oxi to mlua ([1b1183a](https://github.com/Saghen/blink.pairs/commit/1b1183ad661b4379f5d89c6b4ab1339a8cfc1bb1))

### Bug Fixes

* ci workflow artifact name ([cdc1a4c](https://github.com/Saghen/blink.pairs/commit/cdc1a4c56e2940624a9581722fcbf5d7c5995079))
* incremental update ranges ([2b8cbaa](https://github.com/Saghen/blink.pairs/commit/2b8cbaa40755966b64eaaf1d4e1487bc7e0140fe))
* remaining references to blink.delimiters ([7ca329b](https://github.com/Saghen/blink.pairs/commit/7ca329bf9a99fc35437975ab1515f81d82086fc2))
* root dir for download ([3881f52](https://github.com/Saghen/blink.pairs/commit/3881f5235c1f1c4d66c6acea1c46cea66c7b874a))
* root_dir passed incorrectly ([fa8974e](https://github.com/Saghen/blink.pairs/commit/fa8974e771f62e52884ccdfe1c5d5ecaacf2e72b))
