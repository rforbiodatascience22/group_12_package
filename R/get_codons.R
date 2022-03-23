#' Get codons
#'
#' @param seq
#' @param start
#'
#' @return Returns the mRNA codons
#' @export
#'
#' @examples get_codons("ACT")
get_codons <- function(seq, start = 1){
  char_num <- nchar(seq)
  codons <- substring(seq,
                      first = seq(from = start, to = char_num-3+1, by = 3),
                      last = seq(from = 3+start-1, to = char_num, by = 3))
  return(codons)
}
