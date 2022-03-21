usethis::use_r("tforu")


#' DNA T to U conversion
#'
#' @param dnaseq 
#'
#' @return rnaseq
#' @export
#'
#' @examples No examples available.
tforu <- function(dnaseq){
  rnaseq <- gsub("T", "U", dnaseq)
  return(rnaseq)
}