" NerdTree
" let NERDTreeIgnore = ['\.ico$', 'fonts$', 'node_modules$', 'vendor$', 'dist$', 'bin$', 'obj$', '\.pyc', '__pycache__$']
" let NERDTreeSortOrder = ['src\/$', 'tests\/$', '\/$', '*']
" let NERDTreeAutoDeleteBuffer=1
" nnoremap <F8> :NERDTree<cr>
" nnoremap <C-f> :NERDTreeFind<cr>:NERDTreeFocus<cr>

" let NERDTreeHijackNetrw=1

" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['cs'] = 'C#'
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['csproj'] = ''

"  Tux
"  vs
"  Dotnet (doesnt work w/ current font)
"  C (contao)
"  CSharp (doesnt work w/ current font)
"  CS


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
  autocmd FileType dirvish nmap <buffer> <esc> <Plug>(dirvish_quit)
augroup END

function! s:SetupDirvishIcons(path)
  return a:path[-1:] == '/' ? '📂 ' : '📄 '
endfunction
" call dirvish#add_icon_fn(function('s:SetupDirvishIcons'))
