function! s:enable_dbext()

let g:dbext_default_profile_RECON_LOCAL =   'type=PGSQL:host=localhost:dbname=recon:user=root'
let g:dbext_default_profile_RECON_TUNNEL =  'type=PGSQL:host=localhost:port=1234:dbname=recon:user=db_root_user'

let g:dbext_default_profile_OGM_LOCAL =     'type=PGSQL:host=localhost:dbname=order_guide_management:user=dbup_local'
let g:dbext_default_profile_OGM_DEV =       'type=PGSQL:host=localhost:port=1111:dbname=order_guide_management:user=dbup_dev'
let g:dbext_default_profile_OGM_QA =        'type=PGSQL:host=localhost:port=2221:dbname=order_guide_management:user=dbup_qa'
let g:dbext_default_profile_OGM_PROD =      'type=PGSQL:host=localhost:port=3331:dbname=order_guide_management:user=ogm_read_only_prod'

let g:dbext_default_profile_PRODUCT_LOCAL = 'type=PGSQL:host=localhost:dbname=supplier_product:user=supplierproduct_owner'
let g:dbext_default_profile_PRODUCT_DEV =   'type=PGSQL:host=localhost:port=1112:dbname=supplier_product:user=supplierproduct_owner_dev'
let g:dbext_default_profile_PRODUCT_QA =    'type=PGSQL:host=localhost:port=2222:dbname=supplier_product:user=supplierproduct_owner_qa'
let g:dbext_default_profile_PRODUCT_PROD =  'type=PGSQL:host=localhost:port=3332:dbname=supplier_product:user=supplierproduct_read_only_prod'

let g:dbext_default_profile_ARAMARK_LOCAL = 'type=PGSQL:host=localhost:dbname=aramark:user=dbup_local'
let g:dbext_default_profile_ARAMARK_DEV =   'type=PGSQL:host=localhost:port=1114:dbname=aramark:user=dbup_dev'
let g:dbext_default_profile_ARAMARK_QA =    'type=PGSQL:host=localhost:port=2224:dbname=aramark:user=dbup_qa'
let g:dbext_default_profile_ARAMARK_PROD =  'type=PGSQL:host=localhost:port=3334:dbname=aramark:user=aramark_readonly_prod'

let g:dbext_default_profile='OGM_LOCAL'

augroup general_sql_autocommands
  autocmd!
  autocmd VimEnter *.sql DBCompleteTables
  autocmd VimEnter *.sql DBCompleteProcedures
augroup end

augroup recon
  autocmd!
  autocmd BufRead */sql/recon-local/*      DBSetOption profile=RECON_LOCAL
  autocmd BufRead */sql/recon-tunnel/*     DBSetOption profile=RECON_TUNNEL
augroup end

augroup ogm
  autocmd!
  autocmd BufRead */ogm/core/database/*    DBSetOption profile=OGM_LOCAL
  autocmd BufRead */sql/ogm-local/*        DBSetOption profile=OGM_LOCAL
  autocmd BufRead */sql/ogm-dev/*          DBSetOption profile=OGM_DEV
  autocmd BufRead */sql/ogm-qa/*           DBSetOption profile=OGM_QA
  autocmd BufRead */sql/ogm-prod/*         DBSetOption profile=OGM_PROD
augroup end

augroup supplier
  autocmd!
  autocmd BufRead */ogm/product/database/* DBSetOption profile=PRODUCT_LOCAL
  autocmd BufRead */sql/supplier-local/*   DBSetOption profile=PRODUCT_LOCAL
  autocmd BufRead */sql/supplier-dev/*     DBSetOption profile=PRODUCT_DEV
  autocmd BufRead */sql/supplier-qa/*      DBSetOption profile=PRODUCT_QA
  autocmd BufRead */sql/supplier-prod/*    DBSetOption profile=PRODUCT_PROD
augroup end

augroup aramark
  autocmd!
  autocmd BufRead */ogm/aramark/database/* DBSetOption profile=ARAMARK_LOCAL
  autocmd BufRead */sql/aramark-local/*    DBSetOption profile=ARAMARK_LOCAL
  autocmd BufRead */sql/aramark-dev/*      DBSetOption profile=ARAMARK_DEV
  autocmd BufRead */sql/aramark-qa/*       DBSetOption profile=ARAMARK_QA
  autocmd BufRead */sql/aramark-prod/*     DBSetOption profile=ARAMARK_PROD
augroup end

endfunction

function! s:enable_sqhell()
let g:sqh_connections = {
    \ 'default': {
    \   'user': 'dbup_local',
    \   'password': '#1place2work',
    \   'host': 'localhost',
    \   'database': 'postgres'
    \}
\}
let g:sqh_provider = 'psql'
endfunction

call s:enable_dbext()
" call s:enable_sqhell()
