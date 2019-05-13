" Cancel search match highlights
nnoremap <leader><space> :nohlsearch<CR>

" Clear quick fix list
nnoremap <leader>cf :ClearQuickfixList<cr>

" Close Quickfix and Location List and preview window
nnoremap <silent> <C-u> :ClearQuickfixList<cr>:cclose<cr>:lclose<cr>:pclose<cr>

" Sort selected lines (in visual line mode)
xnoremap <C-s> :sort<CR>

" Insert filename
inoremap \fn <C-R>=expand("%:t:r")<CR>

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

" ctrl+space to omni complete
inoremap <c-space> <c-x><c-o>

nnoremap <M-}> :cnext<cr>
nnoremap <M-{> :cprevious<cr>

nnoremap <M-]> :lnext<cr>
nnoremap <M-[> :lprevious<cr>
