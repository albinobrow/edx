#!/usr/bin/env R


n = 1000
y = rbinom(n,1,0.25)
##proportion of ones Pr(Y)
sum(y==1)/length(y)
##expectaion of Y
mean(y)


n = 10000
set.seed(1)
men = rnorm(n,176,7) #height in centimeters
women = rnorm(n,162,7) #height in centimeters
y = c(rep(0,n),rep(1,n))
x = round(c(men,women))
##mix it up
ind = sample(seq(along=y))
y = y[ind]
x = x[ind]

# Conditional Expectation Exercises #1
mean(y[x==176]) # The same row index of x and y represent the same person.

# Conditional Expectation Exercises #2
xs = seq(160,178)
pr =sapply(xs,function(x0) mean(y[x==x0]))
plot(xs,pr)
abline(h=0.5)
abline(v=168)
