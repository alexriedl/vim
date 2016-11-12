"Pathogen
execute pathogen#infect()

"Base Setup
filetype plugin on
filetype plugin indent on
syntax on

"Hack filetype
au BufRead,BufNewFile *.hh setl filetype=php

"Define leader key
let mapleader=","

"NERDTree Plugin
nnoremap <F9> :NERDTree<CR>
let NERDTreeIgnore = ['\.ico$', 'public$', 'fonts$', 'node_modules$', 'vendor$']
let NERDTreeSortOrder = ['src\/$', 'tests\/$', 'dal\/$', 'sl\/$', 'pl\/$', 'bll\/$', 'js\/$', 'less\/$', '\/$', '*']
let NERDTreeAutoDeleteBuffer=1

"Syntastic Plugin
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']

"YouCompleteMe Plugin
let g:ycm_warning_symbol = '>'                          "Defaults '>>'
let g:ycm_autoclose_preview_window_after_insertion = 1  "Defaults 0
noremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
noremap <leader>ji :YcmCompleter GoToImplementation<CR>

"Airline
let g:airline#extensions#tabline#enabled=1      "Enable list of buffers
let g:airline#extensions#tabline#fnamemod=':t'  "Display only name in buffer list

"Git Gutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

"Colors
let g:airline_theme='base16'
colorscheme desert

"Normal Settings
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
set foldmethod=indent   "Fold on indent level
set foldlevelstart=20
set foldnestmax=2
set autoread            "Auto reload file if seved externally
set nobackup            "Disable backup files
set noswapfile          "Disable backup files
set hidden              "Hide current buffers instead of complain

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
ino jk <esc>
ino kj <esc>

"Add a new line without entering insert mode
nnoremap <S-CR> O<Esc>

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

"Buffer commands
nmap <S-l> :bnext<CR>
nmap <S-h> :bprevious<CR>
nmap <leader>T :enew<CR>
"Close current buffer, and open previous
nmap <leader>bq :bp <BAR> bd #<CR>

"For local/global replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

"Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>eg :e $MYGVIMRC<CR>
augroup myvimrc
    au!
    au BufWritePost .vimrc,vimrc,vimrc,.gvimrc,gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

"Run build.sh in working directory
nnoremap <F5> <esc>:wa<enter>:!%:p:h/build.sh<enter>
inoremap <F5> <esc>:wa<enter>:!%:p:h/build.sh<enter>

"Wiki
nnoremap <F4> :VimwikiAll2HTML<cr>
