" vim:fdm=marker
" Vundle Setup {{{
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" }}}
" Plugins {{{
"##################################
"#       Layout + Look/Feel
"##################################
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'sickill/vim-monokai'

Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

"##################################
"#          Languages
"##################################
" C / C++
Bundle 'octol/vim-cpp-enhanced-highlight'
" Haskel
Bundle 'eagletmt/ghcmod-vim'
Bundle 'neovimhaskell/haskell-vim'
" Hack
Bundle 'hhvm/vim-hack'
" Javascript + Client Side Stuffs
Bundle 'mxw/vim-jsx'
Bundle 'groenewege/vim-less'
Bundle 'pangloss/vim-javascript'
Bundle 'leafgarland/typescript-vim'
" Shell Scripts
Bundle 'PProvost/vim-ps1'

"##################################
"#          Usablility
"##################################
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'Shougo/vimproc.vim'
Bundle 'Valloric/YouCompleteMe'

"##################################
"#             Other
"##################################
Bundle 'vimwiki/vimwiki'
Bundle 'tmux-plugins/vim-tmux'
" }}}
" Basic Setup {{{
filetype plugin indent on
syntax on
let mapleader=","
" }}}
" NERDTree Plugin {{{
let NERDTreeIgnore = ['\.ico$', 'public$', 'fonts$', 'node_modules$', 'vendor$', 'bin$', 'obj$']
let NERDTreeSortOrder = ['src\/$', 'tests\/$', 'dal\/$', 'sl\/$', 'pl\/$', 'bll\/$', 'js\/$', 'less\/$', '\/$', '*']
let NERDTreeAutoDeleteBuffer=1
" }}}
" YouCompleteMe Plugin {{{
let g:ycm_warning_symbol = '>'                          "Defaults '>>'
let g:ycm_autoclose_preview_window_after_insertion = 1  "Defaults 0
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_auto_trigger = 0                              "Do not search for completions automatically
noremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
noremap <leader>ji :YcmCompleter GoToImplementation<CR>
" }}}
" Airline Plugin {{{
let g:airline#extensions#tabline#enabled=1      "Enable list of buffers
let g:airline#extensions#tabline#fnamemod=':t'  "Display only name in buffer list
" }}}
" Git Gutter Plugin {{{
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
" }}}
" CtrlP{{{
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.(git\/)|(node_modules\/)',
            \ 'file': '\.(exe|so)$'
            \}
" }}}
" Colors {{{
let g:airline_theme='base16'
colorscheme desert
" }}}
" Normal Settings {{{
set nu                  "Show line numbers
set tabstop=4           "Tab width
set shiftwidth=4        "Tab width
set expandtab           "Use spaces instead of tabs
set cindent             "Auto indent using c style indents
set cursorline          "Highlight line cursor is on
set showmatch           "Show matching parenthesis
set hlsearch            "Highlight search matches
set incsearch           "Search as characters are entered
set ignorecase          "Ignore case for searching
set smartcase           "Do case-sensitive search only if theres a cap
set foldmethod=indent   "Fold on indents
set foldlevelstart=20
set foldnestmax=2
set autoread            "Auto reload file if seved externally
set nobackup            "Disable backup files
set noswapfile          "Disable backup files
set noundofile          "Disable undo files
set hidden              "Hide current buffers instead of complain
" }}}
" Moving {{{
"Map movements to visual movements (if a line wraps to multiple lines, dont
"skip 'fake' lines
nnoremap j gj
nnoremap k gk

"Move to beginning/end of line
nnoremap B ^
nnoremap E $
"Unbind old beginning/end of line movements (forces use of new bindings)
nnoremap $ <nop>
nnoremap ^ <nop>

"Easier change windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" }}}
" Tab/Buffer commands {{{
"Tabs
nmap <M-l> :tabn<CR>
nmap <M-h> :tabp<CR>
nmap <leader>tq :tabc<CR>
"Buffers
nmap <S-l> :bnext<CR>
nmap <S-h> :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
" }}}
" Editing {{{
"For local/global replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

"Add a new line without entering insert mode
nnoremap <S-CR> O<Esc>

"Cleaner inner paste
nnoremap "p vi"p
nnoremap 'p vi'p
nnoremap (p vi(p
nnoremap )p vi)p

"Cleaner inner change
nnoremap "c ci"
nnoremap 'c ci'
nnoremap (c ci(
nnoremap )c ci)

"Cleaner Yanks
nnoremap "y yi"
nnoremap 'y yi'
nnoremap (y yi(
nnoremap )y yi)
" }}}
" Convenience Shortcuts {{{
"Save as sudo
cmap w!! w !sudo tee > /dev/null %

"Wiki
nnoremap <F4> :VimwikiAll2HTML<cr>

"Search 
vnoremap <F8> y:execute 'vimgrep /\V' . escape(@@, '/\') . '/ %'<CR>

"Run build.sh in working directory
nnoremap <F5> <esc>:wa<enter>:make<enter>

"Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>eg :e $MYGVIMRC<CR>
augroup myvimrc
    au!
    au BufWritePost .vimrc,vimrc,vimrc,.gvimrc,gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
" }}}
" Special Filetypes {{{
"Hack filetype
autocmd BufRead,BufNewFile *.hh setl filetype=php
autocmd BufRead,BufNewFile *.json set filetype=javascript
"}}}
" Other {{{
"Highlight column 100
if(exists('+colorcolumn'))
    set colorcolumn=100
    highlight ColorColumn ctermbg=red ctermfg=white guibg=#592929
endif

"Cancel search match highlights
nnoremap <leader><space> :nohlsearch<CR>

"Toggle folding
nnoremap <space> za

"Alternate escape sequences
inoremap jk <esc>
inoremap kj <esc>

"Save marks between closes of vim
set viminfo='100,f1
"}}}
" Local System Settings (LEAVE ON BOTTOM) {{{
if filereadable(expand("~/projects/vimrc"))
    source ~/projects/vimrc
endif
"}}}
