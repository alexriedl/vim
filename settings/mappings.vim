" Cancel search match highlights
nnoremap <leader><space> :nohlsearch<CR>

" Sort selected lines (in visual line mode)
xnoremap <C-s> :sort<CR>

" Toggle folding
nnoremap <space> za

" Alternate escape sequences
" inoremap jk <esc>
" inoremap kj <esc>

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

" Cleaner inner yanks
nnoremap "y yi"
nnoremap 'y yi'
nnoremap (y yi(
nnoremap )y yi)

" Save as sudo
cmap w!! w !sudo tee > /dev/null %

" ctrl+space to omni complete
inoremap <c-space> <c-x><c-o>

" Search for word under cursor in all files that share the same extension (use
" normal searches by adding a space after lvim
cabbrev lvim
      \ lvim /\<lt><C-R><C-W>\>/gj
      \ *<C-R>=(expand("%:e")=="" ? "" : ".".expand("%:e"))<CR>
      \ <Bar> lw
      \ <C-Left><C-Left><C-Left>
nnoremap gf
      \ :lvim /\<lt><C-R><C-W>\>/gj
      \ **/*<C-R>=(expand("%:e")=="" ? "" : ".".expand("%:e"))<CR>
      \ <Bar> lw
      \ <C-Left><C-Left><C-Left><CR>
