""""""""""""""""""""""""""""""
let g:matchup_surround_enabled = 1
" => Load junegunn/vim-plug
""""""""""""""""""""""""""""""
let s:mvim = stdpath('config')
call plug#begin(s:mvim. '/plugged')

Plug 'junegunn/vim-plug'
Plug 'arielrossanigo/dir-configs-override.vim'

" Colors
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arzg/vim-colors-xcode'
" Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'amix/open_file_under_cursor.vim' " map gf
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-abolish' " Press crs (coerce to snake_case). MixedCase (crm), camelCase (crc), snake_case (crs), UPPER_CASE (cru), dash-case (cr-), dot.case (cr.), space case (cr<space>), and Title Case (crt)
" Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'

Plug 'airblade/vim-gitgutter'
" Plug 'rhysd/git-messenger.vim'
Plug 'idanarye/vim-merginal'           " help with merges and rebase
" Plug 'junegunn/gv.vim'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-fugitive'

Plug 'haya14busa/vim-asterisk'
Plug 'justinmk/vim-sneak'
" Plug 'matze/vim-move'
Plug 'mattn/webapi-vim'

" Interface
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'liuchengxu/nerdtree-dash'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'Yggdroot/indentLine'
Plug 'amix/vim-zenroom2'
Plug 'junegunn/goyo.vim'
Plug 'mbbill/undotree'


" startup
let g:fzf_install = 'yes | ./install'
Plug 'junegunn/fzf', { 'do': g:fzf_install }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'

" Plug 'Shougo/echodoc.vim'
Plug 'dhruvasagar/vim-table-mode'                                        | " Better handling for tables in markdown
" Plug 'fmoralesc/vim-pad' ,  { 'branch': 'devel' }
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'mzlogin/vim-markdown-toc'
Plug 'kkoomen/vim-doge'  " doc genrernator <Leader>d
Plug 'romainl/vim-cool'                   | " Awesome search highlighting

" text object visual, select ..
Plug 'andymass/vim-matchup'
" Plug 'kana/vim-textobj-function'
" Plug 'kana/vim-textobj-indent' " for expand region
" Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-user' " for expand region
Plug 'coderifous/textobj-word-column.vim'
Plug 'wellle/targets.vim'
Plug 'editorconfig/editorconfig-vim'    " .editorconfig support

" Lang & syntax
" Auto complete & lint
Plug 'Chiel92/vim-autoformat'
Plug 'leafgarland/typescript-vim'
Plug 'luochen1990/rainbow'
Plug 'mechatroner/rainbow_csv'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }
Plug 'jaxbot/semantic-highlight.vim'
Plug 'neoclide/jsonc.vim'
Plug 'tjdevries/coc-zsh'
Plug 'sheerun/vim-polyglot' " for all lang syntax
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' } " for css lib

Plug 'liuchengxu/vista.vim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Plug 'brooth/far.vim' " find and replace all project
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'arecarn/vim-fold-cycle'
Plug 'alvan/vim-closetag'
Plug 'dhruvasagar/vim-dotoo' " orgmode like
Plug 'kenn7/vim-arsync' " rsync support
Plug 'ryanoasis/vim-devicons'


Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'
" Plug 'AndrewRadev/linediff.vim'

Plug 'vimgineers/vim-hugefile'
" Window chooser
" Plug 't9md/vim-choosewin'
Plug 'vim-scripts/scratch.vim'
" Plug 'gilsondev/searchtasks.vim' " Plugin to search the labels often used as TODO, FIXME and XXX.
Plug 'roxma/nvim-yarp'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'tomtom/tcomment_vim'
Plug 'antoinemadec/coc-fzf'
Plug 'voldikss/vim-floaterm'
Plug 'dhruvasagar/vim-zoom'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Plug 'AndrewRadev/multichange.vim'


Plug 'vim-scripts/BufOnly.vim'
Plug 'leafOfTree/vim-vue-plugin'

