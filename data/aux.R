library('data.table')
library('ggplot2')
library('scales')
library('reshape')
library('grid')

datadir <- "~/Code/thesis/data/"
figuredir <- "~/Code/thesis/figures/"

write.to.file <- function(filename, text) {
  fout <- file(paste0(datadir, filename))
  writeLines(text, fout)
  close(fout)
}

write.to.pdf <- function(filename, g, width, height) {
  pdf(file=paste0(figuredir, filename), width=width, height=height)
  print(g)
  dev.off()
  g
}