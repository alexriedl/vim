let $VIMHOME=expand('<sfile>:p:h')

" Install vim-plug if it is not already
if empty(glob('$VIMHOME/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug setup
call plug#begin('$VIMHOME/plugged')
source $VIMHOME/settings/plugins.vim
call plug#end()

" Basic Setup
syntax on
filetype plugin on
let mapleader=","

" Simple command to empty the quick fix list
command! ClearQuickfixList cexpr []

" Normal Settings
set number                 " Show line numbers
set tabstop=2              " Tab width
set shiftwidth=2           " Tab width
set expandtab              " Use spaces instead of tabs
set cindent                " Auto indent using c style indents
set cursorline             " Highlight line cursor is on
set showmatch              " Show matching parenthesis
set hlsearch               " Highlight search matches
set incsearch              " Search as characters are entered
set ignorecase             " Needed for smart case to work correctly
set smartcase              " Do case-sensitive search only if theres a cap
set autoread               " Auto reload file if seved externally
set nobackup               " Disable backup files
set noswapfile             " Disable backup files
set hidden                 " Hide current buffers instead of complain
set mouse=a                " Allow mouse scrolling + selecting in terminal like gvim
set clipboard=unnamedplus  " Use system clipboard as default register
set noequalalways          " Dont resize windows when closing others

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview' if you
" don't want to see any documentation whatsoever.
" set completeopt=longest,menuone,preview,noinsert,noselect
set completeopt=longest,menuone,noinsert

" For echodoc to work
set noshowmode
let g:echodoc_enable_at_startup = 1

" Folds
set foldmethod=marker
set foldlevelstart=20
set foldnestmax=2

" Undo Settings
" set noundofile          "Disable undo files
set undofile
set undodir=$VIMHOME/undo

" Save marks between closes of vim
set viminfo='100,f1

source $VIMHOME/settings/plugin_airline.vim
source $VIMHOME/settings/plugin_ale.vim
source $VIMHOME/settings/plugin_easymotion.vim
source $VIMHOME/settings/plugin_file_browser.vim
source $VIMHOME/settings/plugin_git.vim
source $VIMHOME/settings/plugin_gitgutter.vim
source $VIMHOME/settings/plugin_markdown.vim
source $VIMHOME/settings/plugin_mundo.vim
source $VIMHOME/settings/plugin_omnisharp.vim
source $VIMHOME/settings/plugin_search.vim
source $VIMHOME/settings/plugin_snippets.vim
source $VIMHOME/settings/plugin_sql.vim
source $VIMHOME/settings/plugin_supertab.vim
source $VIMHOME/settings/plugin_tags.vim
source $VIMHOME/settings/plugin_tests.vim
source $VIMHOME/settings/plugin_tmux.vim
source $VIMHOME/settings/plugin_typescript.vim
source $VIMHOME/settings/plugin_debugger.vim
source $VIMHOME/settings/plugin_webdevicons.vim
source $VIMHOME/settings/plugin_wiki.vim

source $VIMHOME/settings/buffers.vim
source $VIMHOME/settings/colors.vim
source $VIMHOME/settings/filetypes.vim
source $VIMHOME/settings/functions.vim
source $VIMHOME/settings/mappings.vim
source $VIMHOME/settings/spell.vim
source $VIMHOME/settings/windows.vim

if(exists('+colorcolumn'))
    set colorcolumn=120
    highlight ColorColumn ctermbg=darkgrey ctermfg=white guibg=#592929
endif

" Auto trim whitespace on save and keep the cursor position
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
augroup whitespace_autocommands
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END

" Save as sudo
cmap w!! w !sudo tee > /dev/null %

" Display extra whitespace
set list listchars=tab:-»,trail:·,nbsp:·

set runtimepath+=~/projects/personal/test-runner

" Fix vim.basic cursor
let &t_SI = '\e[6 q'
let &t_EI = '\e[2 q'
augroup cursor_style
  autocmd!
  autocmd VimEnter * silent !echo -ne '\e[2 q'
augroup END

" Fix vim.basic escape delay
set timeoutlen=1000 ttimeoutlen=0

" Local System Settings (LEAVE ON BOTTOM)
if filereadable(expand("~/projects/vimrc"))
    source ~/projects/vimrc
endif
