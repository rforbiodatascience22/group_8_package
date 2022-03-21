tforu <- function(seq){
  rnaseq <- gsub("T", "U", seq)
  return(rnaseq)
  