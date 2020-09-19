set background=dark

" let g:airline_theme='gruvbox'
" silent! colorscheme gruvbox

" let g:airline_theme='deus'
" silent! colorscheme deus

let g:airline_theme='onedark'
silent! colorscheme onedark

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
highlight Normal guibg=NONE ctermbg=NONE


highlight LspDiagnosticsError guifg=Red3 ctermfg=160
highlight LspDiagnosticsWarning guifg=Gold3 ctermfg=178
highlight LspDiagnosticsInformation guifg=SteelBlue1 ctermfg=75
highlight LspDiagnosticsHint guifg=DarkCyan ctermfg=DarkCyan
