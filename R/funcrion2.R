#' dna sequence to rna sequence
#'
#' Substitutes "T" with "U"
#'
#' @format
#'
"dna_to_rna"

dna_to_rna <- function(DNA_seq){
  RNA_seq <- gsub("T", "U", DNA_seq)
  return(RNA_seq)
}

