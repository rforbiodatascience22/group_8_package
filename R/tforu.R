
usethis::use_r("tforu")


#' DNA T to U conversion
#'
#' @param dnaseq
#'
#' @return rnaseq
#' @export
#'
#' @examples tforu("ACGTCATACCATCACG")
tforu <- function(dnaseq){
  rnaseq <- gsub("T", "U", dnaseq)
  return(rnaseq)
}

?tforu



