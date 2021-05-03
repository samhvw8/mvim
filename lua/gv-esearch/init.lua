-- vim.api.nvim_set_keymap('n', '<m-s>', '<plug>(esearch)', {silent = true})
vim.api.nvim_set_keymap('', '<m-s>', '<plug>(operator-esearch-prefill)', {silent = true})

vim.g.esearch = {
    regex = 1,
    textobj = 0,
    case = 'smart',
    prefill = {'hlsearch', 'last', 'clipboard'},
    root_markers = {'.git', 'Makefile', 'node_modules'},
    default_mappings = 1,
    live_update = 0,
    name = '[esearch]'
}
