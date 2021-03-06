" GUI Settings
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Font Settings
function! SetSystemFontSize(base)
  if has("gui_macvim")
    let scale = a:base + 6
    execute ':set guifont=Menlo Regular:h' . scale
  elseif has("gui_win32")
    let scale = a:base + 1
    execute ':set guifont=Consolas:h' . scale . ':cANSI'
  else
    let scale = a:base
    execute ':set guifont=Inconsolata\ ' . scale
  endif
endfunction

"Short-cut function to allow user to call change font with only FS
com! -nargs=1 FS call SetSystemFontSize(<f-args>)



" Local System Settings (LEAVE ON BOTTOM)
if filereadable(expand("~/projects/gvimrc"))
  source ~/projects/gvimrc
else
  "Default font size
  call SetSystemFontSize(8)
endif
