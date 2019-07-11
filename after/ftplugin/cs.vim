set noexpandtab

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
  " Update the highlighting whenever leaving insert mode
  " autocmd InsertLeave *.cs call OmniSharp#HighlightBuffer()
  autocmd InsertLeave *.cs :pclose

  " This seems like a good idea, but blows away more important information
  " autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
augroup END
