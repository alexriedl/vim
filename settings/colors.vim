syntax on
set background=dark

set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" silent! colorscheme gruvbox
" silent! colorscheme deus
" silent! colorscheme onedark
" silent! colorscheme nvcode
" silent! colorscheme aurora
silent! colorscheme snazzy
" silent! colorscheme palenight
" silent! colorscheme moonfly
" silent! colorscheme nightfly
" silent! colorscheme OceanicNext


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


" highlight LspDiagnosticsError guifg=Red3 ctermfg=160
" highlight LspDiagnosticsWarning guifg=Gold3 ctermfg=178
" highlight LspDiagnosticsInformation guifg=SteelBlue1 ctermfg=75
" highlight LspDiagnosticsHint guifg=DarkCyan ctermfg=DarkCyan
