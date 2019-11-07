augroup filetypes_autocommands
  autocmd!
  autocmd BufRead,BufNewFile *.hh setl filetype=php
  autocmd BufRead,BufNewFile *.xaml :set filetype=xml
augroup END
