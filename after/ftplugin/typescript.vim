" gd to goto definition
nnoremap gd :TsuDefinition<CR>

" Alt-Enter for quick fix
nnoremap <M-CR> :TsuQuickFix<CR>

" F2 to rename under cursor
nnoremap <F2> :TsuRenameSymbol<CR>

nnoremap <buffer> gh : <C-u>echo tsuquyomi#hint()<CR>

