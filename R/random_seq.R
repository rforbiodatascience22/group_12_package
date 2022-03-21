#' Create a random sequence of length n
#'
#' @param n
#'
#' @return random_sequence
#' @export
#'
#' @examples random_sequence(10) # get random dna sequence of length 10
random_seq <- function(n){
  nucleotides <- sample(c("A", "T", "G", "C"), size = n, replace = TRUE)
  random_sequence <- paste0(nucleotides, collapse = "")
  return(random_sequence)
}
