#!/usr/bin/env R

if (!requireNamespace("devtools", quietly = TRUE))
    install.packages("devtools")
library(devtools)
install_github("genomicsclass/tissuesGeneExpression")

library(tissuesGeneExpression)
data(tissuesGeneExpression)
head(e)
head(tissue)

# Distance Exercises #1
table(tissue)

# Distance Exercises #2
dist(t(e[,c(3,45)]))

# Distance Exercises #3
dist(e[c("210486_at", "200805_at") ,])

# Distance Exercises #4
nrow(e)**2

# Distance Exercises #5
d = dist(t(e))
length(d)

# Distance Exercises #6
# The third option is TRUE
ncol(e)*(ncol(e)-1)/2
