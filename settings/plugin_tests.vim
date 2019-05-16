nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

let g:test#csharp#runner = 'dotnettest'
" let test#strategy = 'neovim'
let test#strategy = 'dispatch'

" let test#neovim#term_position = 'topleft'
" let test#vim#term_position = 'topleft'
let test#neovim#term_position = 'rightbelow'
let test#vim#term_position = 'rightbelow'
