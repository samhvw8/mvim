vim.g.indent_blankline_char_list = {'|', '¦', '┆', '┊'}
-- vim.g.indent_blankline_char = '┃'
vim.g.indent_blankline_strict_tabs = true

vim.cmd("hi IndentBlankLine1 guifg='#21200C'")

vim.cmd("hi IndentBlankLine1 guifg='#b7bbc2'")
vim.cmd("hi IndentBlankLine2 guifg='#f9d3d3'")
vim.cmd("hi IndentBlankLine3 guifg='#e5ad8b'")
vim.cmd("hi IndentBlankLine4 guifg='#f5e27b'")
vim.cmd("hi IndentBlankLine5 guifg='#b6e5d3'")
vim.cmd("hi IndentBlankLine6 guifg='#d5f5f6'")
vim.cmd("hi IndentBlankLine7 guifg='#c4defe'")
vim.cmd("hi IndentBlankLine8 guifg='#ccdafc'")
vim.cmd("hi IndentBlankLine9 guifg='#dcd7fc'")
vim.cmd("hi IndentBlankLine10 guifg='#fbd2e9'")


vim.g.indent_blankline_char_highlight_list = {
    'IndentBlankLine1', 'IndentBlankLine2', 'IndentBlankLine3', 'IndentBlankLine4', 'IndentBlankLine5',
    'IndentBlankLine6', 'IndentBlankLine7', 'IndentBlankLine8', 'IndentBlankLine9', 'IndentBlankLine10'
}

vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_filetype_exclude = {'help', 'dashboard'}
vim.g.indent_blankline_buftype_exclude = {'terminal'}

-- warning this off if things feel a little slow
-- vim.g.indent_blankline_show_current_context = false
