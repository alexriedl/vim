function! PrettyJson()
  :%s/\\n/\r/g
  :%s/\\"/"/g
endfunction

function! DuplicateCurrentFile(path)
  let path = "%:h/" . a:path
  execute "saveas " . path
  execute "edit " . path
endfunction

command! -bar -nargs=1 Duplicate call DuplicateCurrentFile(<q-args>)
