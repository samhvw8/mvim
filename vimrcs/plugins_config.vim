"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'ycm-core/YouCompleteMe', { 'do': function('BuildYCM') }
" Build helper function
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" function! BuildYCM(info)
"   " info is a dictionary with 3 fields
"   " - name:   name of the plugin
"   " - status: 'installed', 'updated', or 'unchanged'
"   " - force:  set on PlugInstall! or PlugUpdate!
"   if a:info.status == 'installed' || a:info.force
"     !./install.py --all
"   endif
" endfunction



""""""""""""""""""""""""""""""
" => Load junegunn/vim-plug
""""""""""""""""""""""""""""""
let s:mvim = stdpath('config')
call plug#begin(s:mvim. '/plugged')

Plug 'junegunn/vim-plug'
Plug 'arzg/vim-colors-xcode'
"
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
"
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-speeddating'
" Plug 'maxbrunsfeld/vim-yankstack'
" Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
Plug 'matze/vim-move'

Plug 'justinmk/vim-sneak'
" Plug 'haya14busa/vim-easyoperator-line'
" Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'amix/open_file_under_cursor.vim'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'junegunn/vim-easy-align'

" sub windows or sidebar startus bar
" Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:fzf_install = 'yes | ./install'
Plug 'junegunn/fzf', { 'do': g:fzf_install }
Plug 'junegunn/fzf.vim'

" else
"   Plug 'Shougo/denite.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif


" Interface
Plug 'amix/vim-zenroom2'
Plug 'junegunn/goyo.vim'

" startup
Plug 'mhinz/vim-startify'



Plug 'Shougo/echodoc.vim'


" Plug 'vim-scripts/mayansmoke'
" Plug 'vim-scripts/tlib'

" text object visual, select ..
Plug 'vim-scripts/matchit.zip'
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user' " for expand region
Plug 'kana/vim-textobj-indent' " for expand region
Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'

" Lang & syntax
" Plug 'garbas/vim-snipmate'
" Plug 'honza/vim-snippets'
" Plug 'mattn/emmet-vim'
" Plug 'digitaltoad/vim-pug'
" Plug 'groenewege/vim-less'
Plug 'chr4/nginx.vim'
" Plug 'rust-lang/rust.vim'
" Plug 'plasticboy/vim-markdown'
" Plug 'herringtondarkholme/yats.vim'
" Plug 'pangloss/vim-javascript'
"
Plug 'leafgarland/typescript-vim'
" Plug 'maxmellon/vim-jsx-pretty'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'nvie/vim-flake8'
Plug 'luochen1990/rainbow'
Plug 'mechatroner/rainbow_csv'
Plug 'cespare/vim-toml'
Plug 'ap/vim-css-color'
Plug 'jceb/vim-orgmode'
" Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Auto complete & lint
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'sbdchd/neoformat'
" Plug 'Chiel92/vim-autoformat'
" Plug 'w0rp/ale'

" Plug 'ycm-core/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Plug 'brooth/far.vim'

call plug#end()
call plug#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup fmt
    autocmd!
    autocmd BufWritePre * silent! undojoin | Neoformat
augroup END

let g:neoformat_enabled_python = ['black']

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

let g:neoformat_run_all_formatters = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-autoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:autoformat_autoindent = 0
" let g:autoformat_retab = 0
" let g:autoformat_remove_trailing_spaces = 0
" augroup mvimAutoFormatConfig
"     autocmd!
"     au BufWrite * :Autoformat
" augroup end


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi CocUnderline gui=underline term=underline
hi CocErrorHighlight ctermfg=red  guifg=#c4384b gui=underline term=underline
hi CocWarningHighlight ctermfg=yellow guifg=#c4ab39 gui=underline term=underline

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
    " Use `complete_info` if your (Neo)Vim version supports it.
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
" autocmd CursorHold * silent call CocActionAsync('doHover')

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocActionAsync('doHover')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


