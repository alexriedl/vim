" Use The Silver Searcher if it is installed
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  let g:ackprg = 'ag --vimgrep'
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag --literal --files-with-matches --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
nnoremap gf :Ack!<CR>

" Open quickfix window after any grep command
autocmd QuickFixCmdPost *grep* cwindow
