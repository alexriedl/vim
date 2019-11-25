set foldmethod=syntax

if exists('s:functions_defined') | finish | endif
let s:functions_defined = v:true

function! s:HeaderToggle()
  let l:file_path = expand('%')
  let l:file_name = expand('%<')
  let l:extension = split(file_path, '\.')[-1] " '\.' is how you really split on dot

  let l:c_ext = 'cpp'
  let l:h_ext = 'h'

  let l:next_ext = l:extension ==# l:c_ext ? l:h_ext : l:c_ext
  let l:next_file = join([l:file_name, '.', l:next_ext], '')

  execute ":edit " . l:next_file
endfunction
nnoremap <leader>h :call <SID>HeaderToggle()<cr>
