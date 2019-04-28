function! ale_linters#cpp#make#GetCommand(buffer) abort
  let l:makefile_path = ale#path#FindNearestFile(a:buffer, 'Makefile')

  if !empty(l:makefile_path)
    return 'cd '. fnamemodify(l:makefile_path, ':p:h') . ' && make'
  endif
endfunction

call ale#linter#Define('cpp', {
\   'name': 'make',
\   'output_stream': 'stderr',
\   'executable': 'make',
\   'command': function('ale_linters#cpp#make#GetCommand'),
\   'callback': 'ale#handlers#gcc#HandleGCCFormatWithIncludes',
\})
