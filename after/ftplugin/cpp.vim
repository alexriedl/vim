set foldmethod=syntax

let g:syntastic_cpp_checkers = ['make']



" NOTE: Define a c++ checker that just called make. If needed, pull this to
" its own file, so the 'finish' command doesnt skip more c++ settings
if exists('g:loaded_syntastic_cpp_make_checker')
  finish
endif
let g:loaded_syntastic_cpp_make_checker = 1

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'cpp',
    \ 'name': 'make',
    \ 'exec': 'make',
    \ 'redirect': 'c/make'})
