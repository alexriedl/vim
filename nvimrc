" NVim Setup
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

" Escape in a terminal actually escapes...
tnoremap <Esc> <C-\><C-n>

call luaeval("require'nvim_lsp'.ccls.setup{}")
call luaeval("require'nvim_lsp'.bashls.setup{}")
call luaeval("require'nvim_lsp'.tsserver.setup{}")
call luaeval("require'nvim_lsp'.terraformls.setup{}")
call luaeval("require'nvim_lsp'.vimls.setup{}")
call luaeval("require'nvim_lsp'.sumneko_lua.setup{}")
" Manuall run :LspInstall sumneko_lua in vim to install the lua language
" server

autocmd CompleteDone * pclose
autocmd Filetype javascript,typescript,typescriptreact,vim,sh,python,c,cpp setlocal omnifunc=v:lua.vim.lsp.omnifunc

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
