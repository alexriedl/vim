function! s:configure_omnisharp()
  nnoremap <silent> <buffer> <localleader>f :OmniSharpCodeFormat<cr>
  nnoremap <silent> <buffer> <localleader>r :OmniSharpRestartServer<cr>
  nnoremap <silent> <buffer> <localleader>cc :OmniSharpGlobalCodeCheck<cr>
  nnoremap <silent> <buffer> <F2> :OmniSharpRename<cr>
  nnoremap <silent> <buffer> <a-cr> :OmniSharpGetCodeActions<cr>
  xnoremap <silent> <buffer> <a-cr> :call OmniSharp#GetCodeActions('visual')<cr>
  nnoremap <silent> <buffer> gd :OmniSharpGotoDefinition<cr>
  nnoremap <silent> <buffer> gh :OmniSharpTypeLookup<cr>
  nnoremap <silent> <buffer> gi :OmniSharpFindImplementations<cr>
  nnoremap <silent> <buffer> gr :ClearQuickfixList<cr>:OmniSharpFindUsages<cr>
  nnoremap <silent> <buffer> [[ :OmniSharpNavigateUp<cr>
  nnoremap <silent> <buffer> ]] :OmniSharpNavigateDown<cr>
  nnoremap <silent> <buffer> K :OmniSharpSignatureHelp<cr>
  " inoremap <silent> <buffer> K <c-O>:OmniSharpSignatureHelp<cr>

  augroup omnisharp_commands
    autocmd!
    " Use tabs in cs files
    autocmd BufRead,BufNewFile *.cs setlocal noexpandtab

    " Ensure the preview window is closed when we leave insert mode
    autocmd InsertLeave *.cs :pclose

    " Close loclist window when buffer is closed
    autocmd QuitPre *.cs if empty(&buftype) | lclose | endif
  augroup END
endfunction

call s:configure_omnisharp()
