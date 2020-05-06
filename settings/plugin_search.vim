" Use The Silver Searcher if it is installed
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ctrlp_user_command = 'ag --literal --files-with-matches --nocolor --hidden -g "" %s'
  let g:ctrlp_use_caching = 0
endif

" Use python backend to pick matches found by ag (MUUUUCH faster)
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

cnoreabbrev Ack Ack!

augroup search_autocommands
  autocmd!
  " Open quickfix window after any grep command
  autocmd QuickFixCmdPost *grep* cwindow
augroup END

let g:ctrlp_custom_ignore = '\v[\/](bundle|undo|node_modules|target|dist|bin|obj|build*)|(\.(swp|ico|git|svn|ccls-cache))$'
let g:ctrlp_by_filename = 1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_show_hidden = 1

nmap     <leader>ff <Plug>CtrlSFPrompt
" nmap     <leader>fp <Plug>CtrlSFPwordPath

nmap     <leader>fn <Plug>CtrlSFCwordExec
nmap     <leader>fN <Plug>CtrlSFCwordPath

vmap     <leader>ff <Plug>CtrlSFVwordExec
vmap     <leader>fF <Plug>CtrlSFVwordPath

nnoremap <leader>fo :CtrlSFOpen<CR>
nnoremap <leader>ft :CtrlSFToggle<CR>

nmap gf <Plug>CtrlSFCwordExec
nmap <Leader>a <Plug>CtrlSFPrompt
