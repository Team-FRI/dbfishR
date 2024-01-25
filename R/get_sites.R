#' @title get_sites
#' 
#' @description xxx
#' 
#' @importFrom RODBC odbcConnectAccess2007
#'
#' @param ... 
#'
#' @return xxx
#'
get_sites <-
  function(...) {
    file_loc <- fetch_dbfishR(...)
    channel <- RODBC::odbcConnectAccess2007(file_loc, readOnly = T)
    sqlFetch
    
  }