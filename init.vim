let g:nvim_config_root = stdpath('config')

let g:config_file_list = ['basic.vim',
    \ 'filetypes.vim',
    \ 'plugins_config.vim'
    \ ]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . '/vimrcs/' . f
endfor
