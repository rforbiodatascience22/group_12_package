#' Plot amino acid abundance
#'
#' @param aa_seq amino acid sequence as a string
#' @importFrom magrittr %>%
#' @export
#'
#' @examples plot_aa("YTLAYL")
plot_aa <- function(aa_seq){
  unique_aa <- aa_seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = aa_seq, pattern =  amino_acid)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["aa_seq"]] <- rownames(counts)

  plot1 <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = unique_aa, y = Counts, fill = unique_aa)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot1)
}

