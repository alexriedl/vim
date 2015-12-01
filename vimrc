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

"NERDTree Plugin
nnoremap <F9> :NERDTree<CR>

"Taggatron Plugin (auto generate tag files - requires ctags-exuberant installed)
let g:tagcommands = {
\    "php" : {"tagfile":".php.tags","args":"-R"},
\    "javascript" : {"tagfile":".js.tags","args":"-R"} 
\}

"Autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

"CTags Exuberant - Load tag files
autocmd FileType php setlocal tags=./.php.tags
autocmd FileType javascript setlocal tags=./.js.tags

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
set foldmethod=indent   "Fold on indent level
set autoread            "Auto reload file if seved externally
set ignorecase          "ignore case for searching
set smartcase           "do case-sensitive if theres a cap

"gvim settings
set guioptions-=m
set guioptions-=T

"Highlight column 80
if(exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=red ctermfg=white guibg=#592929
endif

"set foldlevelstart=1    "Default fold level
"set foldnestmax=2       "Set max folds to 2

"File type specific settings
autocmd FileType php set foldlevelstart=1 foldnestmax=2
autocmd FileType javascript set foldlevelstart=1 foldnestmax=2
autocmd FileType cs set foldnestmax=3

let mapleader=","       "Set comma as leader

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

"Unite
"  file search
nnoremap <C-p> :Unite file_rec/async<cr>
"  Content search
nnoremap <space>/ :Unite grep:.<cr>
"  Yank History
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr>
"  Buffer Switching
nnoremap <space>s :Unite -quick-match buffer<cr>
try
    let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
" search a file in the filetree
nnoremap <space><space> :split<cr> :<C-u>Unite -start-insert file_rec/async<cr>
" reset not it is <C-l> normally
nnoremap <space>r <Plug>(unite_restart)
