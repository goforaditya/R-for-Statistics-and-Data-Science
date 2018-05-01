# Mice Dataset
# Q1
setwd("/media/aditya/APPS/MS BDA I SEM/Computing For Data Science/R/class 13 Mice Data")
df<-read.csv('femaleMiceWeights (1).csv', stringsAsFactors = F)
head(df)
bodyweight<-df$Bodyweight
bodyweight

# Q2
df[12,2]

# Q3
weight<-df$Bodyweight
weight[11]

# Q4
length(bodyweight)

# Q5
3:7
seq(3,7)
df[df$Diet=="hf",]
mean(df$Bodyweight[df$Diet=="hf"])

# Q6
set.seed(1)
#?sample
num <- sample(13:24,size = 1)
df[num,]

# Q7
msleep<-read.csv("msleep_ggplot2.csv")
class(msleep)
head(msleep)

# Q8
library(dplyr)
prim <- msleep %>% filter(order == "Primates")
prim

# Q9
class(prim)
#OR
class(subset(msleep, subset = order == "Primates"))

# Q10
select(prim,order)tot_sleep <- msleep %>% filter(order == "Primates") %>% select(sleep_total)

# Q11
mean(unlist(tot_sleep))

# Q12
msleep%>%filter(order == "Primates") %>% select(sleep_total) %>% summarise(avg_sleep_pri = mean(sleep_total))
#OR
summarise(tot_sleep, avg_sleep_primate = mean(sleep_total))