" Plug 'xavierchow/vim-swagger-preview'
call plug#end()
call plug#helptags()


if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
" color deus
" hi NonText ctermfg=gray guifg=grey10
" colorscheme xcodedarkhc
colorscheme dracula
hi Visual term=reverse cterm=reverse guibg=Grey

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'AndrewRadev/splitjoin.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
nnoremap gss :SplitjoinSplit<cr>
nnoremap gsj :SplitjoinJoin<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-autoformat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 0
augroup mvimAutoFormatConfig
  autocmd!
  au BufWrite * :Autoformat
augroup end
let g:formatters_python = []

let g:formatters_vue = []
let g:formatters_javascript = []

augroup auto_format_config

  autocmd!
  " Python indentation
  au BufNewFile,BufRead *.yml,*.yaml,*.xml,*.jsonnet
        \ let g:autoformat_retab = 0 |
        \ let g:autoformat_autoindent = 0 |
        \ let g:autoformat_remove_trailing_spaces = 0 |
  au BufNewFile,BufRead *.vue
        \ let g:autoformat_remove_trailing_spaces = 1 |
        \ let g:autoformat_autoindent = 1 |
        \ let g:autoformat_retab = 1

  autocmd BufWritePre *.jsonnet call jsonnet#Format()
  autocmd BufWritePre *.libsonnet call jsonnet#Format()
augroup end

augroup disable_json_large

  let g:large_file = 10485760 " 10MB

  autocmd!
  au BufReadPre *
        \ let f=expand("<afile>") |
        \ if getfsize(f) > g:large_file |
        \ set eventignore+=FileType |
        \ setlocal bufhidden=unload |
        \ let g:formatters_json = [] |
        \ let g:autoformat_autoindent = 0 |
        \ let g:autoformat_retab = 0 |
        \ let g:autoformat_remove_trailing_spaces = 0 |
        \ else |
        \ set eventignore-=FileType |
        \ endif

augroup end

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" \ 'coc-imselect',
" \ 'coc-tag',
" \ 'coc-syntax',
" \ 'coc-spell-checker',
" \ 'coc-emoji',
" \ 'coc-omni',
let g:coc_global_extensions = [
      \ 'coc-clangd',
      \ 'coc-css',
      \ 'coc-cssmodules',
      \ 'coc-diagnostic',
      \ 'coc-dictionary',
      \ 'coc-docker',
      \ 'coc-elixir',
      \ 'coc-emmet',
      \ 'coc-eslint',
      \ 'coc-flutter',
      \ 'coc-git',
      \ 'coc-go',
      \ 'coc-gocode',
      \ 'coc-highlight',
      \ 'coc-html',
      \ 'coc-java',
      \ 'coc-json',
      \ 'coc-lua',
      \ 'coc-marketplace',
      \ 'coc-metals',
      \ 'coc-phpls',
      \ 'coc-prettier',
      \ 'coc-project',
      \ 'coc-python',
      \ 'coc-rls',
      \ 'coc-sh',
      \ 'coc-snippets',
      \ 'coc-solargraph',
      \ 'coc-sourcekit',
      \ 'coc-sql',
      \ 'coc-styled-components',
      \ 'coc-svg',
      \ 'coc-tailwindcss',
      \ 'coc-tslint-plugin',
      \ 'coc-tsserver',
      \ 'coc-vetur',
      \ 'coc-vimlsp',
      \ 'coc-webpack',
      \ 'coc-word',
      \ 'coc-xml',
      \ 'coc-yaml',
      \ 'coc-yank',
      \ ]



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
nmap <leader>rf <Plug>(coc-refactor)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


augroup coc_setup
  autocmd!
  autocmd ColorScheme * call s:Highlight()
  " setup formatexpr specified filetype(s).
  autocmd filetype typescript,json setl formatexpr=CocAction('formatselected')
  autocmd User CocQuickfixChange :CocList --normal quickfix
  " update signature help on jump placeholder.
  autocmd user cocjumpplaceholder call CocActionAsync('showsignaturehelp')
