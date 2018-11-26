" NVim Setup
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

" NVim Specific Settings
" Dont use shada files.....too many issues
" set shada="NONE"

" Escape in a terminal actually escapes...
tnoremap <Esc> <C-\><C-n>
