if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

vim.cmd('colorscheme ' .. O.colorscheme)
