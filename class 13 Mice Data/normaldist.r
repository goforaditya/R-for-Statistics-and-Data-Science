setwd("/media/aditya/APPS/MS BDA I SEM/Computing For Data Science/R/II IA Prac/")
dat <- unlist(read.csv("femaleControlsPopulation.csv"))
head(dat)

set.seed(1)
n<-1000
averages5<-vector("numeric",n)
for(i in 1:n){
  sample<-sample(dat,5)
  averages5[i]<-mean(sample)
}
library(rafalib)
mypar(1,2)
hist(averages5)

set.seed(1)
n<-1000
averages50<-vector("numeric",n)
for(i in 1:n){
  sample<-sample(dat,50)
  averages50[i]<-mean(sample)
}
hist(averages50)

#2

pnorm(25,mean(averages50),sd(averages50))-pnorm(23,mean(averages50),sd(averages50))
pnorm(25,23.9,0.43) - pnorm(23,23.9,0.43)
