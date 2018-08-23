
let g:dbext_default_profile_OGM_LOCAL = 'type=PGSQL:host=localhost:dbname=order_guide_management:user=dbup_local'
let g:dbext_default_profile_OGM_DEV = 'type=PGSQL:host=localhost:port=1234:dbname=order_guide_management:user=dbup_dev'
let g:dbext_default_profile_OGM_QA = 'type=PGSQL:host=localhost:port=1234:dbname=order_guide_management:user=dbup_qa'
let g:dbext_default_profile_OGM_PROD = 'type=PGSQL:host=localhost:port=1234:dbname=order_guide_management:user=ogm_read_only_prod'

let g:dbext_default_profile_PRODUCT_LOCAL = 'type=PGSQL:host=localhost:port=1235:dbname=supplier_product:user=supplierproduct_owner'
let g:dbext_default_profile_PRODUCT_DEV = 'type=PGSQL:host=localhost:port=1235:dbname=supplier_product:user=supplierproduct_owner_dev'
let g:dbext_default_profile_PRODUCT_QA = 'type=PGSQL:host=localhost:port=1235:dbname=supplier_product:user=supplierproduct_owner_qa'
let g:dbext_default_profile_PRODUCT_PROD = 'type=PGSQL:host=localhost:port=1235:dbname=supplier_product:user=supplierproduct_read_only_prod'

let g:dbext_default_profile='OGM_LOCAL'


autocmd VimEnter *.sql DBCompleteTables
autocmd VimEnter *.sql DBCompleteProcedures

augroup local_ogm
 au!
 autocmd BufRead */sql/ogm-local/* DBSetOption profile=OGM_LOCAL
augroup end
augroup dev_ogm
 au!
 autocmd BufRead */sql/ogm-dev/* DBSetOption profile=OGM_DEV
augroup end
augroup qa_ogm
 au!
 autocmd BufRead */sql/ogm-qa/* DBSetOption profile=OGM_QA
augroup end
augroup production_ogm
 au!
 autocmd BufRead */sql/ogm-prod/* DBSetOption profile=OGM_PROD
augroup end