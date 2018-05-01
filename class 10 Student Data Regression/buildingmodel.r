# Genera Form Linear Regression
# model <- lm(y ~ x1 + x2, data)
# Use all deatures in data
# model <- lm(y ~. , data)

# Splitting Training and tesing data
library(ggplot2)
library(ggthemes)
library(dplyr)
#df <- read.csv('/media/aditya/APPS/MS BDA I SEM/Computing For Data Science/R/class 10 Student Data Regression/student-mat.csv',sep = ';')
setwd("D:\\MS BDA I SEM\\Computing For Data Science\\R\\class 10 Student Data Regression")
df <- read.csv('student-mat.csv',sep = ';')
library(caTools)
set.seed(101)

# Actual Splitting
sample <- sample.split(df$age, SplitRatio = 0.70)
train = subset(df, sample == T)
test = subset(df, sample == F)
model <- lm(G3 ~ .,train)
summary(model)

# Visualize Model

res <- residuals(model)

# Convert to DataFrame for ggplot

res <- as.data.frame(res)
head(res)
length(res$res)
ggplot(res,aes(res))+geom_histogram(fill = 'blue',alpha = 0.5)
plot(model)

#Predictions

G3.predictions <- predict(model,test)
results<-cbind(G3.predictions,test$G3)
colnames(results)<-c('pred','real')
results<-as.data.frame(results)

# Dealing with negative predictions
to_zero <- function(x){
  if (x<0){
    return(0);
  }else{
    return(x);
  }
}

results$pred <- sapply(results$pred,to_zero)
mse<-mean((results$pred-results$real)^2)
mse

SSE = sum((results$pred-results$real)^2)
SST = sum((mean(df$G3)-results$real)^2)

R2 = 1-SSE/SST
R2

ggplot(res,aes(res)) + geom_histogram(fill='blue',alpha=0.5)
