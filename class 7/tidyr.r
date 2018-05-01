library('tidyr')
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)



df<-data.frame(comp = comp, year=yr, Qtr1 = q1, Qtr2 = q2, Qtr3 = q3, Qtr4 = q4)
df
gather(df, Quater, Revenue, Qtr1:Qtr4)

stocks<-data.frame(time = as.Date('2009-01-01')+0:9,x=rnorm(10,0,1),y=rnorm(10,0,2),z=rnorm(10,0,4))
stocks
stocks.gather<-stocks%>%gather(stock,price,-time)
stocks.gather

stocks.gather %>% spread(stock,price)

# Seprate and unite
df<-data.frame(x = c(NA, "a.x","b.y","c.z"))
df
df %>% separate(x,c("ABC","XYZ"))

df<-data.frame(x = c(NA, "a_x","b_y","c_z"))
df.sep<-df %>% separate(x,c("ABC","XYZ"),sep="_")

unite(df.sep,new.join.col,ABC,XYZ)
unite(df.sep,new.join.col,ABC,XYZ, sep="---")

