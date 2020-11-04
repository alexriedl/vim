set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

" Escape in a terminal actually escapes...
tnoremap <Esc> <C-\><C-n>

autocmd CompleteDone * pclose
autocmd Filetype javascript,typescript,typescriptreact,vim,sh,python,c,cpp,cs setlocal omnifunc=v:lua.vim.lsp.omnifunc

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
inoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>ca <cmd>lua vim.lsp.buf.code_action()<CR>

" Manual language server installs:
" lua:        LspInstall sumneko_lua
" c#:         LspInstall omnisharp
" bash:       LspInstall bashls
" typescript: LspInstall tsserver
" C++:        Manually install ccls

lua <<EOF
require'nvim_lsp'.ccls.setup{        on_attach=require'diagnostic'.on_attach }
require'nvim_lsp'.bashls.setup{      on_attach=require'diagnostic'.on_attach }
require'nvim_lsp'.tsserver.setup{    on_attach=require'diagnostic'.on_attach }
require'nvim_lsp'.terraformls.setup{ on_attach=require'diagnostic'.on_attach }
require'nvim_lsp'.vimls.setup{       on_attach=require'diagnostic'.on_attach }
require'nvim_lsp'.sumneko_lua.setup{ on_attach=require'diagnostic'.on_attach }
require'nvim_lsp'.omnisharp.setup{   on_attach=require'diagnostic'.on_attach }
EOF

" TODO: Move to plugin settings
let g:diagnostic_enable_virtual_text = 1

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,
  },
}
EOF


lua <<EOF
  require'nvim-web-devicons'.setup {
   -- globally enable default icons (default to false)
   -- will get overriden by `get_icons` option
   default = true;
  }
EOF
