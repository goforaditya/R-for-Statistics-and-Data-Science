v<-c(1:10)
# Create a matrix
m1<-matrix(v)
m1

# 2 dimensional
m2<-matrix(v,byrow = T,nrow = 2)
m2
m3<-matrix(v,byrow = F,nrow = 2)
m3
# Combining Matrices
goog<-c(450,451,452,445,468)
msft<-c(230,231,232,233,220)

stocks<-c(goog,msft)
stocks

stocks.matrix<-matrix(stocks,byrow = T,nrow = 2)
stocks.matrix

# Naming of matrix rows and columns
days<-c("Mon","Tue","Wed","Thu","Fri")
stocks.names<-c('GOOG','MSFT')

colnames(stocks.matrix)<-days
rownames(stocks.matrix)<-stocks.names

stocks.matrix
#or
print(stocks.matrix)

FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stocks.matrix,FB)
tech.stocks

avg <- rowMeans(tech.stocks)
tech.stocks<-cbind(tech.stocks,avg)
tech.stocks
