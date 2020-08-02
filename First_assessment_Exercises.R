#!/usr/bin/env R

# Important note about R versions: This problem set, as well as many problem sets throughout the series, 
# use R to generate random samples. Make sure that you are using R version 3.6 or later. (version 3.6 is recommended)
# The behavior of the set.seed() function is different in earlier versions of R, 
# and you will therefore get different answers that are graded as incorrect.


if (!requireNamespace("swirl", quietly = TRUE))
    install.packages("swirl")
library(swirl)

# Exercise #1
R.version.string

# Exercise #2
x <- c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23)
mean(x)

# Exercise #3
sum <- 0
for(i in 1:25)
  sum <- sum + i^2
sum

# Exercise #4
class(cars)

# Exercise #5
nrow(cars)

# Exercise #6
names(cars)[2]

# Exercise #7
mean(cars[,2])

# Exercise #8
which(cars[,2]==85)
