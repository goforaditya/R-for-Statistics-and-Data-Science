######### NORMAL DISTRIBUTION ###########
library(ggplot2)
setwd("/media/aditya/APPS/MS BDA I SEM/Computing For Data Science/R/class 14 gapminder lab")
x<-unlist(read.csv("femaleControlsPopulation.csv"))
x
# 1000 of 5
n <- 1000
set.seed(1)
means<-vector("numeric",n)
for(i in 1:n){
  means[i]<-mean(sample(x,5))
}
means
ggplot(data = as.data.frame(means),aes(x = means)) + geom_histogram(color = 'black', fill = '#2196F3') + stat_function(fun = dnorm, args = list(mean = mean(x), sd = sd(x)),color = '#FFEB3B')

# 1000 of 50
n<-1000
set.seed(1)
meanz<-vector("numeric",n)
for(i in 1:n){
  meanz[i]<-mean(sample(x,50))
}
meanz

#1

hist(means,probability = T)
curve(dnorm(x, 23.9, 0.43), add = T)

hist(meanz,probability = T)
curve(dnorm(x, 23.9, 0.43), add = T)

#2
length(meanz[meanz <= 25 & meanz >= 23])/length(meanz)
#OR
Fn <- ecdf(meanz)
Fn(25)-Fn(23)

################### USING GGPLOT #######################
library(ggplot2)
library(data.table)
setwd("/media/aditya/APPS/MS BDA I SEM/Computing For Data Science/R/class 14 gapminder lab")
x<-fread("femaleControlsPopulation.csv")
head(x)
x$Bodyweight
#1
x<-unlist(x)
ggplot(as.data.frame(x),aes(x = x)) + geom_histogram(color = 'black', fill = '#2196F3') + stat_function(fun = dnorm,args = list(mean = mean(x), sd = sd(x)),color = '#FFEB3B')
mean(x)
sd(x)
