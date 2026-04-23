
#' 查询Component
#'
#' @param token

#' @param erp_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' Component_select()
Component_select<- function(erp_token) {

  sql=paste0("exec rds_proc_vm_Component_view   ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}

#' 上传发票
#'
#' @param token

#' @param erp_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' Component_upload()
Component_upload<- function(erp_token) {

  sql=paste0("
exec rds_proc_vm_Component_upload ")

  res=tsda::sql_update2(token = erp_token,sql_str = sql)
  return(res)
}




