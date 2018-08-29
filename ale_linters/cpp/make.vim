function! ale_linters#cpp#make#GetCommand(buffer) abort
  let l:makefile_path = ale#path#FindNearestFile(a:buffer, 'Makefile')

  if !empty(l:makefile_path)
    return 'cd '. fnamemodify(l:makefile_path, ':p:h') . ' && make'
  endif
endfunction

call ale#linter#Define('cpp', {
\   'name': 'make',
\   'aliases': ['make'],
\   'output_stream': 'stderr',
\   'executable_callback': ale#VarFunc('cpp_gcc_executable'),
\   'read_buffer': 0,
\   'command_chain': [
\       {'callback': 'ale_linters#cpp#make#GetCommand'},
\   ],
\   'callback': 'ale#handlers#gcc#HandleGCCFormatWithIncludes',
\})
