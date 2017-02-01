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
" Haskel
Bundle 'eagletmt/ghcmod-vim'
Bundle 'neovimhaskell/haskell-vim'
" Hack
Bundle 'hhvm/vim-hack'
" Javascript + Client Side Stuffs
Bundle 'mxw/vim-jsx'
Bundle 'pangloss/vim-javascript'
"Bundle 'Quramy/tsuquyomi' - supposedly works with syntastic
Bundle 'leafgarland/typescript-vim'
Bundle 'groenewege/vim-less'
" Shell Scripts
Bundle 'PProvost/vim-ps1'

"##################################
"#          Usablility
"##################################
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'Shougo/vimproc.vim'

"Bundle 'Valloric/YouCompleteMe'
Bundle 'ervandew/supertab'
Bundle 'vim-syntastic/syntastic'
Bundle 'OmniSharp/omnisharp-vim'
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
let mapleader=","
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
let g:syntastic_typescript_checkers = ['tsc', 'tslint']
let g:syntastic_cs_checkers = ['code_checker', 'syntax', 'semantic', 'issues']
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
" Indent Guides {{{
let g:indent_guides_enable_on_vim_startup=0 " Default keybinding to toggle is <leader>ig
let g:indent_guides_color_change_percent=5
let g:indent_guides_exclude_filetypes=['help', 'nerdtree']
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
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
set smartcase           "Do case-sensitive search only if theres a cap
set foldmethod=indent   "Fold on indents
set foldlevelstart=20
set foldnestmax=2
set autoread            "Auto reload file if seved externally
set nobackup            "Disable backup files
set noswapfile          "Disable backup files
set noundofile          "Disable undo files
set hidden              "Hide current buffers instead of complain

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
" OMNISHARP TESTING STUFFS {{{

let g:OmniSharp_selector_ui = 'ctrlp'
let g:OmniSharp_server_type = 'roslyn'

" OmniSharp won't work without this setting
filetype plugin on

"This is the default value, setting it isn't actually necessary
"let g:OmniSharp_host = "http://localhost:2000"

"Set the type lookup function to use the preview window instead of the status line
"let g:OmniSharp_typeLookupInPreview = 1

"Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 1

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
set noshowmatch

"Super tab settings - uncomment the next 4 lines
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
let g:SuperTabClosePreviewOnPopupClose = 1

"don't autoselect first item in omnicomplete, show if only one item (for preview)
"remove preview if you don't want to see any documentation whatsoever.
set completeopt=longest,menuone,preview
" Fetch full documentation during omnicomplete requests.
" There is a performance penalty with this (especially on Mono)
" By default, only Type/Method signatures are fetched. Full documentation can still be fetched when
" you need it with the :OmniSharpDocumentation command.
" let g:omnicomplete_fetch_documentation=1

"Move the preview window (code documentation) to the bottom of the screen, so it doesn't move the code!
"You might also want to look at the echodoc plugin
set splitbelow

augroup omnisharp_commands
    autocmd!

    "Set autocomplete function to OmniSharp (if not using YouCompleteMe completion plugin)
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

    " Synchronous build (blocks Vim)
    "autocmd FileType cs nnoremap <F5> :wa!<cr>:OmniSharpBuild<cr>
    " Builds can also run asynchronously with vim-dispatch installed
    autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr>
    " automatic syntax check on events (TextChanged requires Vim 7.4)
    autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

    " Automatically add new cs files to the nearest project on save
    autocmd BufWritePost *.cs call OmniSharp#AddToProject()

    "show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "The following commands are contextual, based on the current cursor position.

    autocmd FileType cs nnoremap gd :OmniSharpGotoDefinition<cr>
    autocmd FileType cs nnoremap <leader>fi :OmniSharpFindImplementations<cr>
    autocmd FileType cs nnoremap <leader>ft :OmniSharpFindType<cr>
    autocmd FileType cs nnoremap <leader>fs :OmniSharpFindSymbol<cr>
    autocmd FileType cs nnoremap <leader>fu :OmniSharpFindUsages<cr>
    "finds members in the current buffer
    autocmd FileType cs nnoremap <leader>fm :OmniSharpFindMembers<cr>
    " cursor can be anywhere on the line containing an issue
    autocmd FileType cs nnoremap <leader>x  :OmniSharpFixIssue<cr>
    autocmd FileType cs nnoremap <leader>fx :OmniSharpFixUsings<cr>
    autocmd FileType cs nnoremap <leader>tt :OmniSharpTypeLookup<cr>
    autocmd FileType cs nnoremap <leader>dc :OmniSharpDocumentation<cr>
    "navigate up by method/property/field
    autocmd FileType cs nnoremap <C-K> :OmniSharpNavigateUp<cr>
    "navigate down by method/property/field
    autocmd FileType cs nnoremap <C-J> :OmniSharpNavigateDown<cr>

augroup END


" this setting controls how long to wait (in ms) before fetching type / symbol information.
set updatetime=500
" Remove 'Press Enter to continue' message when type information is longer than one line.
set cmdheight=2

" Contextual code actions (requires CtrlP or unite.vim)
"nnoremap <leader><space> :OmniSharpGetCodeActions<cr>
" Run code actions with text selected in visual mode to extract method
"vnoremap <leader><space> :call OmniSharp#GetCodeActions('visual')<cr>

" rename with dialog
nnoremap <leader>nm :OmniSharpRename<cr>
nnoremap <F2> :OmniSharpRename<cr>
" rename without dialog - with cursor on the symbol to rename... ':Rename newname'
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

" Force OmniSharp to reload the solution. Useful when switching branches etc.
nnoremap <leader>rl :OmniSharpReloadSolution<cr>
nnoremap <leader>cf :OmniSharpCodeFormat<cr>
" Load the current .cs file to the nearest project
nnoremap <leader>tp :OmniSharpAddToProject<cr>

" (Experimental - uses vim-dispatch or vimproc plugin) - Start the omnisharp server for the current solution
nnoremap <leader>ss :OmniSharpStartServer<cr>
nnoremap <leader>sp :OmniSharpStopServer<cr>

" Add syntax highlighting for types and interfaces
nnoremap <leader>th :OmniSharpHighlightTypes<cr>
"Don't ask to save when changing buffers (i.e. when jumping to a type definition)
set hidden

" Enable snippet completion, requires completeopt-=preview
let g:OmniSharp_want_snippet=1
" }}}
" Local System Settings (LEAVE ON BOTTOM) {{{
if filereadable(expand("~/projects/vimrc"))
    source ~/projects/vimrc
endif
"}}}
