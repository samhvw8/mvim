" Flagging unnecessary whitespaces
" highlight BadWhitespace ctermbg=red guibg=darkred

augroup extra_space
    autocmd!
    " au BufRead,BufNewFile  *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
    autocmd BufWritePre *.txt,*.js,*.ts,*.jsx,*.tsx,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
augroup end


""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1

augroup python_filetype_setup
    autocmd!
    " Python indentation
    au BufNewFile,BufRead *.py
                \ set tabstop=4 |
                \ set softtabstop=4 |
                \ set shiftwidth=4 |
                \ set expandtab |
                \ set autoindent |
                \ set fileformat=unix


    " au FileType python syn keyword pythonDecorator True None False self

    " au BufNewFile,BufRead *.jinja set syntax=htmljinja
    " au BufNewFile,BufRead *.mako set ft=mako

    " au FileType python map <buffer> F :set foldmethod=indent<cr>

    " au FileType python inoremap <buffer> $r return
    " au FileType python inoremap <buffer> $i import
    " au FileType python inoremap <buffer> $p print
    " au FileType python inoremap <buffer> $f # --- <esc>a
    " au FileType python map <buffer> <leader>1 /class
    " au FileType python map <buffer> <leader>2 /def
    " au FileType python map <buffer> <leader>C ?class
    " au FileType python map <buffer> <leader>D ?def
augroup end




""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
augroup javascript_setup
    autocmd!
    au FileType javascript call JavaScriptFold()
    au FileType javascript setl fen
    au FileType javascript setl nocindent
    " autocmd BufNewFile,BufRead *.js
    "             \ set shiftwidth=4 |
    "             \ set softtabstop=4 |
    "             \ set tabstop=4 |
    "             \ set expandtab |

    " au FileType javascript imap <C-t> $log();<esc>hi
    " au FileType javascript imap <C-a> alert();<esc>hi

    " au FileType javascript inoremap <buffer> $r return
    " au FileType javascript inoremap <buffer> $f // --- PH<esc>FP2xi
augroup end

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"

let g:vim_jsx_pretty_colorful_config = 1
let g:vim_jsx_pretty_highlight_close_tag = 1

" set conceallevel=1

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

""""""""""""""""""""""""""""""
" => golang section
"""""""""""""""""""""""""""""""


" go
let g:go_fmt_command = "goimports"
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1



""""""""""""""""""""""""""""""
" => typescript section
"""""""""""""""""""""""""""""""

let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'

let g:yats_host_keyword = 1

" set filetypes as typescript.tsx

augroup typescript_setup
    autocmd!
    autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
    autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
    autocmd BufNewFile,BufRead *.vue
                \ set shiftwidth=4 |
                \ set softtabstop=4 |
                \ set tabstop=4 |
                \ set expandtab |
augroup end

" dark red
" hi tsxTagName guifg=#E06C75

" " orange
" hi tsxCloseString guifg=#F99575
" hi tsxCloseTag guifg=#F99575
" hi tsxCloseTagName guifg=#F99575
" hi tsxAttributeBraces guifg=#F99575
" hi tsxEqual guifg=#F99575

" " yellow
" hi tsxAttrib guifg=#F8BD7F cterm=italic
"
"
"
""""""""""""""""""""""""""""""
" => jsonc
"""""""""""""""""""""""""""""""

augroup json_c_setup
    autocmd!
    autocmd BufRead,BufNewFile *.json set filetype=jsonc
augroup end
""""""""""""""""""""""""""""""
" => yaml
"""""""""""""""""""""""""""""""

augroup yaml
    autocmd!
    autocmd BufNewFile,BufRead *.yaml,*.yml 
                \ set shiftwidth=2 |
                \ set softtabstop=2 |
                \ set tabstop=2 |
                \ set expandtab |
augroup end
