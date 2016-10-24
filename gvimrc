"Color Settings
colorscheme monokai
let g:airline_theme='jellybeans'

"Gvim Settings
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"Font Settings
function! SetSystemFontSize(base)
    if has("gui_gtk2")
        let scale = a:base - 1
        execute ':set guifont=Inconsolata\ ' . scale
    elseif has("gui_macvim")
        let scale = a:base + 6
        execute ':set guifont=Menlo Regular:h' . scale
    elseif has("gui_win32")
        let scale = a:base + 1
        execute ':set guifont=Consolas:h' . scale . ':cANSI'
    endif
endfunction

function! FontChangeOnResize()
    if &columns > 150
        call SetSystemFontSize(9)
    elseif &columns > 80
        call SetSystemFontSize(8)
    elseif &columns > 60
        call SetSystemFontSize(7)
    endif
endfunction
autocmd VimResized,GUIEnter * call FontChangeOnResize()
