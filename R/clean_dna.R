
#' Clean DNA
#' clean_dna function removes "N" nucleotides from raw DNA sequence in FASTA format and deletes new lines. 
#' 
#' @param raw_seq Raw sequence of DNA in fasta format. 
#'
#' @return dna_seq
#'
#' @examples No examples available.
#' 
clean_dna <- function(raw_seq){
  clean_seq <- sample(c("A", "T", "G", "C"), size = raw_seq, replace = TRUE)
  dna_seq <- paste0(clean_seq, collapse = "")
  return(dna_seq)
}

