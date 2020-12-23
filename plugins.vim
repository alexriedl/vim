" Optionally load plugin helper
function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

"##################################
"#          Usablility
"##################################
" Async - Not sure if either of these are required anymore
Plug 'https://github.com/tpope/vim-dispatch'
Plug 'https://github.com/Shougo/vimproc.vim', {'do' : 'make'}

" Search
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/FelikZ/ctrlp-py-matcher'
Plug 'https://github.com/dyng/ctrlsf.vim'

Plug 'https://github.com/michaeljsmith/vim-indent-object'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/tpope/vim-surround'

" Smooth Scroll
Plug 'https://github.com/yuttie/comfortable-motion.vim'

" Repeat plugin commands
Plug 'https://github.com/tpope/vim-repeat'

" Modify quickfix list
Plug 'https://github.com/stefandtw/quickfix-reflector.vim'

" Comment sections easily
Plug 'https://github.com/tpope/vim-commentary'

" Unix Commands
Plug 'https://github.com/tpope/vim-eunuch'

" Visual Undo tree
Plug 'https://github.com/simnalamburt/vim-mundo'

" Nicer Expand commands, More replace syntax, name style conversion
Plug 'https://github.com/tpope/vim-abolish.git'

" Syntax + Code complete
Plug 'https://github.com/ervandew/supertab'
Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'https://github.com/neovim/nvim-lspconfig.git', Cond(has('nvim'))
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', Cond(has('nvim'), {'do': ':TSUpdate'})
Plug 'https://github.com/nvim-lua/completion-nvim', Cond(has('nvim'))

Plug 'https://github.com/puremourning/vimspector.git', {'do' : './install_gadget.py --enable-c --enable-bash --force-enable-csharp'}

" Easy format keybindings (like align on =)
Plug 'https://github.com/godlygeek/tabular.git'

" Snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

"##################################
"#       Layout + Look/Feel
"##################################
" Tabbar
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/romgrk/barbar.nvim.git', Cond(has('nvim'))
Plug 'https://github.com/kyazdani42/nvim-web-devicons.git', Cond(has('nvim'))

" Colors
" Plug 'https://github.com/morhetz/gruvbox'
" Plug 'https://github.com/ajmwagar/vim-deus.git'
" Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/christianchiarulli/nvcode-color-schemes.vim'
" Plug 'https://github.com/bluz71/vim-moonfly-colors.git'
" Plug 'https://github.com/bluz71/vim-nightfly-guicolors.git'
" Plug 'https://github.com/mhartington/oceanic-next.git'

" Basically all languages syntax highlighting
" Plug 'https://github.com/sheerun/vim-polyglot'

" File Explorer
Plug 'https://github.com/justinmk/vim-dirvish'
Plug 'https://github.com/kristijanhusak/vim-dirvish-git'

" Highlight yanked region
Plug 'https://github.com/machakann/vim-highlightedyank.git'

" Display marks in gutter
Plug 'https://github.com/kshenoy/vim-signature'

" Highlight word under cursor
Plug 'https://github.com/RRethy/vim-illuminate'

"##################################
"#          Languages
"##################################
" Run Tests
Plug 'https://github.com/janko-m/vim-test'

" Tag manager
" Plug 'https://github.com/ludovicchabant/vim-gutentags'

" C / C++
" Plug 'https://github.com/octol/vim-cpp-enhanced-highlight'

" C#
" Plug 'https://github.com/OmniSharp/omnisharp-vim.git'
" Plug 'https://github.com/OrangeT/vim-csharp.git'
" Plug 'https://github.com/nickspoons/vim-sharpenup.git'

" Markdown
Plug 'https://github.com/plasticboy/vim-markdown'

" Typescript/Javascript + Client Side Stuffs
" ts server client
" Plug 'https://github.com/Quramy/tsuquyomi.git'
" Syntax file for typescript
" Plug 'https://github.com/leafgarland/typescript-vim.git'
" More Syntax? and indenting
" Plug 'https://github.com/pangloss/vim-javascript.git'
" Syntax for jsx
" Plug 'https://github.com/peitalin/vim-jsx-typescript.git'

" Json Formatter
Plug 'https://github.com/tpope/vim-jdaddy.git'

" SQL
Plug 'https://github.com/vim-scripts/dbext.vim'
" Plug 'https://github.com/joereynolds/SQHell.vim.git'

"##################################
"#             Tmux
"##################################
" For highlighting
Plug 'https://github.com/tmux-plugins/vim-tmux.git'

" Allows mappings to move from vim to tmux splits
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'

" Help with tmux clipboard
Plug 'https://github.com/roxma/vim-tmux-clipboard'

" Make tmux pass focus events through so plugins work
Plug 'https://github.com/tmux-plugins/vim-tmux-focus-events.git'

"##################################
"#             git
"##################################
Plug 'https://github.com/rhysd/git-messenger.vim'
Plug 'https://github.com/airblade/vim-gitgutter'

" Diff sections of text
Plug 'https://github.com/AndrewRadev/linediff.vim'

Plug 'https://github.com/tpope/vim-fugitive'
" Fugitive Gitlab
Plug 'https://github.com/shumphrey/fugitive-gitlab.vim'
" Fugitive Github
Plug 'https://github.com/tpope/vim-rhubarb'
" Fugitive Bitbucket
Plug 'https://github.com/tommcdo/vim-fubitive'

"##################################
"#             Other
"##################################
Plug 'https://github.com/vimwiki/vimwiki'

" UML/Sequence Diagrams in plantuml syntax (requires java installed)
Plug 'https://github.com/scrooloose/vim-slumlord.git'

" Chrome/Firefox nvim extension
Plug 'https://github.com/glacambre/firenvim.git', Cond(has('nvim'), { 'do': { _ -> firenvim#install(0) } })
