let NERDTreeIgnore = ['\.ico$', 'public$', 'fonts$', 'node_modules$', 'vendor$', 'bin$', 'obj$']
let NERDTreeSortOrder = ['src\/$', 'tests\/$', 'dal\/$', 'sl\/$', 'pl\/$', 'bll\/$', 'js\/$', 'less\/$', '\/$', '*']
let NERDTreeAutoDeleteBuffer=1
nnoremap <F9> :NERDTree<cr>
nnoremap <C-f> :NERDTreeFind<cr>:NERDTreeFocus<cr>
