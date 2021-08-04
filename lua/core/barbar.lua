vim.api.nvim_set_keymap("n", "]b", ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[b", ":BufferPrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-x>", ":BufferClose<CR>", { noremap = true, silent = true })
