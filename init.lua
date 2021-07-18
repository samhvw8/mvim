require('default-config')
require('keymappings')
vim.cmd('luafile ~/.config/nvim/gv-config.lua')
require('plugins')
vim.g.colors_name = O.colorscheme
require('settings')
require('gv-utils')
require("core.treesitter").setup()
require("core.telescope").setup()
require('core.which-key').setup()
require('core.rnvimr')
require("core.dashboard").setup()



-- LSP
-- require('lsp')
-- require('lsp.java-ls')
-- require('lsp.clangd')
-- -- require('lsp.php-ls')
-- -- require('lsp.dart-ls')
-- require('lsp.lua-ls')
-- require('lsp.bash-ls')
-- require('lsp.go-ls')
-- require('lsp.js-ts-ls')
-- require('lsp.python-ls')
-- require('lsp.rust-ls')
-- require('lsp.json-ls')
-- require('lsp.yaml-ls')
-- require('lsp.terraform-ls')
-- require('lsp.vim-ls')
-- require('lsp.graphql-ls')
-- require('lsp.docker-ls')
-- require('lsp.html-ls')
-- require('lsp.css-ls')
-- require('lsp.emmet-ls')
-- require('lsp.efm-general-ls')
-- -- require('lsp.latex-ls')
-- -- require('lsp.svelte-ls')
-- require('lsp.tailwindcss-ls')
-- -- require('lsp.ruby-ls')
-- -- require('lsp.kotlin-ls')
-- require('lsp.vue-ls')
-- require('lsp.flutter')
-- require('lsp.zk-md')
