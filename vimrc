" vim:fdm=marker
" Vundle Setup {{{
set nocompatible
filetype off
if has("win32")
    set rtp+=$USERPROFILE/vimfiles/bundle/Vundle.vim
    call vundle#begin('$USERPROFILE/vimfiles/bundle')
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif
Plugin 'VundleVim/Vundle.vim'
" }}}
" Plugins {{{
"##################################
"#       Layout + Look/Feel
"##################################
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'sickill/vim-monokai'

"Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

"##################################
"#          Languages
"##################################
" C / C++
Bundle 'octol/vim-cpp-enhanced-highlight'

" Javascript + Client Side Stuffs
Bundle 'mxw/vim-jsx'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'

" Type script
" Syntax checker
Bundle 'Quramy/tsuquyomi'
" Syntax Highlighter
Bundle 'leafgarland/typescript-vim'

" Shell Scripts
Bundle 'PProvost/vim-ps1'

"##################################
"#          Usablility
"##################################
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'Shougo/vimproc.vim'
Bundle 'simnalamburt/vim-mundo'

"Bundle 'Valloric/YouCompleteMe'
Bundle 'ervandew/supertab'
Bundle 'vim-syntastic/syntastic'
Bundle 'tpope/vim-dispatch'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"##################################
"#             Other
"##################################
Bundle 'vimwiki/vimwiki'
Bundle 'tmux-plugins/vim-tmux'
" }}}
" Basic Setup {{{
call vundle#end()
syntax on
filetype plugin on
let mapleader=","
" }}}
" Mundo Plugin {{{
nnoremap <F6> :MundoToggle<CR>
" }}}
" NERDTree Plugin {{{
let NERDTreeIgnore = ['\.ico$', 'public$', 'fonts$', 'node_modules$', 'vendor$', 'bin$', 'obj$']
let NERDTreeSortOrder = ['src\/$', 'tests\/$', 'dal\/$', 'sl\/$', 'pl\/$', 'bll\/$', 'js\/$', 'less\/$', '\/$', '*']
let NERDTreeAutoDeleteBuffer=1
" }}}
" Syntastic Plugin {{{
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Checkers
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_cs_checkers = ['code_checker', 'syntax', 'semantic', 'issues']

let g:tsuquyomi_disable_quickfix = 1

" }}}
" Snippets {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "customSnippets"]
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
set number              "Show line numbers
set tabstop=2           "Tab width
set shiftwidth=2        "Tab width
set expandtab           "Use spaces instead of tabs
set cindent             "Auto indent using c style indents
set cursorline          "Highlight line cursor is on
set showmatch           "Show matching parenthesis
set hlsearch            "Highlight search matches
set incsearch           "Search as characters are entered
set ignorecase          "Needed for smart case to work correctly
set smartcase           "Do case-sensitive search only if theres a cap
set foldmethod=indent   "Fold on indents
set foldlevelstart=20
set foldnestmax=2
set autoread            "Auto reload file if seved externally
set nobackup            "Disable backup files
set noswapfile          "Disable backup files
set hidden              "Hide current buffers instead of complain

" set noundofile          "Disable undo files
set undofile
set undodir=~/.vim/undo

if has("win32")
else
  " White Space
  set listchars=tab:>-,trail:~,extends:>,precedes:<,space:␣
  "set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
  "set list
endif
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
