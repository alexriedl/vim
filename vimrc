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
Bundle 'morhetz/gruvbox'

Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

" Display marks in gutter
Bundle 'kshenoy/vim-signature'

"##################################
"#          Languages
"##################################
" C / C++
Bundle 'octol/vim-cpp-enhanced-highlight'

" Javascript + Client Side Stuffs
Bundle 'mxw/vim-jsx'
Bundle 'pangloss/vim-javascript'
Bundle 'groenewege/vim-less'

" Markdown
Bundle 'plasticboy/vim-markdown'

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
Bundle 'Shougo/vimproc.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'easymotion/vim-easymotion'
Bundle 'christoomey/vim-tmux-navigator'

" Visual Undo tree
Bundle 'simnalamburt/vim-mundo'

" Syntax + Code complete
Bundle 'ervandew/supertab'
Bundle 'vim-syntastic/syntastic'
Bundle 'tpope/vim-dispatch'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'tpope/vim-surround'

" Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"##################################
"#             Other
"##################################
Bundle 'airblade/vim-gitgutter'
Bundle 'vimwiki/vimwiki'
Bundle 'tmux-plugins/vim-tmux'

"##################################
"#        Neovim Plugins
"##################################
Bundle 'roxma/vim-tmux-clipboard'

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
nnoremap <F9> :NERDTree<cr>
nnoremap <C-f> :NERDTreeFocus<cr>
" }}}
" Easy Motion Plugin {{{
" Easier easy motion keybindings
map <Leader> <Plug>(easymotion-prefix)
" Make easy motion work like default vim smart case search
let g:EasyMotion_smartcase = 1
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
" Markdown Plugin {{{
let g:vim_markdown_frontmatter = 1
set conceallevel=2
" }}}
" CtrlP{{{
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.(git\/)|(node_modules\/)',
            \ 'file': '\.(exe|so)$'
            \}
" }}}
" Colors {{{
let g:airline_theme='gruvbox'
colorscheme gruvbox
set background=dark
" }}}
" Normal Settings {{{
set number                 "Show line numbers
set tabstop=2              "Tab width
set shiftwidth=2           "Tab width
set expandtab              "Use spaces instead of tabs
set cindent                "Auto indent using c style indents
set cursorline             "Highlight line cursor is on
set showmatch              "Show matching parenthesis
set hlsearch               "Highlight search matches
set incsearch              "Search as characters are entered
set ignorecase             "Needed for smart case to work correctly
set smartcase              "Do case-sensitive search only if theres a cap
set foldmethod=indent      "Fold on indents
set foldlevelstart=20
set foldnestmax=2
set autoread               "Auto reload file if seved externally
set nobackup               "Disable backup files
set noswapfile             "Disable backup files
set hidden                 "Hide current buffers instead of complain
set mouse=a                "Allow mouse scrolling + selecting in terminal like gvim
set clipboard=unnamedplus  "Use system clipboard as default register

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
" }}}
" Windows {{{
"Easier change windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"Resize Windows
nmap <left>  :3wincmd <<cr>
nmap <right> :3wincmd ><cr>
nmap <up>    :3wincmd +<cr>
nmap <down>  :3wincmd -<cr>
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
" Helper Functions {{{
function! PrettyJson()
  :%s/\\n/\r/g
  :%s/\\"/"/g
endfunction
" }}}



" Local System Settings (LEAVE ON BOTTOM) {{{
if filereadable(expand("~/projects/vimrc"))
    source ~/projects/vimrc
endif
"}}}
