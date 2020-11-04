if has('nvim')

  " Move to previous/next
  nnoremap <silent>    <S-h> :BufferPrevious<CR>
  nnoremap <silent>    <S-l> :BufferNext<CR>
  nnoremap <silent>    <A-,> :BufferPrevious<CR>
  nnoremap <silent>    <A-.> :BufferNext<CR>
  " Re-order to previous/next
  nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
  nnoremap <silent>    <A->> :BufferMoveNext<CR>
  " Close buffer
  nnoremap <silent>    <leader>bq :BufferClose<CR>

  let bufferline = {}

  " Show a shadow over the editor in buffer-pick mode
  let bufferline.shadow = v:true

  " Enable/disable animations
  let bufferline.animation = v:true

  " Enable/disable icons
  let bufferline.icons = v:true

  " Enable/disable close button
  let bufferline.closable = v:true

  " Enables/disable clickable tabs
  "  - left-click: go to buffer
  "  - middle-click: delete buffer
  let bufferline.clickable = v:true
endif

  " \   'colorscheme': 'deus',
  " \   'colorscheme': 'onedark',
let g:lightline = {
  \   'colorscheme': 'deus',
  \   'active': {
  \     'left': [
  \        [ 'mode', 'paste' ],
  \        [ 'gitbranch', 'readonly', 'filename', 'modified' ],
  \     ]
  \   },
  \   'component': {
  \     'lineinfo': ' %3l:%-2v',
  \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }
