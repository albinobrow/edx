#!/usr/bin/env R

# Important note about R versions: This problem set, as well as many problem sets throughout the series, 
# use R to generate random samples. Make sure that you are using R version 3.6 or later. (version 3.6 is recommended)
# The behavior of the set.seed() function is different in earlier versions of R, 
# and you will therefore get different answers that are graded as incorrect.


if (!requireNamespace("downloader", quietly = TRUE))
    install.packages("downloader")

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleMiceWeights.csv"
filename <- "femaleMiceWeights.csv" 
download(url, destfile=filename) # newfile is going to be downloaded at the current working directory.

# Getting Started Exercises #1
dat <- read.csv("femaleMiceWeights.csv")
head(dat)   # inspect first 6 rows across all columns
names(dat)[2]

# Getting Started Exercises #2
dat[12,2]

# Getting Started Exercises #3
weights <- dat$Bodyweight
weights[11]

# Getting Started Exercises #4
weights <- dat$Bodyweight
length(weights)

# Getting Started Exercises #5
head(dat) 
weights <- dat$Bodyweight
mean(weights[13:24])

# Getting Started Exercises #6
set.seed(1)
i <- sample(13:24, 1)
dat$Bodyweight[i]
