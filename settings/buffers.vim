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
