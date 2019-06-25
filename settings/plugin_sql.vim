let g:dbext_default_profile_RECON_LOCAL = 'type=PGSQL:host=localhost:dbname=recon:user=root'
let g:dbext_default_profile_RECON_TUNNEL = 'type=PGSQL:host=localhost:port=1234:dbname=recon:user=db_root_user'

let g:dbext_default_profile_OGM_LOCAL = 'type=PGSQL:host=localhost:dbname=order_guide_management:user=dbup_local'
let g:dbext_default_profile_OGM_DEV = 'type=PGSQL:host=localhost:port=1234:dbname=order_guide_management:user=dbup_dev'
let g:dbext_default_profile_OGM_QA = 'type=PGSQL:host=localhost:port=1234:dbname=order_guide_management:user=dbup_qa'
let g:dbext_default_profile_OGM_PROD = 'type=PGSQL:host=localhost:port=1234:dbname=order_guide_management:user=ogm_read_only_prod'

let g:dbext_default_profile_PRODUCT_LOCAL = 'type=PGSQL:host=localhost:dbname=supplier_product:user=supplierproduct_owner'
let g:dbext_default_profile_PRODUCT_DEV = 'type=PGSQL:host=localhost:port=1235:dbname=supplier_product:user=supplierproduct_owner_dev'
let g:dbext_default_profile_PRODUCT_QA = 'type=PGSQL:host=localhost:port=1235:dbname=supplier_product:user=supplierproduct_owner_qa'
let g:dbext_default_profile_PRODUCT_PROD = 'type=PGSQL:host=localhost:port=1235:dbname=supplier_product:user=supplierproduct_read_only_prod'

let g:dbext_default_profile='OGM_LOCAL'


augroup general_sql_autocommands
  autocmd!
  autocmd VimEnter *.sql DBCompleteTables
  autocmd VimEnter *.sql DBCompleteProcedures
augroup END

augroup local_recon
 au!
 autocmd BufRead */sql/recon-local/* DBSetOption profile=RECON_LOCAL
augroup end
augroup prod_tunnel
 au!
 autocmd BufRead */sql/recon-tunnel/* DBSetOption profile=RECON_TUNNEL
augroup end

augroup local_ogm
 au!
 autocmd BufRead */sql/ogm-local/* DBSetOption profile=OGM_LOCAL
augroup end
augroup project_ogm
 au!
 autocmd BufRead */ogm/core/database/* DBSetOption profile=OGM_LOCAL
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

augroup local_supplier
 au!
 autocmd BufRead */sql/supplier-local/* DBSetOption profile=PRODUCT_LOCAL
augroup end
augroup project_supplier
 au!
 autocmd BufRead */ogm/product/database/* DBSetOption profile=PRODUCT_LOCAL
augroup end
augroup dev_supplier
 au!
 autocmd BufRead */sql/supplier-dev/* DBSetOption profile=PRODUCT_DEV
augroup end
augroup qa_supplier
 au!
 autocmd BufRead */sql/supplier-qa/* DBSetOption profile=PRODUCT_QA
augroup end
augroup production_supplier
 au!
 autocmd BufRead */sql/supplier-prod/* DBSetOption profile=PRODUCT_PROD
augroup end
