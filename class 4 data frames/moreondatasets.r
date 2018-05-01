# to work on dataset we should have an idea of the type of values it holds
str(mtcars)
colnames(mtcars)

mtcars$mpg
mtcars[,'mpg']
mtcars[,1]
mtcars[['mpg']]
head(mtcars[c('mpg','cyl')])

# Misc topics (Commands)
df2<-data.frame(col1=2000,col2='new')
df.new<-rbind(df,df2)
df.new

df[-2,] #show all rows except second

mtcars[mtcars$mpg>20,]
mtcars[mtcars$mpg>20 & mtcars$cyl == 6]
mtcars[mtcars$mpg>20 & mtcars$cyl == 6,c('mpg','cyl','hp')]

# NA stands for missing values
dd<-data.frame()
is.na(dd)
any(is.na(df))
any(is.na(mtcars$mpg))

# Replace Missing Values
df[is.na(df)]<-0 # extreme approach
mtcars$mpg[is.na[mtcars$mpg]]<-mean(mtcars$mpg) # keeps the avg same less extreme