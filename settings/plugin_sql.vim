
let g:dbext_default_profile_OGM_QA = 'type=PGSQL:host=localhost:port=1234:dbname=order_guide_management:user=dbup_qa'
let g:dbext_default_profile_OGM = 'type=PGSQL:host=localhost:dbname=order_guide_management:user=dbup_local'
let g:dbext_default_profile='OGM'


autocmd VimEnter *.sql DBCompleteTables
autocmd VimEnter *.sql DBCompleteProcedures


" let g:sw_exe = '/home/alex/.local/share/sqlworkbench/sqlwbconsole.sh'
" let g:sw_config_dir = '/home/alex/.sqlworkbench/'
" let g:sw_cache = '/home/alex/.cache/sw'
