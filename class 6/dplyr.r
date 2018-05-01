library('dplyr')
df<-mtcars
str(df)
summary(df)
dim(df)

summarise(group_by(df,cyl),avghp = mean(hp,na.rm = T))
count(df,hp)

