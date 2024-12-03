# File: R/gc_content.R

gc_content = function(dna_sequence) {

  # Validate the input

  if (!all(strsplit(dna_sequence, "")[[1]] %in% c("A", "T", "G", "C"))) {

    stop("Invalid DNA sequence. Only A, T, G, C are allowed.")

  }

  # Calculate GC content

  gc_count = sum(charToRaw(dna_sequence) %in% charToRaw("G")) +

    sum(charToRaw(dna_sequence) %in% charToRaw("C"))

  gc_content = (gc_count / nchar(dna_sequence)) * 100

  return(gc_content)

}

# Test with a valid sequence  (DNA sequence Should be correct)

gc_content("ATGCGTACGTAGCTAGCTAGCTACGATCGTACGATCGTAGCTAGCTAGC")



