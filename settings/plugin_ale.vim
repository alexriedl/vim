let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_close_preview_on_insert = 1
" let g:ale_open_list = 'on_save'
let g:ale_open_list = 1

nnoremap gd :ALEGoToDefinition<CR>
nnoremap gr :ALEFindReferences<CR>
nnoremap gh :ALEHover<CR>

let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}

" Close the location list when buffer is closed
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END
