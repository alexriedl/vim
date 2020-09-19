function! s:configure_cs()
  let g:OmniSharp_selector_ui = 'ctrlp'
  let g:OmniSharp_timeout = 5
  let g:OmniSharp_highlight_types = 3

  let g:OmniSharp_server_stdio = 1
  let g:OmniSharp_server_stdio_quickload = 1

  let g:sharpenup_codeactions = 1
  " let g:sharpenup_codeactions_glyph = '💡'
  let g:sharpenup_codeactions_glyph = 'A'
  let g:sharpenup_codeactions_set_signcolumn = 1
  let g:sharpenup_codeactions_autocmd = 'CursorHold'
  let g:sharpenup_create_mappings = 0
endfunction

" call s:configure_cs()
