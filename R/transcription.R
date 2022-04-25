#' Transcription
#'
#' @param DNA_seq provide a DNA sequence as a string object
#'
#' @return Returns the RNA sequence
#' @export
#'
#' @examples dna_to_rna('ATGCATGGA')
transcription <- function(DNA_seq){
  RNA_seq <- gsub("T", "U", DNA_seq)
  return(RNA_seq)
}
