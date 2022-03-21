#' Translation
#'
#' Returns the amino acid sequence for their three letter codes
#'
#' @format
#'
#'
#' "translation"

translation <- function(RNA_seq){
  protein_seq <- paste0(codon_table[RNA_seq], collapse = "")
  return(protein_seq)
}
