require('plugins')
require('gv-globals')
require('gv-utils')
vim.cmd('luafile ~/.config/nvim/gv-settings.lua')
require('gv-autocommands')
require('settings')
require('keymappings')
require('colorscheme')
require('gv-galaxyline')
require('gv-comment')
require('gv-compe')
require('gv-barbar')
require('gv-dashboard')
require('gv-telescope')
require('gv-git')
require('gv-nvimtree')
require('gv-treesitter')
require('gv-autopairs')
require('gv-rnvimr')
require('gv-nvim-hlslens')
require('gv-colorizer')
require('gv-context-comment')
require('gv-surround')
require('gv-indent-blankline')
require('gv-dial')
require('gv-diffview')
require('gv-esearch')
require('gv-which-key')

-- Which Key (Hope to replace with Lua plugin someday)
-- vim.cmd('source ~/.config/nvim/vimscript/gv-whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/functions.vim')

-- LSP
require('lsp')
require('lsp.clangd')
require('lsp.php-ls')
require('lsp.dart-ls')
require('lsp.lua-ls')
require('lsp.bash-ls')
require('lsp.go-ls')
require('lsp.js-ts-ls')
require('lsp.python-ls')
require('lsp.rust-ls')
require('lsp.json-ls')
require('lsp.yaml-ls')
require('lsp.terraform-ls')
require('lsp.vim-ls')
require('lsp.graphql-ls')
require('lsp.docker-ls')
require('lsp.html-ls')
require('lsp.css-ls')
require('lsp.emmet-ls')
require('lsp.efm-general-ls')
require('lsp.latex-ls')
require('lsp.svelte-ls')
require('lsp.tailwindcss-ls')
require('lsp.ruby-ls')
require('lsp.kotlin-ls')
require('lsp.vue-ls')

