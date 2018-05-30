let $VIMHOME=expand('<sfile>:p:h')

" Vundle Setup
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
source $VIMHOME/settings/plugins.vim
call vundle#end()

" Basic Setup
syntax on
filetype plugin on
let mapleader=","

" Normal Settings
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
set autoread               "Auto reload file if seved externally
set nobackup               "Disable backup files
set noswapfile             "Disable backup files
set hidden                 "Hide current buffers instead of complain
set mouse=a                "Allow mouse scrolling + selecting in terminal like gvim
set clipboard=unnamedplus  "Use system clipboard as default register

" Folds
set foldmethod=indent      "Fold on indents
set foldlevelstart=20
set foldnestmax=2

" Undo Settings
" set noundofile          "Disable undo files
set undofile
set undodir=~/.vim/undo

" Save marks between closes of vim
set viminfo='100,f1

source $VIMHOME/settings/plugin_airline.vim
source $VIMHOME/settings/plugin_ctrlp.vim
source $VIMHOME/settings/plugin_easymotion.vim
source $VIMHOME/settings/plugin_gitgutter.vim
source $VIMHOME/settings/plugin_markdown.vim
source $VIMHOME/settings/plugin_mundo.vim
source $VIMHOME/settings/plugin_nerdtree.vim
source $VIMHOME/settings/plugin_omnisharp.vim
source $VIMHOME/settings/plugin_snippets.vim
source $VIMHOME/settings/plugin_syntastic.vim
source $VIMHOME/settings/plugin_webdevicons.vim
source $VIMHOME/settings/plugin_wiki.vim

source $VIMHOME/settings/buffers.vim
source $VIMHOME/settings/colors.vim
source $VIMHOME/settings/filetypes.vim
source $VIMHOME/settings/functions.vim
source $VIMHOME/settings/mappings.vim
source $VIMHOME/settings/windows.vim

" Run build.sh in working directory
" nnoremap <F5> <esc>:wa<enter>:make<enter>

if(exists('+colorcolumn'))
    set colorcolumn=100
    highlight ColorColumn ctermbg=red ctermfg=white guibg=#592929
endif

" Local System Settings (LEAVE ON BOTTOM)
if filereadable(expand("~/projects/vimrc"))
    source ~/projects/vimrc
endif
