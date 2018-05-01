library(UsingR)
library(dplyr)
library(ggplot2)

#Read Mouse data
df <- read.csv("femaleMiceWeights (1).csv")
head(df)
tail(df)
str(df)

#This data was produced by ordering 24 mice from The Jackson Lab 
#and randomly assigning either chow or high fat (hf) diet. 

control <- df%>%filter(Diet=="chow") %>% select(Bodyweight) %>% unlist
treatment <- df%>%filter(Diet=="hf") %>% select(Bodyweight) %>% unlist

mean(control)
mean(treatment)

#Difference
obsdiff <- mean(treatment) - mean(control)
obsdiff


#Read control population
population <- read.csv("femaleControlsPopulation.csv")
population <- unlist(population)
population

control <- sample(population, 12)
mean(control)

#Sampling 12 mice
control <- sample(population, 12)
mean(control)



#Null Hypothesis

##12 control mice
control <- sample(population,12)
##another 12 control mice that we act as if they were not
treatment <- sample(population,12)
print(mean(treatment) - mean(control))



n <- 10000
null <- vector("numeric",n)
for (i in 1:n) {
  control <- sample(population,12)
  treatment <- sample(population,12)
  null[i] <- mean(treatment) - mean(control)
}


mean(null >= obsdiff)
ggplot(data=as.data.frame(null),aes(null)) + geom_histogram(
  col = "red",fill = "green", alpha = 0.2) 



## Distributions
x <- father.son$fheight

round(sample(x, 10), 1)


#Cumulative distribution function
smallest <- floor(min(x))
largest <- ceiling(max(x))
values <- seq(smallest, largest)
heightecdf <- ecdf(x)
plot(values, heightecdf(values), type="l",
     xlab="a (Height in inches)",ylab="Pr(x <= a)")

#Histogram
bins <- seq(smallest, largest)
ggplot(data=as.data.frame(x),aes(x)) + geom_histogram(
  breaks=bins, 
  col = "red",fill = "green", alpha = 0.2) +
  labs(title = "Adult men heights") + labs(x="Height (in inches)")
