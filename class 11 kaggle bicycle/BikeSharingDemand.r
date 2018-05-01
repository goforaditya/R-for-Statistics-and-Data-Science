library(data.table)
library(ggplot2)
setwd('/media/aditya/APPS/MS BDA I SEM/Computing For Data Science/R/class 11 kaggle bicycle')
# 1
bike <- fread('train.csv')

# 2
head(bike)

# 3 we are trying to predict the demand in the last ten days of any particular month

# Exploratory Data Analysiss
# 4
ggplot(bike,aes(temp,count))+geom_point(aes(color=temp), alpha = 0.2)

# 5
bike$datetime <- as.POSIXct(bike$datetime)
ggplot(bike,aes(datetime,count)) + geom_point(aes(color=temp),alpha = 1)+scale_color_gradient(low = "#2196F3",high = "#FFEB3B"):

# 6
cor(bike$temp,bike$count)
# [1] 0.3944536

#7
bike$season<-factor(bike$season)
ggplot(bike,aes(season,count))+geom_boxplot(aes(group = season))

#8
bike$hour<-sapply(bike$datetime,function(x){
  return(format(x,"%H"))
})

#9
ggplot(bike[workingday==1],aes(hour,count))+geom_point(aes(color=temp))+scale_color_gradient(high='red',low='blue')
# using jitter
ggplot(bike[workingday==1],aes(hour,count))+geom_point(aes(color=temp),position = position_jitter(w=1,h=0))+scale_color_gradient(high='red',low='green')

#10
ggplot(bike[workingday==0],aes(hour,count))+geom_point(aes(color=temp),position = position_jitter(w=1,h=0))+scale_color_gradient(high='red',low='green')

#Builiding The Model
#11
model <- lm(count ~ temp,bike)

#12
summary(model)
plot(model)

# y = mx + c

#13
9.17058*25+6.0462
predict(model,data.frame(temp=25))

#14
bike$hour<-sapply(bike$hour,as.numeric)

#15
str(bike)
mod<-lm(count ~ . -atemp -casual -registered,bike)

#16
summary(mod)

#17 the model did not perform well
# Using a linear model over this dataset would defenitly
# not give good predictions keeping in mind the correlation coefficients of other 
# attribute values with count. Hence linear model is not a good predictor

#18
tst<-fread("test.csv")
tst
predict(tst,mod)
