#' Get codons
#'
#' @param DNA_seq provide a DNA sequence as a string object
#'
#' @export
#'
#' @examples dna_to_rna('ATGCATGGA') -> "AUGCAUGGA"
transcription <- function(DNA_seq){
  RNA_seq <- gsub("T", "U", DNA_seq)
  return(RNA_seq)
}
