#' Translation function
#'
#' @param RNA_seq mRNA sequence in codons
#'
#' @return Returns the amino acid sequence for their three letter codes
#' @export
#'
#' @examples translation("AUGCUA")
translation <- function(RNA_seq){
  protein_seq <- paste0(codon_table[RNA_seq], collapse = "")
  return(protein_seq)
}
