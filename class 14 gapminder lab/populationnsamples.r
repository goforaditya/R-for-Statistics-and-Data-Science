################# Population And Samples ####################

library(dplyr)
dat <- read.csv("mice_pheno.csv")
dat <- na.omit(dat)
head(dat)

#1
x <- dat %>% filter(Diet == 'chow', Sex == 'M') %>% select(Bodyweight)
x <- unlist(x)
#head(x)
mx<-mean(x)

#2
sx<-sd(x)

#3
set.seed(1)
X<-sample(x,25)
mX<-mean(X)

#4
y <- dat %>% filter(Sex == 'M', Diet == 'hf') %>% select(Bodyweight)
y <- unlist(y)
my<-mean(y)

#5
sy<-sd(y)

#6
set.seed(1)
Y<-sample(y,25)
mY<-mean(Y)

#7
a<-abs(my - mx)
b<-abs(mY - mX)
abs(a-b)
#8
fx <- dat %>% filter(Diet == 'chow', Sex == 'F') %>% select(Bodyweight)
fx <- unlist(fx)
#head(x)
fmx<-mean(fx)

fsx<-sd(fx)

set.seed(1)
fX<-sample(fx,25)
fmX<-mean(fX)

fy <- dat %>% filter(Sex == 'F', Diet == 'hf') %>% select(Bodyweight)
fy <- unlist(fy)
fmy<-mean(fy)

fsy<-sd(fy)

set.seed(1)
fY<-sample(fy,25)
fmY<-mean(fY)

a1<-abs(fmy - fmx)
b1<-abs(fmY - fmX)
abs(a1-b1)
abs(a-b)
