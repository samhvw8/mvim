local map = require('remap').map

vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '0', '^', {noremap = true, silent = true})

-- no hl
-- vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-w><Left>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-w><Down>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-w><Up>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-w><Right>', '<C-w>l', {silent = true})

-- TODO fix this
-- -- Terminal window navigation
-- vim.cmd([[
--   tnoremap <C-h> <C-\><C-N><C-w>h
--   tnoremap <C-j> <C-\><C-N><C-w>j
--   tnoremap <C-k> <C-\><C-N><C-w>k
--   tnoremap <C-l> <C-\><C-N><C-w>l
--   inoremap <C-h> <C-\><C-N><C-w>h
--   inoremap <C-j> <C-\><C-N><C-w>j
--   inoremap <C-k> <C-\><C-N><C-w>k
--   inoremap <C-l> <C-\><C-N><C-w>l
--   tnoremap <Esc> <C-\><C-n>
-- ]])

-- TODO fix this
-- resize with arrows
-- vim.cmd([[
--   nnoremap <silent> <C-Up>    :resize -2<CR>
--   nnoremap <silent> <C-Down>  :resize +2<CR>
--   nnoremap <silent> <C-Left>  :vertical resize -2<CR>
--   nnoremap <silent> <C-Right> :vertical resize +2<CR>
-- ]])

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
-- vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
-- vim.api.nvim_set_keymap('n', ']b', ':bnext<CR>', {noremap = true, silent = false})
-- vim.api.nvim_set_keymap('n', '[b', ':bprevious<CR>', {noremap = true, silent = false})

-- Move selected line / block of text in visual mode
-- vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', ']h', '<cmd>NextHunk<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '[h', '<cmd>PrevHunk<cr>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', ']h', '<cmd>NextHunk<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '[h', '<cmd>PrevHunk<cr>', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')

vim.g['asterisk#keeppos'] = 0
map('', '*', [[<Plug>(asterisk-z*)<Cmd>lua require('hlslens').start()<CR>]], {})
map('', '#', [[<Plug>(asterisk-z#)<Cmd>lua require('hlslens').start()<CR>]], {})
map('', 'g*', [[<Plug>(asterisk-gz*)<Cmd>lua require('hlslens').start()<CR>]], {})
map('', 'g#', [[<Plug>(asterisk-gz#)<Cmd>lua require('hlslens').start()<CR>]], {})

-- Toggle the QuickFix window
vim.api.nvim_set_keymap('', '<C-q>', ':call QuickFixToggle()<CR>', {noremap = true, silent = true})
