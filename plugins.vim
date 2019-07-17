" Optionally load plugin helper
function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

"##################################
"#          Usablility
"##################################
Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Search
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'dyng/ctrlsf.vim'

Plug 'michaeljsmith/vim-indent-object'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" Function Signature in status line
Plug 'Shougo/echodoc.vim'

" Preview window using nvim floating window instead (Cant get it to work correctly)
" Plug 'ncm2/float-preview.nvim', Cond(has('nvim'))
" Plug 'ncm2/ncm2', Cond(has('nvim'))

" Repeat plugin commands
Plug 'tpope/vim-repeat'

" Modify quickfix list
Plug 'stefandtw/quickfix-reflector.vim'

" Comment sections easily
Plug 'tpope/vim-commentary'

" Unix Commands
Plug 'tpope/vim-eunuch'

" Visual Undo tree
Plug 'simnalamburt/vim-mundo'

" Syntax + Code complete
Plug 'ervandew/supertab'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'https://github.com/neoclide/coc.nvim.git', {'branch': 'release'}

" Debugger. Currently only officially support in vim (not neovim).
" More info at: https://github.com/puremourning/vimspector/pull/30
Plug 'https://github.com/puremourning/vimspector.git',
  \ Cond(!has('nvim'), {'do' : './install_gadget.py --enable-c --enable-bash --force-enable-csharp'})

" Snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

"##################################
"#       Layout + Look/Feel
"##################################
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'ajmwagar/vim-deus'

" Plug 'scrooloose/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Requires Nerd Fonts installed (Shows icons in nerdtree)
" Plug 'ryanoasis/vim-devicons'

Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'

" Display marks in gutter
Plug 'kshenoy/vim-signature'

" Highlight word under cursor
Plug 'RRethy/vim-illuminate'

"##################################
"#          Languages
"##################################
" Run Tests
Plug 'janko-m/vim-test'

" Tag manager
Plug 'ludovicchabant/vim-gutentags'

" C / C++
Plug 'octol/vim-cpp-enhanced-highlight'

" C#
Plug 'https://github.com/OmniSharp/omnisharp-vim.git'
Plug 'https://github.com/OrangeT/vim-csharp.git'
Plug 'https://github.com/nickspoons/vim-sharpenup.git'

" Markdown
Plug 'plasticboy/vim-markdown'

" Typescript/Javascript + Client Side Stuffs
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'

" Json Formatter
Plug 'tpope/vim-jdaddy'

" Shell Scripts
Plug 'PProvost/vim-ps1'

" SQL
Plug 'vim-scripts/dbext.vim'

"##################################
"#             Tmux
"##################################
" For highlighting
Plug 'https://github.com/tmux-plugins/vim-tmux.git'

" Allows mappings to move from vim to tmux splits
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'

" Help with tmux clipboard
Plug 'roxma/vim-tmux-clipboard'

" Make tmux pass focus events through so plugins work
Plug 'https://github.com/tmux-plugins/vim-tmux-focus-events.git'

"##################################
"#             git
"##################################
Plug 'rhysd/git-messenger.vim'
Plug 'airblade/vim-gitgutter'

" Diff sections of text
Plug 'AndrewRadev/linediff.vim'

Plug 'tpope/vim-fugitive'
" Fugitive Gitlab
Plug 'shumphrey/fugitive-gitlab.vim'
" Fugitive Github
Plug 'tpope/vim-rhubarb'
" Fugitive Bitbucket
Plug 'tommcdo/vim-fubitive'

"##################################
"#             Other
"##################################
Plug 'vimwiki/vimwiki'
