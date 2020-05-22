""""""""""""""""""""""""""""""
let g:matchup_surround_enabled = 1
" => Load junegunn/vim-plug
""""""""""""""""""""""""""""""
let s:mvim = stdpath('config')
call plug#begin(s:mvim. '/plugged')

Plug 'junegunn/vim-plug'
" Override configs by directory
Plug 'arielrossanigo/dir-configs-override.vim'

" Colors
Plug 'AlessandroYorba/Despacio'
Plug 'ajmwagar/vim-deus'
Plug 'arcticicestudio/nord-vim'
Plug 'arzg/vim-colors-xcode'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'dracula/vim'
Plug 'jacoborus/tender.vim'
Plug 'jaredgorski/spacecamp'
Plug 'joshdick/onedark.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'nightsense/cosmic_latte'
Plug 'nightsense/snow'
Plug 'nightsense/stellarized'
Plug 'tomasr/molokai'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'w0ng/vim-hybrid'
Plug 'yuttie/hydrangea-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'amix/open_file_under_cursor.vim' " map gf
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'rhysd/git-messenger.vim'
Plug 'tpope/vim-abolish' " Press crs (coerce to snake_case). MixedCase (crm), camelCase (crc), snake_case (crs), UPPER_CASE (cru), dash-case (cr-), dot.case (cr.), space case (cr<space>), and Title Case (crt)
" Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'

Plug 'airblade/vim-gitgutter'
Plug 'idanarye/vim-merginal'           " help with merges and rebase
Plug 'junegunn/gv.vim'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-fugitive'

" Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-asterisk'
Plug 'justinmk/vim-sneak'
Plug 'matze/vim-move'

Plug 'mattn/webapi-vim'

" Interface
" Plug 'camspiers/animate.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'liuchengxu/nerdtree-dash'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'Yggdroot/indentLine'
Plug 'amix/vim-zenroom2'
Plug 'blueyed/vim-diminactive'
Plug 'camspiers/lens.vim'                 | " Window resizing plugin
Plug 'junegunn/goyo.vim'
Plug 'mbbill/undotree'


" startup
let g:fzf_install = 'yes | ./install'
Plug 'junegunn/fzf', { 'do': g:fzf_install }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'

Plug 'Shougo/echodoc.vim'

Plug 'dhruvasagar/vim-table-mode'                                        | " Better handling for tables in markdown
Plug 'fmoralesc/vim-pad' ,  { 'branch': 'devel' }
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'mzlogin/vim-markdown-toc'

Plug 'junegunn/vim-peekaboo'
Plug 'kkoomen/vim-doge'  " doc genrernator <Leader>d
Plug 'machakann/vim-highlightedyank'
Plug 'romainl/vim-cool'                   | " Awesome search highlighting

" text object visual, select ..
" Plug 'michaeljsmith/vim-indent-object'
Plug 'andymass/vim-matchup'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-indent' " for expand region
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-user' " for expand region
" Plug 'sgur/vim-textobj-parameter'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'wellle/targets.vim'
Plug 'editorconfig/editorconfig-vim'    " .editorconfig support



" Lang & syntax
" Auto complete & lint
" Plug 'ap/vim-css-color'
" Plug 'chr4/nginx.vim'
" Plug 'digiRaltoad/vim-pug'
" Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" Plug 'gko/vim-coloresque'
" Plug 'herringtondarkholme/yats.vim'
" Plug 'honza/vim-snippets'
" Plug 'jceb/vim-orgmode'
" Plug 'mattn/emmet-vim'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'norcalli/nvim-colorizer.lua'
" Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for': ['python']}
" Plug 'nvie/vim-flake8'
" Plug 'pangloss/vim-javascript'
" Plug 'plasticboy/vim-markdown'
" Plug 'rust-lang/rust.vim'
" Plug 'sbdchd/neoformat'
Plug 'Chiel92/vim-autoformat'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'cespare/vim-toml'
Plug 'leafgarland/typescript-vim'
Plug 'liuchengxu/vista.vim'
Plug 'luochen1990/rainbow'
Plug 'mechatroner/rainbow_csv'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'peitalin/vim-jsx-typescript'
Plug 'sheerun/vim-polyglot' " for all lang syntax
Plug 'styled-components/vim-styled-components', { 'branch': 'main' } " for css lib
Plug 'brooth/far.vim' " find and replace all project
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'arecarn/vim-fold-cycle'
Plug 'alvan/vim-closetag'
Plug 'dhruvasagar/vim-dotoo' " orgmode like
Plug 'kenn7/vim-arsync' " rsync support
Plug 'ryanoasis/vim-devicons'


Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'
Plug 'AndrewRadev/linediff.vim'


Plug 'jaxbot/semantic-highlight.vim'

Plug 'vimgineers/vim-hugefile'

Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }

" Window chooser
Plug 't9md/vim-choosewin'

Plug 'metakirby5/codi.vim'

