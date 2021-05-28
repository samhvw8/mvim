local cmd = vim.cmd
local fn = vim.fn
local api = vim.api

local g = vim.g
local o, wo, bo = vim.o, vim.wo, vim.bo

cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
cmd('set inccommand=split') -- Make substitution work in realtime
o.hidden = O.hidden_files -- Required to keep multiple buffers open multiple buffers
o.title = true
TERMINAL = fn.expand('$TERMINAL')
cmd('let &titleold="' .. TERMINAL .. '"')
o.titlestring = "%<%F%=%l/%L - nvim"
wo.wrap = O.wrap_lines -- Display long lines as just one line
cmd('set whichwrap+=<,>,[,],h,l') -- move to next line with theses keys
cmd('syntax enable') -- syntax highlighting
-- o.pumheight = 10 -- Makes popup menu smaller
o.fileencoding = "utf-8" -- The encoding written to file
o.cmdheight = 2 -- More space for displaying messages
cmd('set colorcolumn=99999') -- fix indentline for now
o.mouse = "a" -- Enable your mouse
o.splitbelow = true -- Horizontal splits will automatically be below
o.termguicolors = true -- set term gui colors most terminals support this
o.splitright = true -- Vertical splits will automatically be to the right
o.t_Co = "256" -- Support 256 colors
o.conceallevel = 0 -- So that I can see `` in markdown files
cmd('set ts=4') -- Insert 2 spaces for a tab
cmd('set sw=4') -- Change the number of space characters inserted for indentation
bo.expandtab = true -- Converts tabs to spaces
bo.smartindent = true -- Makes indenting smart
wo.number = O.number -- set numbered lines
wo.relativenumber = O.relative_number -- set relative number
wo.cursorline = true -- Enable highlighting of the current line
o.showtabline = 2 -- Always show tabs
o.showmode = false -- We don't need to see things like -- INSERT -- anymore
o.writebackup = false -- This is recommended by coc
wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
o.updatetime = 250 -- Faster completion
o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
o.showbreak = '╰─➤'
o.lazyredraw = true
-- o.guifont = "JetBrainsMono\\ Nerd\\ Font\\ Mono:h18"
-- o.guifont = "Hack\\ Nerd\\ Font\\ Mono"
-- o.guifont = "SauceCodePro Nerd Font:h17"
o.guifont = "FiraCode Nerd Font:h17"

o.incsearch = true
o.ignorecase = true
o.smartcase = true

-- undo
bo.undofile = true
o.undofile = vim.bo.undofile
o.undolevels = 1000

-- no backup
o.backup = false
bo.swapfile = false
o.swapfile = bo.swapfile

vim.g.python3_host_prog = "/usr/local/bin/python"
vim.g.node_host_prog = "/usr/local/bin/neovim-node-host"

-- o.guifont = "JetBrains\\ Mono\\ Regular\\ Nerd\\ Font\\ Complete"
-- vim.g.loaded_netrwPlugin = 1 -- needed for netrw gx command to open remote links in browser
vim.cmd('filetype plugin on') -- filetype detection
