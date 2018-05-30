let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Checkers
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_typescript_checkers = ['tsuquyomi']
" let g:syntastic_cs_checkers = ['code_checker', 'syntax', 'semantic', 'issues']
let g:syntastic_cs_checkers = ['code_checker']

let g:tsuquyomi_disable_quickfix = 1
