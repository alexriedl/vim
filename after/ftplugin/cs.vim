set noexpandtab

" nnoremap <buffer> <C-S-f> :OmniSharpCodeFormat<CR>
" nnoremap <buffer> <C-S-r> :OmniSharpRestartServer<CR>
nnoremap <buffer> <F2> :OmniSharpRename<CR>
nnoremap <buffer> <M-CR> :OmniSharpGetCodeActions<CR>
nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
nnoremap <buffer> gh :OmniSharpTypeLookup<CR>
nnoremap <buffer> gi :OmniSharpFindImplementations<CR>
nnoremap <buffer> gr :ClearQuickfixList<cr>:OmniSharpFindUsages<CR>

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview' if you
" don't want to see any documentation whatsoever.
set completeopt=longest,menuone,preview

set errorformat=\ %#%f(%l\\\,%c):\ %m
set makeprg=dotnet\ build

" Set desired preview window height for viewing documentation.
" You might also want to look at the echodoc plugin.
set previewheight=5

" autocmd BufReadPost,FileReadPost *.cs :OmniSharpHighlightTypes
