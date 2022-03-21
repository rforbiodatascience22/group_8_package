<<<<<<< HEAD
usethis::use_r("tforu")
=======
?usethis::use_r("tforu")


>>>>>>> 640d530f8ab259db70f16c3d91059eecd89952f8
#' DNA T to U conversion
#'
#' @param dnaseq
#'
#' @return rnaseq
#' @export
#'
#' @examples
tforu <- function(dnaseq){
  rnaseq <- gsub("T", "U", dnaseq)
  return(rnaseq)
}
<<<<<<< HEAD
?tforu


=======
>>>>>>> 640d530f8ab259db70f16c3d91059eecd89952f8
