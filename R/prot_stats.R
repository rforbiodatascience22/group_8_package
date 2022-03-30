#' @return res_freq_plot
#' @param prot_seq
#'
#' @export
#'
#' @examples prot_stats("ERFDTGVCWQAFSET")
#' @importFrom magrittr %>%
prot_stats <- function(prot_seq){
  res_list <- prot_seq %>%
    stringr::str_remove_all(pattern = "_") %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(res_list, function(sequence) stringr::str_count(string = prot_seq, pattern =  sequence)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["prot_seq"]] <- rownames(counts)

  res_freq_plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = prot_seq, y = Counts, fill = prot_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(res_freq_plot)
}
