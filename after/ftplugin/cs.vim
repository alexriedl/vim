nnoremap <silent> <buffer> <localleader>f :OmniSharpCodeFormat<cr>
nnoremap <silent> <buffer> <localleader>r :OmniSharpRestartServer<cr>
nnoremap <silent> <buffer> <localleader>cc :OmniSharpGlobalCodeCheck<cr>
nnoremap <silent> <buffer> <F2> :OmniSharpRename<cr>
nnoremap <silent> <buffer> <M-cr> :OmniSharpGetCodeActions<cr>
xnoremap <silent> <buffer> <M-cr> :OmniSharpGetCodeActions<cr>
nnoremap <silent> <buffer> gd :OmniSharpGotoDefinition<cr>
nnoremap <silent> <buffer> gh :OmniSharpTypeLookup<cr>
nnoremap <silent> <buffer> gi :OmniSharpFindImplementations<cr>
nnoremap <silent> <buffer> gr :ClearQuickfixList<cr>:OmniSharpFindUsages<cr>
nnoremap <silent> <buffer> [[ :OmniSharpNavigateUp<cr>
nnoremap <silent> <buffer> ]] :OmniSharpNavigateDown<cr>
nnoremap <silent> <buffer> <C-space> :OmniSharpSignatureHelp<cr>
inoremap <silent> <buffer> <C-space> <c-O>:OmniSharpSignatureHelp<cr>

augroup omnisharp_commands
  autocmd!
  " OmniSharp throws an error in the autocommand OmniSharpReady
  " autocmd User OmniSharpReady *.cs call OmniSharp#HighlightBuffer()
  " autocmd User OmniSharpReady *.cs call timer_start(1000, {id -> echo 'timeout'})

  " Use tabs in cs files
  autocmd BufRead,BufNewFile *.cs setlocal noexpandtab

  " Ensure the preview window is closed when we leave insert mode
  autocmd InsertLeave *.cs :pclose

  " Close loclist window when buffer is closed
  autocmd QuitPre *.cs if empty(&buftype) | lclose | endif

  autocmd BufNew,BufEnter *.cs,*.csproj execute "silent! CocDisable"
  autocmd BufLeave *.cs,*.csproj execute "silent! CocEnable"

  autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
augroup END
