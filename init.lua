require("default-config")
require("keymappings")
vim.cmd("luafile ~/.config/nvim/gv-config.lua")
require("plugins")
vim.g.colors_name = O.colorscheme
require("settings")
require("gv-utils")
require("core.treesitter").setup()
require("core.telescope").setup()
require("core.which-key").setup()
require("core.dashboard").setup()
require("core.compe").setup()
require("core.autopairs")
