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

" Use python backend to pick matches found by ag (MUUUUCH faster)
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

cnoreabbrev Ack Ack!

" Open quickfix window after any grep command
autocmd QuickFixCmdPost *grep* cwindow

let g:ctrlp_custom_ignore = '\v[\/](bundle|undo|node_modules|target|dist|bin|obj|build*)|(\.(swp|ico|git|svn))$'
let g:ctrlp_by_filename = 1
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_show_hidden = 1

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>

nmap gf <Plug>CtrlSFCwordExec
nmap <Leader>a <Plug>CtrlSFPrompt
