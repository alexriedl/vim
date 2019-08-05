set background=dark

" let g:airline_theme='gruvbox'
" silent! colorscheme gruvbox

let g:airline_theme='deus'
silent! colorscheme deus

" let g:airline_theme='onedark'
" silent! colorscheme onedark

" Display extra whitespace
set list listchars=tab:-»,trail:·,nbsp:·
highlight NonText ctermfg=darkgrey guifg=grey70
highlight SpecialKey ctermfg=darkgrey guifg=grey70

" Mark column 120
if(exists('+colorcolumn'))
  set colorcolumn=120
  highlight ColorColumn ctermbg=darkgrey ctermfg=white guibg=#592929
endif

" Allow tmux to handle background colors
highlight Normal guibg=none ctermbg=none
