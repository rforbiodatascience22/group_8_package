#' @return rnaseq
#' @param name_me2
#'
#' @examples function_5("ERFDTGVCWQAFSET")
#' @importFrom magrittr %>%
function_5 <- function(prot_seq){
  res_list <- prot_seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(res_list, function(name_me4) stringr::str_count(string = prot_seq, pattern =  name_me4)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Name_me2"]] <- rownames(counts)

  res_freq_plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = Name_me2, y = Counts, fill = Name_me2)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(res_freq_plot)
}
