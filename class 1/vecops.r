# Vector operations
v1<-c(1,2,3)
v2<-c(5,6,7)
# element by element operation
v1+v2
v1-v2
v1*v2
v1/v2

# Built In functions for vectors

sum(v1)
mean(v1)
sd(v1)
max(v1)
min(v1)
prod(v1)

# Indexing and slicing
# in R first array element has index 1 and so on
v1<-c(100,200,300)
v2<-c('a','b','c')
v1[1]
v2[2]

# How to pull out multiple values
v2[c(1,2)]# Input vector of indices
v2[c(1,3)]

# Vector of natural nos
v3<-c(1:10)
v3[2:4]
v3[7:2]
v3[7:10]
