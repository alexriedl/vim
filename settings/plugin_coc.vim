function! s:setup_coc()

  let g:coc_global_extensions=[
    \ 'coc-json',
    \ 'coc-marketplace',
    \ 'coc-omni',
    \ 'coc-omnisharp',
    \ 'coc-yank',
  \]
    " \ 'coc-ccls',
    " \ 'coc-sh',
    " \ 'coc-sql',
    " \ 'coc-tslint',
    " \ 'coc-tsserver',
    " \ 'coc-vimlsp',
    " \ 'coc-xml',

  " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
  " Coc only does snippet and additional edit on confirm.
  inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
  " inoremap <expr> <cr> pumvisible() ? "\<c-y>\<cr>" : "\<c-g>u\<cr>"

  " Use `[c` and `]c` to navigate diagnostics
  nmap <silent> [c <Plug>(coc-diagnostic-prev)
  nmap <silent> ]c <Plug>(coc-diagnostic-next)

  " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Use K to show documentation in preview window
  " nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction

  " Remap for rename current word
  nmap <leader>rn <Plug>(coc-rename)

  " Remap for format selected region
  xmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)

  " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
  xmap <leader>a  <Plug>(coc-codeaction-selected)
  nmap <leader>a  <Plug>(coc-codeaction-selected)

  " Function text objects
  xmap if <Plug>(coc-funcobj-i)
  xmap af <Plug>(coc-funcobj-a)
  omap if <Plug>(coc-funcobj-i)
  omap af <Plug>(coc-funcobj-a)

  nnoremap <silent> <leader>p :<C-u>CocList diagnostics<cr>

  " Remap for do codeAction of current line
  nmap <leader>ac  <Plug>(coc-codeaction)
  " Fix autofix problem of current line
  nmap <leader>qf  <Plug>(coc-fix-current)

  " List recently yanked lines
  nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>

  augroup coc-group
    autocmd!
    autocmd CursorHold * silent call CocActionAsync('highlight')
  augroup end

endfunction

call s:setup_coc()
