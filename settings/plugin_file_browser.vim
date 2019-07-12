" NerdTree
" let NERDTreeIgnore = ['\.ico$', 'fonts$', 'node_modules$', 'vendor$', 'dist$', 'bin$', 'obj$', '\.pyc', '__pycache__$']
" let NERDTreeSortOrder = ['src\/$', 'tests\/$', '\/$', '*']
" let NERDTreeAutoDeleteBuffer=1
" nnoremap <F8> :NERDTree<cr>
" nnoremap <C-f> :NERDTreeFind<cr>:NERDTreeFocus<cr>

" let NERDTreeHijackNetrw=1


" netrw
" let g:netrw_liststyle = 3
" let g:netrw_banner = 0
" let g:netrw_browse_split = 0
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" nnoremap <leader>f :Explore<cr>
" nnoremap <F9> :Vexplore<cr>

augroup dirvish_commands
  autocmd!
  autocmd FileType dirvish nmap <esc> <Plug>(dirvish_quit)
augroup END
