#' prot_synthesis
#'
#' @param codon_list
#'
#' @return prot
#' @export
#'
#' @examples prot_synthesis(codons)
prot_synthesis <- function(codon_list){
  prot <- paste0(codons[codon_list], collapse = "")
  return(prot)
}
