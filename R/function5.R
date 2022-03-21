#' Description
#'
#' @param n
#'
#' @return name_me2
#' @export
#'
#' @examples
plot_aa <- function(protein_seq){
  unique_aa <- protein_seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(unique_aa, function(name_me4) stringr::str_count(string = protein_seq, pattern =  name_me4)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["ptr_seq"]] <- rownames(counts)

  name_me4 <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = ptr_seq, y = counts, fill = ptr_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(name_me4)
}
