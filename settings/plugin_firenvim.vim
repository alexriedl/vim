let g:firenvim_config = {
  \ 'localSettings': {
    \ '.*': {
      \ 'selector': '',
      \ 'priority': 1,
    \ }
  \ }
\ }
      " \ 'takeover': 'never',
      " \ 'cmdline' : 'firenvim'

augroup firenvim_ag
  autocmd!
  autocmd BufEnter github.com_*.txt set filetype=markdown
  autocmd BufEnter gitlab.com_*.txt set filetype=markdown
  autocmd BufEnter gitlab.directsupply.cloud_*.txt set filetype=markdown
augroup END


let g:dont_write = v:false
function! WriteToBuffer(timer) abort
  let g:dont_write = v:false
  write
endfunction

function! s:delayBufferWrite() abort
  if g:dont_write
    return
  end
  let g:dont_write = v:true
  call timer_start(1000, 'WriteToBuffer')
endfunction

function! s:isFirenvimActive(event) abort
  if !exists('*nvim_get_chan_info')
    return 0
  endif
  let l:ui = nvim_get_chan_info(a:event.chan)
  return has_key(l:ui, 'client') && has_key(l:ui.client, 'name') && l:ui.client.name =~? 'Firenvim'
endfunction

function! OnUiEnter(event) abort
  if s:isFirenvimActive(a:event)
    let g:trim_whitespace_on_save = v:false
    set laststatus=0
    autocmd TextChanged * ++nested call s:delayBufferWrite()
    autocmd TextChangedI * ++nested call s:delayBufferWrite()
  endif
endfunction

if has('nvim')
  autocmd UIEnter * call OnUiEnter(deepcopy(v:event))
endif
