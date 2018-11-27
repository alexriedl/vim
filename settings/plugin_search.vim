" Use The Silver Searcher if it is installed
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
nnoremap gf :Ack!<CR>

" Open quickfix window after any grep command
autocmd QuickFixCmdPost *grep* cwindow
