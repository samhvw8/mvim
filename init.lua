require("default-config")
require('builtin')
require("keymappings")
require("plugins")
vim.g.colors_name = O.colorscheme
require("settings")
require("utils")
require("core.treesitter").setup()
require("core.dashboard").setup()
