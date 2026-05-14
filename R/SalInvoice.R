
#' 查询SalInvoice
#'
#' @param token

#' @param token
#'
#' @param FStartDate
#' @param FEndDate
#' @param FInvoice
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' SalInvoice_select()
SalInvoice_select<- function(erp_token,FInvoice,FStartDate,FEndDate) {

  sql=paste0("exec rds_proc_vm_SalInvoice_view  '",FInvoice,"','",FStartDate,"','",FEndDate,"'  ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}



#' 查询SalInvoice——sum
#'
#' @param token

#' @param token
#'
#' @param FStartDate
#' @param FEndDate
#' @param FInvoice
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' SalInvoice_select_sum()
SalInvoice_select_sum<- function(erp_token,FInvoice,FStartDate,FEndDate) {

  sql=paste0("exec rds_proc_vm_SalInvoice_sum_view  '",FInvoice,"','",FStartDate,"','",FEndDate,"'  ")

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
#' SalInvoice_upload()
SalInvoice_upload<- function(erp_token) {

  sql=paste0("
exec rds_proc_vm_SalInvoice_upload ")

  res=tsda::sql_update2(token = erp_token,sql_str = sql)
  return(res)
}


#' 计算毛利表
#'
#' @param token

#' @param erp_token
#'
#' @param FDate
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' SalInvoice_Compute()
SalInvoice_Compute<- function(erp_token,FDate) {

  sql=paste0("exec rds_proc_vm_SalInvoice_Compute  '",FDate,"' ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}


