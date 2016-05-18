"Color Settings
colorscheme monokai
let g:airline_theme='jellybeans'

"Gvim Settings
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"Font Settings
if has("gui_gtk2")
    set guifont=Inconsolata\ 8
elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
elseif has("gui_win32")
    set guifont=Consolas:h9:cANSI
endif
