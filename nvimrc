" NVim Setup
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

" NVim Specific Settings
" Dont use shada files.....too many issues
" set shada="NONE"

" Escape in a terminal actually escapes...
tnoremap <Esc> <C-\><C-n>

autocmd CompleteDone * pclose
autocmd Filetype vim,python,c,cpp setl omnifunc=lsp#omnifunc
" nnoremap <silent> ;dc :call lsp#text_document_declaration()<CR>
" nnoremap <silent> ;df :call lsp#text_document_definition()<CR>
" nnoremap <silent> ;h  :call lsp#text_document_hover()<CR>
" nnoremap <silent> ;i  :call lsp#text_document_implementation()<CR>
" nnoremap <silent> ;s  :call lsp#text_document_signature_help()<CR>
" nnoremap <silent> ;td :call lsp#text_document_type_definition()<CR>

" call nvim_lsp#setup("tsserver", {})
" call nvim_lsp#setup("ccls", {})
" call nvim_lsp#setup("bashls", {})
