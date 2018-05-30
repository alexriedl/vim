set noexpandtab

" gd to goto definition
nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
nnoremap <buffer> gi :OmniSharpFindImplementations<CR>

" Alt-Enter for quick fix
nnoremap <buffer> <M-CR> :OmniSharpFixIssue<CR>

" F2 to rename under cursor
nnoremap <buffer> <F2> :OmniSharpRename<CR>

" Show Method information
nnoremap <buffer> gh :OmniSharpTypeLookup<CR>

" Reload Omnisharp Server
nnoremap <buffer> <C-S-r> :OmniSharpReloadSolution<CR>

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
