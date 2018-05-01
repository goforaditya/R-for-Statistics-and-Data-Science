days<-c("Mon","Tue","Wed","Thu","Fri")
temp<-c(22,21,23,24.5,25)
rain<-c(T,T,F,F,T)
df<-data.frame(days,temp,rain)

sorted.temp<-order(df['temp'])
sorted.temp # Gives Index Nos
df[sorted.temp,] 

desc.temp<-order(-df['temp']) # -ve sign for descending order
df[desc.temp,]

