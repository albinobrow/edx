#!/usr/bin/env R

# This dataset is built into R and can be loaded with:
data(ChickWeight)

# To begin, take a look at the weights of all observations over time and color the points to represent the Diet:
head(ChickWeight)
plot( ChickWeight$Time, ChickWeight$weight, col=ChickWeight$Diet)

# First, notice that the rows here represent time points rather than individuals. To facilitate the comparison of weights at different time points and across the different chicks, we will reshape the data so that each row is a chick. In R we can do this with the reshape function:
chick = reshape(ChickWeight, idvar=c("Chick","Diet"), timevar="Time",
                direction="wide")
#The meaning of this line is: reshape the data from long to wide, where the columns Chick and Diet are the ID's and the column Time indicates different observations for each ID. Now examine the head of this dataset:
head(chick)

# We also want to remove any chicks that have missing observations at any time points (NA for "not available"). The following line of code identifies these rows and then removes them:
chick = na.omit(chick)

# Mann-Whitney-Wilcoxon Test Exercises #1
x = chick$weight.4[chick$Diet == 1]
y = chick$weight.4[chick$Diet == 4]
t.test(c(x, 200), y)$p.value

# Mann-Whitney-Wilcoxon Test Exercises #2
x = chick$weight.4[chick$Diet == 1]
y = chick$weight.4[chick$Diet == 4]
wilcox.test(c(x, 200), y, exact=FALSE)$p.value

# Mann-Whitney-Wilcoxon Test Exercises #3
t.test(x,y + 10)$statistic - t.test(x,y + 100)$statistic

# Mann-Whitney-Wilcoxon Test Exercises #4
wilcox.test(c(1,2,3),c(4,5,6))$p.value

# Mann-Whitney-Wilcoxon Test Exercises #5
wilcox.test(c(1,2,3),c(400,500,600))$p.value
