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
Plug 'mileszs/ack.vim'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'christoomey/vim-tmux-navigator'

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" Repeat
Plug 'tpope/vim-repeat'

" Comment sections easily
Plug 'tpope/vim-commentary'

" Visual Undo tree
Plug 'simnalamburt/vim-mundo'

" Syntax + Code complete
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"##################################
"#       Layout + Look/Feel
"##################################
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Requires Nerd Fonts installed (Shows icons in nerdtree)
Plug 'ryanoasis/vim-devicons'

" Display marks in gutter
Plug 'kshenoy/vim-signature'

" Highlight word under cursor
Plug 'RRethy/vim-illuminate'

"##################################
"#          Languages
"##################################
" Tag manager
Plug 'ludovicchabant/vim-gutentags'

" C / C++
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sakhnik/nvim-gdb', { 'do': './install.sh' }

" C#
Plug 'OmniSharp/omnisharp-vim'
Plug 'OrangeT/vim-csharp'

" Markdown
Plug 'plasticboy/vim-markdown'

" Typescript/Javascript + Client Side Stuffs
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'

" Shell Scripts
Plug 'PProvost/vim-ps1'

" Batsh (bash/batch transpiled language)
Plug 'vuryleo/vim-Batsh'

" SQL
Plug 'vim-scripts/dbext.vim'

"##################################
"#             Tmux
"##################################
Plug 'tmux-plugins/vim-tmux'
Plug 'roxma/vim-tmux-clipboard', Cond(has('nvim'))

"##################################
"#             git
"##################################
Plug 'zivyangll/git-blame.vim'
Plug 'airblade/vim-gitgutter'
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
