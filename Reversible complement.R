reverse_complement <- function(dna_sequence) {
  dna_sequence <- toupper(dna_sequence)
  complement <- chartr("ATGC", "TACG", dna_sequence)
  reverse_complement <- paste(rev(strsplit(complement, "")[[1]]), collapse = "")
  return(reverse_complement)
}


# Test reverse complement
print(reverse_complement("ATGCGTACG"))
