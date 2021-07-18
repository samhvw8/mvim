local cmd = vim.cmd
local fn = vim.fn
local api = vim.api

local g = vim.g
local o, wo, bo = vim.o, vim.wo, vim.bo
local opt = vim.opt

cmd "filetype plugin on"
cmd('syntax enable') -- syntax highlighting

cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
cmd('set inccommand=split') -- Make substitution work in realtime
cmd('set hlsearch')
cmd "set iskeyword+=-"
cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd('colorscheme ' .. O.colorscheme)

if O.transparent_window then
  cmd "au ColorScheme * hi Normal ctermbg=none guibg=none"
  cmd "au ColorScheme * hi SignColumn ctermbg=none guibg=none"
  cmd "au ColorScheme * hi NormalNC ctermbg=none guibg=none"
  cmd "au ColorScheme * hi MsgArea ctermbg=none guibg=none"
  cmd "au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none"
  cmd "au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none"
  cmd "let &fcs='eob: '"
end

---  SETTINGS  ---

opt.shortmess:append "c"

if O.leader_key == " " or O.leader_key == "space" then
  vim.g.mapleader = " "
else
  vim.g.mapleader = O.leader_key
end

for _, plugin in pairs(O.disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

for k, v in pairs(O.default_options) do
  vim.opt[k] = v
end

vim.g.python3_host_prog = "/usr/local/bin/python"
vim.g.node_host_prog = "/usr/local/bin/neovim-node-host"
