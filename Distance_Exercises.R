install.packages("devtools")
library(devtools)
install_github("genomicsclass/tissuesGeneExpression")

library(tissuesGeneExpression)
data(tissuesGeneExpression)
head(e)
head(tissue)

table(tissue)

dist(t(e[,c(3,45)]))
