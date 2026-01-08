args <- commandArgs(trailingOnly = TRUE)

a <- as.numeric(args[1])
b <- as.numeric(args[2])

result <- a * b
cat(result)
