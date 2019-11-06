let g:firenvim_config = {
    \ 'localSettings': {
        \ '.*': {
            \ 'selector': '',
            \ 'priority': 0,
        \ }
    \ }
\ }

augroup firenvim_ag
  autocmd!
  autocmd BufEnter github.com_*.txt set filetype=markdown
  autocmd BufEnter gitlab.com_*.txt set filetype=markdown
  autocmd BufEnter gitlab.directsupply.cloud_*.txt set filetype=markdown
augroup END
