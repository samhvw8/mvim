"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'ycm-core/YouCompleteMe', { 'do': function('BuildYCM') }
" Build helper function
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --all
  endif
endfunction



""""""""""""""""""""""""""""""
" => Load junegunn/vim-plug
""""""""""""""""""""""""""""""
let s:mvim = expand('<sfile>:p:h')."/.."
call plug#begin(s:mvim. '/plugged')

Plug 'junegunn/vim-plug'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'maxbrunsfeld/vim-yankstack'
" Plug 'mileszs/ack.vim'
Plug 'jlanzarotta/bufexplorer'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'chr4/nginx.vim'
Plug 'amix/open_file_under_cursor.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'altercation/vim-colors-solarized' 
Plug 'michaeljsmith/vim-indent-object'
Plug 'groenewege/vim-less'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'nvie/vim-flake8'
Plug 'digitaltoad/vim-pug'


Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-speeddating'

Plug 'vim-scripts/mayansmoke'
Plug 'vim-scripts/tlib'
" Plug 'vim-scripts/mru.vim'
Plug 'vim-scripts/indentpython.vim'
" Plug 'vim-scripts/peaksea'
Plug 'vim-scripts/matchit.zip'

Plug 'mhinz/vim-startify'
Plug 'rust-lang/rust.vim'
Plug 'plasticboy/vim-markdown'

Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

Plug 'vim-ruby/vim-ruby'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'herringtondarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'ycm-core/YouCompleteMe', { 'do': function('BuildYCM') }

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:fzf_install = 'yes | ./install'
Plug 'junegunn/fzf', { 'do': g:fzf_install }
" Plug 'majutsushi/tagbar'
" Plug 'marijnh/tern_for_vim'
Plug 'mattn/emmet-vim'
Plug 'kana/vim-textobj-user' " for expand region
Plug 'kana/vim-textobj-indent' " for expand region

Plug 'luochen1990/rainbow'
Plug 'mechatroner/rainbow_csv'
Plug 'ap/vim-css-color'
Plug 'jceb/vim-orgmode'
Plug 'junegunn/vim-easy-align'

Plug 'wellle/targets.vim'

Plug 'mbbill/undotree'


if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()
call plug#helptags()


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste
""""""""""""""""""""""""""""""
" => denite
""""""""""""""""""""""""""""""
call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#option('default', 'prompt', 'λ')
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/*', '*.pyc', 'node_modules/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/', '*.png'])

nmap <LEADER>j :Denite -start-filter file/rec<CR>
nmap <C-b>  :Denite buffer<CR>
nnoremap \ :Denite grep<CR>

call denite#custom#source(
\ 'grep', 'matchers', ['matcher_regexp'])

" use ag for content search
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
        \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
        \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
        \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> <C-v>
        \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-x>
        \ denite#do_map('do_action', 'split')
  nnoremap <silent><buffer><expr> <Esc>
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
        \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
        \ denite#do_map('toggle_select').'j'
  map <silent><buffer> <Esc>: <Plug>(denite_filter_quit) <cr>
endfunction

""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'

""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


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
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescriptreact': ['eslint'],
\   'python': ['black']
\}
let g:ale_completion_enabled = 1

let g:ale_fix_on_save = 1

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YcmCompleter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ycm_autoclose_preview_window_after_completion=0
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>
" inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Emmet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:user_emmet_settings = {
  \    'javascript': {'extends': 'jsx'},
  \    'javascript.jsx': {'extends': 'jsx'},
  \    'typescript': {'extends': 'jsx'},
  \    'typescript.tsx': {'extends': 'jsx'}
  \ }

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