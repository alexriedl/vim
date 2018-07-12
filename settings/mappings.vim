" Cancel search match highlights
nnoremap <leader><space> :nohlsearch<CR>

xnoremap <C-s> :sort<CR>

" Toggle folding
nnoremap <space> za

" Alternate escape sequences
inoremap jk <esc>
inoremap kj <esc>

" Skip 'fake' lines
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $
" Unbind old beginning/end of line movements (forces use of new bindings)
nnoremap $ <nop>
nnoremap ^ <nop>

" Add a new line without entering insert mode
nnoremap <S-CR> O<Esc>

" Ctrl+Space for autocomplete
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
            \ "\<lt>C-n>" :
            \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
            \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-p>\" :" .
            \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

" Cleaner inner paste
nnoremap "p vi"p
nnoremap 'p vi'p
nnoremap (p vi(p
nnoremap )p vi)p

" Cleaner inner change
nnoremap "c ci"
nnoremap 'c ci'
nnoremap (c ci(
nnoremap )c ci)

" Cleaner innter yanks
nnoremap "y yi"
nnoremap 'y yi'
nnoremap (y yi(
nnoremap )y yi)

" Save as sudo
cmap w!! w !sudo tee > /dev/null %
