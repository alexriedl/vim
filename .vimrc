"Pathogen
execute pathogen#infect()

"Project Plugin
let g:proj_window_width = 33
nnoremap <F9> :Project<CR>

"Supertab Plugin (Use tab to auto-complete instead of <c-x> <x-o>)
"let g:SuperTabDefaultCompletionType = ""

"Taggatron Plugin (auto generate tag files - requires ctags-exuberant installed)
let g:tagcommands = {
\    "php" : {"tagfile":".php.tags","args":"-R"},
\    "javascript" : {"tagfile":".js.tags","args":"-R"} 
\}

"Autocomplete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"Normal Settings
colorscheme desert      "Gvim Color Scheme
set nu                  "Show line numbers
set tabstop=4           "Tab width
set shiftwidth=4        "Tab width
set expandtab           "Use spaces instead of tabs
set cindent             "Auto indent using c style indents
set foldmethod=indent   "Fold on indent level
set foldlevelstart=1    "Default fold level
set foldnestmax=2       "Set max folds to 2
set cursorline          "Highlight line cursor is on
set hlsearch            "Highlight search matches
set incsearch           "Search as characters are entered

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
