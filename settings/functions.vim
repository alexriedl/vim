function! PrettyJson()
  :%s/\\n/\r/g
  :%s/\\"/"/g
endfunction

