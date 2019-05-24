set noexpandtab

nnoremap <buffer> <leader>f :OmniSharpCodeFormat<CR>
nnoremap <buffer> <leader>r :OmniSharpRestartServer<CR>
nnoremap <buffer> <leader>cc :OmniSharpGlobalCodeCheck<CR>
nnoremap <buffer> <F2> :OmniSharpRename<CR>
nnoremap <buffer> <M-CR> :OmniSharpGetCodeActions<CR>
nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
nnoremap <buffer> gh :OmniSharpTypeLookup<CR>
nnoremap <buffer> gi :OmniSharpFindImplementations<CR>
nnoremap <buffer> gr :ClearQuickfixList<cr>:OmniSharpFindUsages<CR>

" Set desired preview window height for viewing documentation.
" You might also want to look at the echodoc plugin.
" set previewheight=5

augroup omnisharp_commands
  autocmd!
  " Update the highlighting whenever leaving insert mode
  autocmd InsertLeave *.cs call OmniSharp#HighlightBuffer()
augroup END
