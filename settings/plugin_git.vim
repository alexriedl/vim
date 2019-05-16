let g:git_messenger_no_default_mappings = v:true
nnoremap gb :<C-u>GitMessenger<CR>

let g:fugitive_gitlab_domains = ['https://gitlab.com', 'https://gitlab.directsupply.cloud']

" For Linediff
let g:linediff_first_buffer_command = 'leftabove new'
let g:linediff_further_buffer_command = 'rightbelow vertical new'
vnoremap <leader>d :Linediff<CR>
nnoremap <leader>o :LinediffReset<CR>