Plug 'coderifous/textobj-word-column.vim'

Plug 'vim-scripts/scratch.vim'

Plug 'google/vim-jsonnet'

Plug 'gilsondev/searchtasks.vim' " Plugin to search the labels often used as TODO, FIXME and XXX.

Plug 'roxma/nvim-yarp'

" Plug 'itchyny/vim-cursorword'
"
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

Plug 'tomtom/tcomment_vim'

Plug 'antoinemadec/coc-fzf'

Plug 'voldikss/vim-floaterm'

call plug#end()
call plug#helptags()


if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neoformat

" augroup fmt
"     autocmd!
"     autocmd BufWritePre * silent! undojoin | Neoformat
" augroup END

" let g:neoformat_enabled_python = ['black']

" " Enable alignment
" let g:neoformat_basic_format_align = 1

" " Enable tab to spaces conversion
" let g:neoformat_basic_format_retab = 1

" " Enable trimmming of trailing whitespace
" let g:neoformat_basic_format_trim = 1

" let g:neoformat_run_all_formatters = 1

" let g:neoformat_javascript_prettier = {
"             \ 'exe': 'prettier',
"             \ 'args': ['--stdin-filepath', '"%:p"'],
"             \ 'stdin': 1,
"             \ }

" let g:neoformat_enabled_javascript = ['eslint_d']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'AndrewRadev/splitjoin.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
nnoremap gss :SplitjoinSplit<cr>
nnoremap gsj :SplitjoinJoin<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'tpope/vim-commentary'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map  gc  <Plug>Commentary
" nmap gcc <Plug>CommentaryLine


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

augroup disable_autoformat

  autocmd!
  " Python indentation
  au BufNewFile,BufRead *.yml,*.yaml,*.xml 
        \ let g:autoformat_retab = 0 |
        \ let g:autoformat_autoindent = 0 |
        \ let g:autoformat_remove_trailing_spaces = 0

augroup end

augroup disable_json_large

  let g:large_file = 10485760 " 10MB

  " Set options:
  "   eventignore+=FileType (no syntax highlighting etc
  "   assumes FileType always on)
  "   noswapfile (save copy of file)
  "   bufhidden=unload (save memory when other file is viewed)
  "   buftype=nowritefile (is read-only)
  "   undolevels=-1 (no undo possible)
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

let g:coc_global_extensions = [
      \ 'coc-bookmark',
      \ 'coc-clangd',
      \ 'coc-css',
      \ 'coc-cssmodules',
      \ 'coc-dictionary',
      \ 'coc-docker',
      \ 'coc-elixir',
      \ 'coc-emmet',
      \ 'coc-emoji',
      \ 'coc-explorer',
      \ 'coc-flutter',
      \ 'coc-go',
      \ 'coc-gocode',
      \ 'coc-highlight',
      \ 'coc-html',
      \ 'coc-java',
      \ 'coc-json',
      \ 'coc-lua',
      \ 'coc-marketplace',
      \ 'coc-metals',
      \ 'coc-omni',
      \ 'coc-phpls',
      \ 'coc-python',
      \ 'coc-rls',
      \ 'coc-sh',
      \ 'coc-snippets',
      \ 'coc-solargraph',
      \ 'coc-sourcekit',
      \ 'coc-spell-checker',
      \ 'coc-sql',
      \ 'coc-svg',
      \ 'coc-syntax',
      \ 'coc-tag',
      \ 'coc-tailwindcss',
      \ 'coc-tslint-plugin',
      \ 'coc-tsserver',
      \ 'coc-ultisnips',
      \ 'coc-vetur',
      \ 'coc-vimlsp',
      \ 'coc-word',
      \ 'coc-xml',
      \ 'coc-yaml',
      \ ]


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
  autocmd filetype typescript,json setl formatexpr=CocAction('formatselected')
  " update signature help on jump placeholder.
  autocmd user cocjumpplaceholder call CocActionAsync('showsignaturehelp')
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

nnoremap <silent> <Leader>co :<C-u>CocFzfList outline<CR>
" Get symbols
nnoremap <silent> <Leader>cs :<C-u>Vista finder<CR>
" Get errors
nnoremap <silent> <Leader>cl :<C-u>CocFzfList locationlist<CR>
" Get available commands
nnoremap <silent> <Leader>cc :<C-u>CocFzfList commands<CR>
nnoremap <silent> <Leader>cd :<C-u>CocFzfList diagnostics<CR>

nnoremap <silent> <Leader>ce :<C-u>CocFzfList extensions<CR>
nnoremap <silent> <Leader>cr :<C-u>CocFzfListResume<CR>
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Explorer
let g:coc_explorer_global_presets = {
      \   'floating': {
      \      'position': 'floating',
      \   },
      \   'floatingLeftside': {
      \      'position': 'floating',
      \      'floating-position': 'left-center',
      \      'floating-width': 30,
      \   },
      \   'floatingRightside': {
      \      'position': 'floating',
      \      'floating-position': 'right-center',
      \      'floating-width': 30,
      \   },
      \   'simplify': {
      \     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
      \   }
      \ }

" autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" Use preset argument to open it
nmap <space>ed :CocCommand explorer --preset .vim<CR>
nmap <space>ef :CocCommand explorer --preset floating<CR>

" List all presets
nmap <space>el :CocList explPresets

nmap <space>e :CocCommand explorer<CR>

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
nnoremap \ :Rg<CR>
nnoremap <c-f> :RG<CR>

" Terminal buffer options for fzf
autocmd! FileType fzf
autocmd  FileType fzf set noshowmode noruler nonu

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

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
let NERDTreeIgnore = ['\.pyc$', '__pycache__','\.png$', '\.jpg$', '\.gif$', '\.mp3$', '\.ogg$', '\.mp4$',
      \ '\.avi$','.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$',
      \ '\.rar$']
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

let g:NERDTreeIndicatorMapCustom = {
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
let g:airline#extensions#vista#enabled = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale (syntax checker and linter)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

nmap <leader>st :Startify<cr>


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
" let g:org_todo_keywords = [['TODO(t)', '|', 'DONE(d)'],
"             \ ['REPORT(r)', 'BUG(b)', 'KNOWNCAUSE(k)', '|', 'FIXED(f)'],
"             \ ['CANCELED(c)']]

" let g:org_agenda_files = ['~/org/index.org']

" let g:org_export_emacs="/usr/local/bin/emacs"


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
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
" color deus
" hi NonText ctermfg=gray guifg=grey10
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
nmap <Leader><Leader>j <Plug>(easymotion-j)
nmap <Leader><Leader>k <Plug>(easymotion-k)
nmap <Leader><Leader>w <Plug>(easymotion-w)
nmap <Leader><Leader>W <Plug>(easymotion-W)
nmap <Leader><Leader>s <Plug>(easymotion-lineforward)
nmap <Leader><Leader>S  <Plug>(easymotion-linebackward)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" echodoc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Or, you could use neovim's virtual virtual text feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'virtual'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-sneak
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Vim-sneak {{{
let g:sneak#use_ic_scs = 1
let g:sneak#label = 1
map f <Plug>Sneak_s
map F <Plug>Sneak_S

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

let g:sneak#prompt = '🔎 '
" }}}

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
" Vcs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nmap <Leader>g <Plug>(VcsJump)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" table mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:table_mode_corner = '|'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nvim-colorizer.lua
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lua require 'colorizer'.setup()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" machakann/vim-highlightedyank
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:highlightedyank_highlight_duration = 250
highlight HighlightedyankRegion cterm=reverse gui=reverse



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" andymass/vim-matchup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:loaded_matchit = 1
"1 let g:matchup_enabled = 0
let g:matchup_surround_enabled = 1
let g:matchup_transmute_enabled = 1
augroup matchup_matchparen_highlight
  autocmd!
  autocmd ColorScheme * hi MatchParen ctermbg=lightblue guibg=lightblue cterm=italic gui=italic 
  autocmd ColorScheme * hi MatchWord ctermfg=lightcyan guifg=lightcyan cterm=underline gui=underline
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
" brooth/far.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:far#enable_undo=1
" shortcut for far.vim find
nnoremap <silent> <leader><leader>;  :Farf<cr>
vnoremap <silent> <leader><leader>;  :Farf<cr>

" shortcut for far.vim replace
nnoremap <silent> <leader><leader>'  :Farr<cr>
vnoremap <silent> <leader><leader>'  :Farr<cr>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/numirias/semshi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



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
" https://github.com/rhysd/git-messenger.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nmap <Leader>gm <Plug>(git-messenger) default
"


hi gitmessengerPopupNormal term=None guifg=#eeeeee guibg=#333333 ctermfg=255 ctermbg=234
hi gitmessengerHeader term=None guifg=#88b8f6 ctermfg=111
hi gitmessengerHash term=None guifg=#f0eaaa ctermfg=229
hi gitmessengerHistory term=None guifg=#fd8489 ctermfg=210


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-doge
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:doge_doc_standard_python = 'numpy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" polyglot
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:polyglot_disabled = ['markdown']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" arecarn/vim-fold-cycle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:fold_cycle_default_mapping = 0 "disable default mappings
nmap <Tab><Tab> <Plug>(fold-cycle-open)
nmap <S-Tab><S-Tab> <Plug>(fold-cycle-close)





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" alvan/vim-closetag
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:closetag_filetypes = 'html,xhtml,phtml,tsx,jsx'

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

let g:switch_mapping = '-'
let g:switch_custom_definitions = [
      \   ['MON', 'TUE', 'WED', 'THU', 'FRI']
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
" junegunn/vim-peekaboo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:peekaboo_prefix = '<leader>'
let g:peekaboo_ins_prefix = '<c-x>'




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