augroup end

function! s:Highlight() abort
  call matchadd('ColorColumn', '\%81v', 100)
  hi ColorColumn ctermbg=magenta ctermfg=0 guibg=#333333
  hi CocUnderline gui=underline term=underline
  hi CocErrorHighlight ctermfg=red  guifg=#c4384b gui=underline term=underline
  hi CocWarningHighlight ctermfg=yellow guifg=#c4ab39 gui=underline term=underline
  hi CocCursorRange guibg=#b16286 guifg=#ebdbb2
endfunction


" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
" nmap <leader>qa  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

nnoremap <silent> <leader>lo :<C-u>CocFzfList outline<CR>
" Get symbols
nnoremap <silent> <leader>ls :<C-u>Vista finder<CR>
" Get errors
nnoremap <silent> <leader>ll :<C-u>CocFzfList locationlist<CR>
nnoremap <silent> <leader>l1 :<C-u>CocFzfList<CR>
" Get available commands
nnoremap <silent> <leader>lc :<C-u>CocFzfList commands<CR>
nnoremap <silent> <leader>ld :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <leader>la :<C-u>CocFzfList actions<CR>

nnoremap <silent> <leader>le :<C-u>CocFzfList extensions<CR>
nnoremap <silent> <leader>lr :<C-u>CocFzfListResume<CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

