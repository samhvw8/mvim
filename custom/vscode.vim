" Bind C-/ to vscode commentary since calling from vscode produces double comments due to multiple cursors
xnoremap <expr> <C-/> <SID>vscodeCommentary()
nnoremap <expr> <C-/> <SID>vscodeCommentary() . '_'
xmap <C-/>  <Plug>VSCodeCommentary
nmap <C-/>  <Plug>VSCodeCommentary
omap <C-/>  <Plug>VSCodeCommentary
nmap <C-/> <Plug>VSCodeCommentaryLine

" Use alt + shift + hjkl to resize windows
nnoremap <S-M-H> :call VSCodeNotify('workbench.action.decreaseViewWidth')<CR>
nnoremap <S-M-L> :call VSCodeNotify('workbench.action.increaseViewWidth')<CR>
nnoremap <S-A-J> :call VSCodeNotify('workbench.action.decreaseViewHeight')<CR>
nnoremap <S-A-K> :call VSCodeNotify('workbench.action.increaseViewHeight')<CR>

" Better Navigation
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

" Folding
nnoremap za :call VSCodeNotify("editor.toggleFold")<CR>
nnoremap zA :call VSCodeNotify("editor.foldRecursively")<CR>
nnoremap zAA :call VSCodeNotify("editor.unfoldRecursively")<CR>
nnoremap zAa :call VSCodeNotify("editor.unfoldRecursively")<CR>
nnoremap <expr> zm ':call VSCodeNotify("editor.foldLevel' . v:count1 . '")<CR>'
nnoremap zm1 :call VSCodeNotify("editor.foldLevel1")<CR>'
nnoremap zm2 :call VSCodeNotify("editor.foldLevel2")<CR>'
nnoremap zm3 :call VSCodeNotify("editor.foldLevel3")<CR>'
nnoremap zm4 :call VSCodeNotify("editor.foldLevel4")<CR>'
nnoremap zm5 :call VSCodeNotify("editor.foldLevel5")<CR>'
nnoremap zm6 :call VSCodeNotify("editor.foldLevel6")<CR>'
nnoremap zm7 :call VSCodeNotify("editor.foldLevel7")<CR>'
nnoremap zM :call VSCodeNotify("editor.foldAll")<CR>
nnoremap zr :call VSCodeNotify("editor.unfoldAll")<CR>
nnoremap zR :call VSCodeNotify("editor.unfoldAll")<CR>
" nnoremap <silent> ´ :call VSCodeNotify("editor.toggleFold")<CR>
nnoremap <silent> <F9> :call VSCodeNotify("editor.toggleFold")<CR>
nnoremap <silent> <F10> :call VSCodeNotify("editor.toggleFold")<CR>
inoremap <silent> <F9> <Esc> :call VSCodeNotify("editor.toggleFold")<CR> a
inoremap <silent> <F10> <Esc> :call VSCodeNotify("editor.toggleFold")<CR> a

" " Which Key mappings
" nnoremap <Leader>e :call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
" nnoremap <Leader>v :call VSCodeNotify('workbench.action.splitEditor')<CR>
" nnoremap <Leader>h :call VSCodeNotify('workbench.action.splitEditorDown')<CR>
" nnoremap <Leader>i :call VSCodeNotify('editor.action.organizeImports')<CR>
" nnoremap <Leader>t :call VSCodeNotify('workbench.action.togglePanel')<CR>
" nnoremap <Leader>/ :call VSCodeNotify('workbench.action.findInFiles')<CR>
" nnoremap <Leader>s :call VSCodeNotify('workbench.action.replaceInFiles')<CR>
" nnoremap <Leader>d :call VSCodeNotify('editor.action.revealDefinition')<CR>
" nnoremap <Leader>D :call VSCodeNotify('editor.action.revealDeclaration')<CR>
" nnoremap <Leader>E :call VSCodeNotify('workbench.actions.view.problems')<CR>

" Scrolling
nnoremap <silent> <expr> <C-d> VSCodeExtensionCall('scroll', 'halfPage', 'down')
xnoremap <silent> <expr> <C-d> VSCodeExtensionCall('scroll', 'halfPage', 'down')
nnoremap <silent> <expr> <C-u> VSCodeExtensionCall('scroll', 'halfPage', 'up')
xnoremap <silent> <expr> <C-u> VSCodeExtensionCall('scroll', 'halfPage', 'up')

nnoremap <silent> <expr> <C-f> VSCodeExtensionCall('scroll', 'page', 'down')
xnoremap <silent> <expr> <C-f> VSCodeExtensionCall('scroll', 'page', 'down')
nnoremap <silent> <expr> <C-b> VSCodeExtensionCall('scroll', 'page', 'up')
xnoremap <silent> <expr> <C-b> VSCodeExtensionCall('scroll', 'page', 'up')

nnoremap <silent> <expr> <C-e> VSCodeExtensionNotify('scroll-line', 'down')
xnoremap <silent> <expr> <C-e> VSCodeExtensionNotify('scroll-line', 'down')
nnoremap <silent> <expr> <C-y> VSCodeExtensionNotify('scroll-line', 'up')
xnoremap <silent> <expr> <C-y> VSCodeExtensionNotify('scroll-line', 'up')
