#!/usr/bin/env Rscript

process <- function (input) {
  output <- tolower(input)
  return(output)
}


f <- file("stdin")
open(f)
while(length(line <- readLines(f, n=1)) > 0) {
  line = process(line)
  write(line, stdout())
}
