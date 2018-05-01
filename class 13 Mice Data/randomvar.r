setwd("/media/aditya/APPS/MS BDA I SEM/Computing For Data Science/R/class 13 Mice Data")
fconpop<-unlist(read.csv('femaleControlsPopulation.csv', stringsAsFactors = F))
class(fconpop)
head(fconpop)
# Q1
x<-mean(fconpop)
x
# Q2
library(dplyr)
set.seed(1)
fcp<-read.csv('femaleControlsPopulation.csv', stringsAsFactors = F)
sample<-unlist(sample_n(fcp, 5))
abs(mean(fconpop)-mean(sample))

# Q3
library(dplyr)
set.seed(5)
fcp<-read.csv('femaleControlsPopulation.csv', stringsAsFactors = F)
sample<-unlist(sample_n(fcp, 5))
abs(mean(fconpop)-mean(sample))

# Q4
library(dplyr)
fcp<-read.csv('femaleControlsPopulation.csv', stringsAsFactors = F)
v<-c()
set.seed(1)
for(i in 1:1000){

  sample<-unlist(sample_n(fcp, 5))
  v <- append(v,mean(sample))
}
per<-length(v[v>(x+1)])/length(v)*100
print(paste(per,"% of values"))

# Q5
library(dplyr)
fcp<-read.csv('femaleControlsPopulation.csv', stringsAsFactors = F)
v1<-vector("numeric",10000)
set.seed(1)
for(i in 1:10000){
  sample<-unlist(sample_n(fcp, 5))
  v1[i] <- mean(sample)
}
per1<-length(v1[v1>(x+1)])/length(v1)*100
print(paste(per1,"% of values"))

# Q6
library(dplyr)
fcp<-read.csv('femaleControlsPopulation.csv', stringsAsFactors = F)
v2<-vector("numeric",1000)
set.seed(1)
for(i in 1:1000){
  sample<-unlist(sample_n(fcp, 50))
  v2[i] <- mean(sample)
}
per2<-length(v2[v2>(x+1)])/length(v2)*100
print(paste(per2,"% of values"))


# Q7
library(ggplot2)
library(ggthemes)
ggplot(data = as.data.frame(v1),aes(x=v1))+geom_histogram(col = "red", fill = "green",bins = 100) + theme_solarized_2()

ggplot(data = as.data.frame(v2),aes(x=v2))+geom_histogram(col = "red", fill = "green",bins = 100) + theme_solarized_2()

v2 == v
