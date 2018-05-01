# Built in dataframes in R
head(mtcars,10)
tail(mtcars,3) # default 6 rows
str(mtcars)
summary(mtcars)

# Your own dataframes
# dataframes allow mixed datatye columns unlike matrices

days<-c("Mon","Tue","Wed","Thu","Fri")
temp<-c(22,21,23,24.5,25)
rain<-c(T,T,F,F,T)
df<-data.frame(days,temp,rain)
df
str(df)
summary(df)

# Pulling out individual rows and columns

df[1,]
df[,1]

df[1:3,'temp']
df[1:3,c('days','temp')]
df$temp # returns a vector
df[,'temp'] # returns dataframe

# Pulling out using subset with conditions

subset(df, subset = rain == T)
subset(df, subset = temp>21)
