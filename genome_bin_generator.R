# if hg38 is of interest

library(BSgenome.Hsapiens.UCSC.hg38)

# tile 1 kb or whatever size you'd like

tiles <- tileGenome(seqlengths = seqlengths(BSgenome.Hsapiens.UCSC.hg38), tilewidth = 1000, cut.last.tile.in.chrom = TRUE)

# write out the bed

rtracklayer::export(tiles, "hg38_1kb_bins.bed")