augroup mygroup
    autocmd!
    " setup formatexpr specified filetype(s).
    autocmd filetype typescript,json setl formatexpr=cocaction('formatselected')
    " update signature help on jump placeholder.
    autocmd user cocjumpplaceholder call cocactionasync('showsignaturehelp')
augroup end
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
" let g:bufExplorerDefaultHelp=0
" let g:bufExplorerShowRelativePath=1
" let g:bufExplorerFindActive=1
" let g:bufExplorerSortBy='name'
" map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
" let g:yankstack_yank_keys = ['y', 'd']
"
" nmap <C-p> <Plug>yankstack_substitute_older_paste
" nmap <C-n> <Plug>yankstack_substitute_newer_paste

""""""""""""""""""""""""""""""
" => fzf.vim
""""""""""""""""""""""""""""""
command! -bang -nargs=* GGrep
            \ call fzf#vim#grep(
            \   'git grep --line-number '.shellescape(<q-args>), 0,
            \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0):

command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)

command! -bang -nargs=* Rg
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
            \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)


command! -bang -nargs=* RG
            \ call fzf#vim#grep(
            \   'rg --ignore-vcs --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
            \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)


nmap <LEADER>j :Files<CR>
nmap <LEADER>o :Buffers<CR>
nnoremap \ :Rg<CR>
nnoremap <c-f> :RG<CR>


""""""""""""""""""""""""""""""
" => denite
""""""""""""""""""""""""""""""
" call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
" call denite#custom#option('default', 'prompt', 'λ')
" call denite#custom#var('grep', 'command', ['ag'])
" call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
" call denite#custom#var('grep', 'recursive_opts', [])
" call denite#custom#var('grep', 'pattern_opt', [])
" call denite#custom#var('grep', 'separator', ['--'])
" call denite#custom#var('grep', 'final_opts', [])
" call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
" call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
"       \ [ '.git/', '.ropeproject/', '__pycache__/*', '*.pyc', 'node_modules/',
"       \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/', '*.png'])

" nmap <LEADER>j :Denite -start-filter file/rec<CR>
" nmap <C-b>  :Denite buffer<CR>
" nnoremap \ :Denite grep<CR>

" call denite#custom#source(
" \ 'grep', 'matchers', ['matcher_regexp'])

" " use ag for content search
" autocmd FileType denite call s:denite_my_settings()
" function! s:denite_my_settings() abort
"   nnoremap <silent><buffer><expr> <CR>
"         \ denite#do_map('do_action')
"   nnoremap <silent><buffer><expr> d
"         \ denite#do_map('do_action', 'delete')
"   nnoremap <silent><buffer><expr> p
"         \ denite#do_map('do_action', 'preview')
"   nnoremap <silent><buffer><expr> <C-v>
"         \ denite#do_map('do_action', 'vsplit')
"   nnoremap <silent><buffer><expr> <C-x>
"         \ denite#do_map('do_action', 'split')
"   nnoremap <silent><buffer><expr> <Esc>
"         \ denite#do_map('quit')
"   nnoremap <silent><buffer><expr> i
"         \ denite#do_map('open_filter_buffer')
"   nnoremap <silent><buffer><expr> <Space>
"         \ denite#do_map('toggle_select').'j'
"   map <silent><buffer> <Esc>: <Plug>(denite_filter_quit) <cr>
" endfunction

""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='wombat'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale (syntax checker and linter)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ale_echo_msg_format       = '[%linter%] %s [%severity%]'   " status line format
" let g:ale_statusline_format     = ['⨉ %d', '⚠ %d', '⬥ ok']       " error status format
" let g:ale_lint_delay            = 300                            " relint max once per [amount] milliseconds
" let g:ale_linters = {}

" let g:ale_fixers = {}
" let g:ale_completion_enabled = 1

" " let g:ale_fix_on_save = 1

" " nmap <silent> <leader><leader>a <Plug>(ale_next_wrap)

" " Disabling highlighting
" let g:ale_set_highlights = 1

