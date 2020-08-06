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

# Median, MAD, and Spearman Correlation Exercises #1
mean(c(chick$weight.4, 3000))/mean(chick$weight.4)

# Median, MAD, and Spearman Correlation Exercises #2
median(c(chick$weight.4, 3000))/median(chick$weight.4)

# Median, MAD, and Spearman Correlation Exercises #3
sd(c(chick$weight.4, 3000))/sd(chick$weight.4)

# Median, MAD, and Spearman Correlation Exercises #4
mad(c(chick$weight.4, 3000))/mad(chick$weight.4)

# Median, MAD, and Spearman Correlation Exercises #5
cor(c(chick$weight.4, 3000), c(chick$weight.21,3000))/cor(chick$weight.4, chick$weight.21)
