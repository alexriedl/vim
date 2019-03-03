set noexpandtab

nnoremap <buffer> <leader>f :OmniSharpCodeFormat<CR>
nnoremap <buffer> <leader>r :OmniSharpRestartServer<CR>
nnoremap <buffer> <F2> :OmniSharpRename<CR>
nnoremap <buffer> <M-CR> :OmniSharpGetCodeActions<CR>
nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
nnoremap <buffer> gh :OmniSharpTypeLookup<CR>
nnoremap <buffer> gi :OmniSharpFindImplementations<CR>
nnoremap <buffer> gr :ClearQuickfixList<cr>:OmniSharpFindUsages<CR>

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview' if you
" don't want to see any documentation whatsoever.
" set completeopt=longest,menuone,preview
set completeopt=longest,menuone

" Set desired preview window height for viewing documentation.
" You might also want to look at the echodoc plugin.
" set previewheight=5

augroup omnisharp_commands
  autocmd!
  " Update the highlighting whenever leaving insert mode
  autocmd InsertLeave *.cs call OmniSharp#HighlightBuffer()
augroup END
