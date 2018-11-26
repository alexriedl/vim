" Tabs
nmap <M-l> :tabn<CR>
nmap <M-h> :tabp<CR>
nmap <leader>tq :tabc<CR>

" Moving Buffers
nmap <S-l> :bnext<CR>
nmap <S-h> :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>

" Skip quick fix buffer
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

" Split Window
nmap <leader>bh  :topleft  vnew<CR>
nmap <leader>bl  :botright vnew<CR>
nmap <leader>bk  :topleft  new<CR>
nmap <leader>bj  :botright new<CR>
" Split Buffer
nmap <leader>vh  :leftabove  vnew<CR>
nmap <leader>vl  :rightbelow vnew<CR>
nmap <leader>vk  :leftabove  new<CR>
nmap <leader>vj  :rightbelow new<CR>
