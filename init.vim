let path = expand('%:p:h')
exec 'source' path . '/vimrcs/basic.vim'
exec 'source' path . '/vimrcs/filetypes.vim'
exec 'source' path . '/vimrcs/plugins_config.vim'