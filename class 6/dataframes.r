# Lab Excercise 17 Aug 2017 CDS
# 1
names<-c('Sam',"Frank",'Amy')
age<-c(22,25,26)
weight<-c(150,165,120)
sex<-c('M','M','F')

df1<-data.frame(age,weight,sex)
row.names(df1)<-names
df1

# 2
is.data.frame(mtcars)

# 3
mat<-matrix(1:25, nrow = 5, byrow = T)
df2<-as.data.frame(mat)
df2

# 4
df<-mtcars
df

# 5
head(df)

# 6
mean(mtcars[,'mpg'])
mean(mtcars$mpg)
#class(mtcars$mpg)
#class(mtcars[,'mpg'])
