library(tidyverse)
library('rtracklayer')
library(smoother)
file1 <- '../nuc2801_1_PEcenter.wig'
file2 <- '../nuc2801_3_PEcenter.wig'
genome_gtf <- import.gff3('../Schizosaccharomyces_pombe_all_chromosomes.gff3.gz') 

#plot_2dheatmap <- function(file1, file2)
#{
  wig1 <- import.wig(file1) %>%
    unlist()
  wig2 <- import.wig(file2) %>%
    unlist()
#}

overlaps <- mergeByOverlaps(wig1,genome_gtf)
overlaps2 <- mergeByOverlaps(wig2, genome_gtf)

agg_overlaps <- aggregate()

score <- overlaps[,2]
score2 <- overlaps2[,2]
#smooth <- smoother::smth.gaussian(numbersss, sd = 10, window = 30)
all_data <- data_frame(score_1 = score, 
                       score_2 = score2) %>%
  filter(score_1 != 0 | score_2 != 0)

ggplot(all_data, aes(x = score_1, y = score_2)) +
  geom_density_2d()
