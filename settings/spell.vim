autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.wiki setlocal spell
autocmd FileType gitcommit setlocal spell
set complete+=kspell
