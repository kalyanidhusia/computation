#session 4: Control structure: if statements and loops
#created: 2019.01.23
#Author: Kalyani Dhusia

a <-5
b <- 8

if (a>b) {
  paste("a is less than b: ", a, " ", b)
} else{
  paste("a is greater than b: ", a, " ", b)
}

seq_motif <- "AGATCAG"
seq_motif_RC <- "TATATAA"
gene <- "AGCGTGTGAAGATCAGAGTTTCTGATCT"
gene2 <- "GTACTGAGCGCGTGACGTATATATATAA"

if (grepl(pattern = seq_motif, x=gene2)) {
  cat("Sequence motif was found.")
} else {
  cat("Sequence motif was not found.")
  if (grepl(pattern = seq_motif_RC, x=gene2)){
    cat("Sequence motif reverse complement was found.")
  }
}

reference_seq <- "AAAAAAAAAAAAAAAAA"
exp_seq <- "AAAAAAAAAAGAAAAAA"
snp_position <- 11
reference_nucleotide <- substr(reference_seq, 11, 11)
exp_nucleotide <- substr(exp_seq, 11, 11)
kind_of_snp <- paste(reference_nucleotide, exp_nucleotide)
if (reference_nucleotide == "A") {
  switch(EXPR = kind_of_snp, "A A"="no SNP", "A C"="transversion", "A G"="transition", "A T"="transversion")
}

exp_data <- c(55, 10, 90, 45, 1000)
for(index in 1:length(exp_data)){
  cat(index, exp_data[index], "\n")
}

gene_names <- c("MYC", "SRC", "RGA", "YCAZ", "GAMM")
for(gene in gene_names) {
  cat(gene, "\n")
}
  

reference_nucleotides <- c("A", "C", "G", "T")
exp_nucleotides <- c("A", "C", "G", "T")
for(ref in reference_nucleotides) {
  for(exp in exp_nucleotides) {
    cat(ref, exp, if(ref != exp){"SNP"}else{"no SNP"}, "\n")
  }
}

index <- 5
while(index < 100) {
  cat(index, "\n")
  index <- index + 3
}


#Using three letter codes to gie output as 1letter code for amino acid

codon_to_aminoacid <- function(codon3ltr){
  return(switch(EXPR = codon3ltr, "Gly=G", "Ala=A", "Leu=L", "Meth=M", "Phen=F", "Try=W", "Lys=K", "Glu=Q", "Glutamic_acid=E", "Ser=S"))
}

codon <- codon_to_aminoacid("Gly")
codon


