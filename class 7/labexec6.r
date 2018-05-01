# DPLYR and TIDYR exercises
str(mtcars)
library(dplyr)

#1
filter(mtcars,mpg>20,cyl==6)

#2
arrange(mtcars,cyl,desc(wt))

#3
select(mtcars,mpg,hp)

#4
distinct(select(mtcars,gear))

#5
mt1<-mutate(mtcars, Performance = hp/wt)
head(mt1)

#6
any(is.na(mtcars$mpg))
summarise(mtcars, avg.value = mean(mtcars$mpg, rm.na = T))
N

