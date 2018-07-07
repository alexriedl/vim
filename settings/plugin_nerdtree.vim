let NERDTreeIgnore = ['\.ico$', 'public$', 'fonts$', 'node_modules$', 'vendor$', 'dist$', 'bin$', 'obj$', '\.pyc', '__pycache__$']
let NERDTreeSortOrder = ['src\/$', 'tests\/$', '\/$', '*']
let NERDTreeAutoDeleteBuffer=1
nnoremap <F9> :NERDTree<cr>
nnoremap <C-f> :NERDTreeFind<cr>:NERDTreeFocus<cr>
