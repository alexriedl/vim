augroup spell_autocommands
  autocmd!
  autocmd BufRead,BufNewFile *.md setlocal spell
  autocmd BufRead,BufNewFile *.wiki setlocal spell
  autocmd FileType gitcommit setlocal spell
augroup END

set complete+=kspell
set spelllang=en_us
