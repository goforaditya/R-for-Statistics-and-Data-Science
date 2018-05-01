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
mean(df[,'mpg'])
mean(df$mpg)
#class(mtcars$mpg)
#class(mtcars[,'mpg'])

# 7
df$cyl>6
df[df$cyl>6,]

# 8
df[c('am','gear','carb')]

# 9 
performance <- df$hp / df$wt
df<-cbind(df,performance)
str(df)

# 10
perf <- round(df$performance, digits = 2)
df$performance <- perf

# 11
mpg<-df[ df$hp>100 & df$wt >2.5,'mpg']
mean(mpg)

# 12
df['Hornet Sportabout','mpg']
df[1,2]

mat[[2]]
#[] = always returns object of same class (out of basic object classes), can select more than one element of an object

#[[]] = can extract one element from list or data frame, returned object (out of basic object classes) not necessarily list/dataframe