let $VIMHOME=expand('<sfile>:p:h')

" Install vim-plug if it is not already
if empty(glob('$VIMHOME/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug setup
silent! if plug#begin('$VIMHOME/plugged')
  source $VIMHOME/plugins.vim
  call plug#end()
endif

" Basic Setup
syntax on
filetype indent plugin on
let mapleader=','
let maplocalleader=','

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

if has('nvim')
  set signcolumn=auto:2      " Dont show sign column unless there is something to show, up to 2 columns
else
  set signcolumn=auto        " Dont show sign column unless there is something to show
endif
set signcolumn=yes " Limit to 1 column and always show it

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Don't autoselect first omnicomplete option, show options even if there is only
" one (so the preview documentation is accessible). Remove 'preview' if you
" don't want to see any documentation whatsoever.
" set completeopt=longest,menuone,preview,noinsert,noselect
" set completeopt=longest,menuone,noinsert
set completeopt=noinsert,noselect,menuone

" For echodoc to work
set noshowmode
let g:echodoc_enable_at_startup = 1
if has('nvim')
  let g:echodoc#type = 'floating'
  highlight link EchoDocFloat Pmenu
else
  let g:echodoc#type = 'popup'
  highlight link EchoDocPopup Pmenu
endif

" Folds
set foldmethod=marker
set foldlevelstart=20
set foldnestmax=8

" Undo Settings
set undofile
set undodir=$VIMHOME/undo

" Save marks between closes of vim
set viminfo='100,f1

function! s:LoadAllSettingsFiles()
  for l:file in split(globpath($VIMHOME . '/settings', '*'), '\n')
    execute 'source ' . l:file
  endfor
endfunction
call s:LoadAllSettingsFiles()

" Auto trim whitespace on save and keep the cursor position
function! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfunction
augroup whitespace_autocommands
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END

" Fix vim.basic cursor (Double quotes are required)
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
augroup cursor_style
  autocmd!
  autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

" Fix vim.basic escape delay
set timeoutlen=1000 ttimeoutlen=0

" Smooth scroll. These probably don't belong here...
let g:comfortable_motion_friction = 200.0
let g:comfortable_motion_air_drag = 0.0

" Plugin Development
if match(getcwd(), '\v.*test-runner-multiple-runners.*') < 0
  set runtimepath+=~/projects/personal/test-runner
else
  set runtimepath+=~/projects/personal/test-runner-multiple-runners
endif

" Local System Settings (LEAVE ON BOTTOM)
if filereadable(expand("~/projects/vimrc"))
  source ~/projects/vimrc
endif
