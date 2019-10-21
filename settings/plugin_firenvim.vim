let g:firenvim_config = {
    \ 'localSettings': {
        \ '.*': {
            \ 'selector': 'textarea',
            \ 'priority': 0,
        \ },
        \ 'mail.google.com*': {
            \ 'selector': 'div[role="textbox"]',
            \ 'priority': 1,
        \ },
        \ 'outlook.office.com*': {
            \ 'selector': 'div[role="textbox"]',
            \ 'priority': 1,
        \ },
        \ 'outsystems.directsupply.com*': {
            \ 'selector': '',
            \ 'priority': 1,
        \ },
        \ 'messages.google.com/web*': {
            \ 'selector': '',
            \ 'priority': 1,
        \ },
        \ 'deploy.directs.com*': {
            \ 'selector': '',
            \ 'priority': 1,
        \ }
    \ }
\ }

augroup firenvim_ag
  autocmd!
  autocmd BufEnter github.com_*.txt set filetype=markdown
  autocmd BufEnter gitlab.com_*.txt set filetype=markdown
  autocmd BufEnter gitlab.directsupply.cloud_*.txt set filetype=markdown
augroup END
