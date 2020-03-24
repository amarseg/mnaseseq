library(tidyverse)

gene_list <- 'clusters_methyl.bed'
genome_bed <- '../genome_bed.bed.txt'

bed <- read_tsv(genome_bed, col_names = FALSE) 

clusters <- read_tsv(gene_list, col_names = FALSE) %>%
  filter(X7 == 'cluster 2')

cl_genome_bed <- bed %>%
  filter(X4 %in% clusclusters) 
  
write_tsv(bed,'clusters_bed.bed', col_names = FALSE)
write_tsv(cl_genome_bed,'only_methyl.bed')