""""""""""""""""""""""""""""""
" coc yank
"""""""""""""""""""""""""""""
nnoremap <silent> <space>@  :<C-u>CocFzfList yank<cr>

highlight HighlightedyankRegion term=bold cterm=reverse gui=reverse 

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


" All files
command! -nargs=? -complete=dir AF
      \ call fzf#run(fzf#wrap(fzf#vim#with_preview({
      \   'source': 'fd --type f --hidden --follow --exclude .git --no-ignore . '.expand(<q-args>)
      \ })))

let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }


nmap <LEADER>j :Files<CR>
nmap <LEADER>o :Buffers<CR>
nnoremap <m-\> :Rg<CR>
nnoremap <m-f> :RG<CR>
nnoremap <m-p> :GFiles<CR>

" Terminal buffer options for fzf
autocmd! FileType fzf
autocmd  FileType fzf set noshowmode noruler nonu

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
""""""""""""""""""""""""""""""
" => coc-git
""""""""""""""""""""""""""""""
set statusline^=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}

" navigate chunks of current buffer
nmap [h <Plug>(coc-git-prevchunk)
nmap ]h <Plug>(coc-git-nextchunk)
" show chunk diff at current position
" nmap gv <Plug>(coc-git-chunkinfo)
" " show commit contains current position
nmap gv <Plug>(coc-git-commit)
" " create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

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
let NERDTreeIgnore = ['\.pyc$', '__pycache__','\.png$', '\.jpg$', '\.gif$', '\.mp3$', '\.ogg$', '\.mp4$',
      \ '\.avi$','.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$',
      \ '\.rar$']
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ "Modified"  : "●",
      \ "Staged"    : "✔",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "❗",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "~",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "❓"
      \ }

let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let NERDTreeDirArrowExpandable = "\u00a0" " make arrows invisible
let NERDTreeDirArrowCollapsible = "\u00a0" " make arrows invisible
let NERDTreeNodeDelimiter = "\u263a" " smiley face

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
let g:airline#extensions#vista#enabled = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1

" set updatetime=100
let g:gitgutter_highlight_lines = 0
" nmap ]h <Plug>(GitGutterNextHunk)
" nmap [h <Plug>(GitGutterPrevHunk)

let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '▎'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▋'
" ---------------------------------------------------------
highlight DiffAdd ctermfg=22 guifg=#009900 ctermbg=NONE guibg=NONE
highlight DiffChange ctermfg=58 guifg=#bbbb00 ctermbg=NONE guibg=NONE
highlight DiffDelete ctermfg=52 guifg=#ff2222 ctermbg=NONE guibg=NONE
highlight DiffChangeDelete ctermfg=52 guifg=#ff2222 ctermbg=NONE guibg=NONE

" highlight GitGutterAdd ctermfg=22 guifg=#006000 ctermbg=NONE guibg=NONE
" highlight GitGutterChange ctermfg=58 guifg=#5F6000 ctermbg=NONE guibg=NONE
" highlight GitGutterDelete ctermfg=52 guifg=#600000 ctermbg=NONE guibg=NONE
" highlight GitGutterChangeDelete ctermfg=52 guifg=#600000 ctermbg=NONE guibg=NONE

" highlight GitGutterAdd    guifg=#009900 ctermfg=2
" highlight GitGutterChange guifg=#bbbb00 ctermfg=3
" highlight GitGutterDelete guifg=#ff2222 ctermfg=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-startify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_session_dir = s:mvim. '/session'
let g:startify_files_number = 5
let g:startify_change_to_dir = 0
let g:startify_custom_header = [ ]
let g:startify_relative_path = 1
let g:startify_use_env = 1


let g:startify_lists = [
      \  { 'type': 'dir',       'header': [ 'Files '. getcwd() ] },
      \  { 'type': 'sessions',  'header': [ 'Sessions' ]       },
      \  { 'type': 'bookmarks', 'header': [ 'Bookmarks' ]      },
      \  { 'type': 'commands',  'header': [ 'Commands' ]       },
      \ ]
let g:startify_commands = [
      \   { 'up': [ 'Update Plugins', ':PlugUpdate' ] },
      \   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
      \   { 'uc': [ 'Update coc nvim plugin', ':CocUpdate' ] },
      \ ]

let g:startify_bookmarks = [
      \ { 'c': '~/.config/nvim/init.vim' },
      \ { 'g': '~/.gitconfig' },
      \ ]

augroup startified_setup
  autocmd!
  autocmd User Startified setlocal cursorline
augroup end

nmap <leader>ta :Startify<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

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
nnoremap <Leader>u :UndotreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_post_private = 1 " private default

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" echodoc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Or, you could use neovim's virtual virtual text feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'virtual'




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
" vim commentary
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup commmentary_setup
  autocmd!
  autocmd FileType scss setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
  autocmd FileType vue setlocal comments=s1:/*,mb:*,ex:*/ commentstring&
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Guides
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_color_change_percent = 1
let g:indent_guides_exclude_filetypes = ['help', 'startify', 'fzf', 'openterm', 'neoterm', 'calendar']



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" table mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:table_mode_corner = '|'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-colorizer.lua
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lua require 'colorizer'.setup()







""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" andymass/vim-matchup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:loaded_matchit = 1
" let g:matchup_enabled = 1
let g:matchup_surround_enabled = 1
let g:matchup_transmute_enabled = 1
augroup matchup_matchparen_highlight
  autocmd!
  autocmd ColorScheme * hi MatchParen ctermbg=lightblue guibg=lightblue cterm=italic gui=italic 
  autocmd ColorScheme * hi MatchWord ctermfg=lightcyan guifg=lightcyan cterm=bold gui=bold
  autocmd ColorScheme * hi MatchParenCur cterm=underline gui=underline
  autocmd ColorScheme * hi MatchWordCur cterm=underline gui=underline
augroup END


augroup matchup_matchparen_disable_ft
  autocmd!
  autocmd FileType tex let [b:matchup_matchparen_fallback,
        \ b:matchup_matchparen_enabled] = [0, 0]
augroup END

let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1

let g:matchup_matchpref = {}
let g:matchup_matchpref.vue = {'tagnameonly': 1}
let g:matchup_matchpref.html = {'tagnameonly': 1}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Yggdroot/indentLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
autocmd! User indentLine doautocmd indentLine Syntax
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#616161'



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" peitalin/vim-jsx-typescript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" dark red
hi tsxTagName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic
hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" liuchengxu/vista.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]


let g:vista_default_executive = 'coc'

let g:vista_executive_for = {
      \ }

let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }


let g:vista_fzf_preview = ['right:50%']


" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
      \   "function": "\uf794",
      \   "variable": "\uf71b",
      \  }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-doge
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:doge_doc_standard_python = 'numpy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" polyglot
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:polyglot_disabled = ['markdown', 'vue']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" arecarn/vim-fold-cycle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:fold_cycle_default_mapping = 0 "disable default mappings
nmap <Tab><Tab> <Plug>(fold-cycle-open)
nmap <S-Tab><S-Tab> <Plug>(fold-cycle-close)





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" alvan/vim-closetag
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:closetag_filetypes = 'html,xhtml,phtml,tsx,jsx,vue'

let g:closetag_emptyTags_caseSensitive = 1


let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AndrewRadev/switch.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:speeddating_no_mappings = 1

" Avoid issues because of us remapping <c-a> and <c-x> below
nnoremap <Plug>SpeedDatingFallbackUp <c-a>
nnoremap <Plug>SpeedDatingFallbackDown <c-x>

" Manually invoke speeddating in case switch didn't work
nnoremap <c-a> :if !switch#Switch() <bar>
      \ call speeddating#increment(v:count1) <bar> endif<cr>
nnoremap <c-x> :if !switch#Switch({'reverse': 1}) <bar>
      \ call speeddating#increment(-v:count1) <bar> endif<cr>

let g:switch_mapping = '-'
let g:switch_custom_definitions = [
      \   ['MON', 'TUE', 'WED', 'THU', 'FRI'],
      \   ['or', 'and']
      \ ]



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" morhetz/gruvbox
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:gruvbox_contrast_dark = 'hard'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" haya14busa/vim-asterisk
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)
let g:asterisk#keeppos = 1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-pad
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:pad#deault_format = "markdown"
let g:pad#dir = "~/notes/" 
let g:pad#set_mappings = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-pandoc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:pandoc#filetypes#handled = ["pandoc", "markdown"]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pearofducks/ansible-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup ansible_vim_fthosts
  autocmd!
  au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
  autocmd BufNewFile,BufRead hosts setfiletype yaml.ansible
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pearofducks/ansible-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap  <M-w>  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" google/vim-jsonnet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsonnet_fmt_on_save = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gilsondev/searchtasks.vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:searchtasks_list=["TODO", "FIXME", "XXX"]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/mzlogin/vim-markdown-toc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let g:vmt_cycle_list_item_markers = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/skywind3000/asynctasks.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:asyncrun_open = 6



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/posva/vim-vue
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:vue_pre_processors = 'detect_on_enter'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'liuchengxu/vim-which-key'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '<space>'<CR>
set timeoutlen=1000



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'liuchengxu/vim-which-key'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'liuchengxu/vim-which-key'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>g3 :diffget //3<CR>
nmap <leader>g2 :diffget //2<CR>
nmap <leader>g1 :G<CR>
nmap <leader>gg :GFiles?<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/andrewradev/multichange.vim 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let g:multichange_mapping        = 'sm'
let g:multichange_motion_mapping = 'm'




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/jiangmiao/auto-pairs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutFastWrap = ''
let g:AutoPairsShortcutJump = ''



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'vim-scripts/BufOnly.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


map <leader>bo :Bonly<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/justinmk/vim-sneak
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sneak#label = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

map <leader>s <Plug>Sneak_s
map <leader>S <Plug>Sneak_S


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  https://github.com/tpope/vim-unimpaire
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" *[t*     |:tprevious|
" *]t*     |:tnext|
"


" unmap [t
" unmap ]t

nmap [t :tabprevious<CR>
nmap ]t :tabnext<CR>
