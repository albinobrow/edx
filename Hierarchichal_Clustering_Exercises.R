#!/usr/bin/env R

if (!requireNamespace("devtools", quietly = TRUE))



set.seed(1)
m = 10000
n = 24
x = matrix(rnorm(m*n),m,n)
colnames(x)=1:n


# Hierarchical Clustering Exercises #1
hc = hclust( dist( t(x)))
plot(hc)


# Hierarchical Clustering Exercises #2
set.seed(1)
m = 10000
n = 24
k = 100
a = c(rep(NA, k))

for ( i in 1:k ){
    x = matrix(rnorm(m*n),m,n)
    hc = hclust( dist( t(x)))
    a[i] = length(unique(cutree(hc,h=143)))
}

plot(table(a))
sd(a)