" " Only run linting when saving the file
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0

" let g:ale_virtualtext_cursor = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1

" set updatetime=100

let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '▎'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▋'
" ---------------------------------------------------------
highlight GitGutterAdd ctermfg=22 guifg=#006000 ctermbg=NONE guibg=NONE
highlight GitGutterChange ctermfg=58 guifg=#5F6000 ctermbg=NONE guibg=NONE
highlight GitGutterDelete ctermfg=52 guifg=#600000 ctermbg=NONE guibg=NONE
highlight GitGutterChangeDelete ctermfg=52 guifg=#600000 ctermbg=NONE guibg=NONE

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YcmCompleter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" let g:ycm_autoclose_preview_window_after_completion=0
" map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" " nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
" " inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Emmet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" let g:user_emmet_settings = {
"             \    'javascript': {'extends': 'jsx'},
"             \    'javascript.jsx': {'extends': 'jsx'},
"             \    'typescript': {'extends': 'jsx'},
"             \    'typescript.tsx': {'extends': 'jsx'}
"             \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" expand_region
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:expand_region_text_objects = {
            \ 'iw'  :0,
            \ 'iW'  :0,
            \ 'i"'  :0,
            \ 'i''' :0,
            \ 'i]'  :1,
            \ 'ib'  :1,
            \ 'iB'  :1,
            \ 'it'  :1,
            \ 'aw'  :0,
            \ 'aW'  :0,
            \ 'a"'  :0,
            \ 'a''' :0,
            \ 'a]'  :0,
            \ 'ab'  :1,
            \ 'aB'  :1,
            \ 'at'  :1,
            \ 'il'  :1,
            \ 'ip'  :1
            \ }

call expand_region#custom_text_objects('python', {
            \ 'ii' :1,
            \ 'ai' :1,
            \ })

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-startify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_session_dir = s:mvim. '/session'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gitgutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_highlight_lines = 0
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" org
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:org_todo_keywords = [['TODO(t)', '|', 'DONE(d)'],
            \ ['REPORT(r)', 'BUG(b)', 'KNOWNCAUSE(k)', '|', 'FIXED(f)'],
            \ ['CANCELED(c)']]

let g:org_agenda_files = ['~/org/index.org']

let g:org_export_emacs="/usr/local/bin/emacs"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-easy-align
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" undotree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>m :UndotreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_post_private = 1 " private default

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme xcodedarkhc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quick-scope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" " Trigger a highlight only when pressing f and F
" let g:qs_max_chars=80
" let g:qs_lazy_highlight = 1
" augroup qs_colors
"   autocmd!
"   autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
"   autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"
" nmap <C-f> <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>w <Plug>(easymotion-w)
map <Leader><Leader>W <Plug>(easymotion-W)
map <Leader>s <Plug>(easymotion-lineforward)
map <Leader>S  <Plug>(easymotion-linebackward)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" echodoc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Or, you could use neovim's virtual virtual text feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'virtual'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-sneak
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:sneak#use_ic_scs = 1
let g:sneak#label = 1
map f <Plug>Sneak_s
map F <Plug>Sneak_S

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" move
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let g:move_key_modifier = 'M'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" iamcco/markdown-preview.nvim
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 1

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1,
            \ 'sequence_diagrams': {},
            \ 'flowchart_diagrams': {}
            \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" far.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set regexpengine=1        " use old regexp engine
" set ignorecase smartcase  " ignore case only when the pattern contains no capital letters

" " shortcut for far.vim find
" nnoremap <silent> <Find-Shortcut>  :Farf<cr>
" vnoremap <silent> <Find-Shortcut>  :Farf<cr>

" " shortcut for far.vim remplace
" nnoremap <silent> <Replace-Shortcut>  :Farr<cr>
" vnoremap <silent> <Replace-Shortcut>  :Farr<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup commmentary_setup
    autocmd!
    autocmd FileType scss setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
augroup END

