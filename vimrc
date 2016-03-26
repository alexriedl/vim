"-----------------------------------------------------------------------------"
"                         !!! VERY IMPORTANT !!!                              "
" git submodule init                                                          "
" git submodule update                                                        "
" then goto .vim/bundle/vim-proc/ and do ./make                               "
"-----------------------------------------------------------------------------"

"Pathogen
execute pathogen#infect()
filetype plugin on
filetype plugin indent on
syntax on

let mapleader=","       "Set comma as leader

"NERDTree Plugin
nnoremap <F9> :NERDTree<CR>

"compile .less into .css
nnoremap <Leader>m :w <BAR> !lessc % > css/%:t:r.css<CR><space>

"Normal Settings
colorscheme desert      "Gvim Color Scheme
set nu                  "Show line numbers
set tabstop=4           "Tab width
set shiftwidth=4        "Tab width
set expandtab           "Use spaces instead of tabs
set cindent             "Auto indent using c style indents
set cursorline          "Highlight line cursor is on
set hlsearch            "Highlight search matches
set incsearch           "Search as characters are entered
set autoread            "Auto reload file if seved externally
set ignorecase          "ignore case for searching
set smartcase           "do case-sensitive if theres a cap
set foldmethod=indent   "Fold on indent level
set foldlevelstart=20
set foldnestmax=2
set nobackup            "Disable backup files
set noswapfile          "Disable backup files
set hidden              "Hide current buffers instead of complain
set guioptions-=m       "gvim settings
set guioptions-=T       "gvim settings

"Highlight column 80
if(exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=red ctermfg=white guibg=#592929
endif

"cancel search match highlights
nnoremap <leader><space> :nohlsearch<CR>

"Toggle folding
nnoremap <space> za

"Alternate escape sequences
ino jk <esc>
ino kj <esc>

"Add a new line without entering insert mode
nnoremap <CR> o<Esc>
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

"For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

"For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
