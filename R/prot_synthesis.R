prot_synthesis <- function(codon_list){
  prot <- paste0(codons[codon_list], collapse = "")
  return(prot)
}