#  1) What is two to the power of five?
2**5

# 2)
stock.prices<-c(23,27,23,21,34)
stock.prices

# 3)
days<-c("Mon","Tue","Wed","Thu","Fri")
names(stock.prices)<-days
stock.prices

# 4)
mean(stock.prices)

# 5)
over.23<-stock.prices>23
stock.prices
over.23

# 6)
stock.prices[over.23]

# 7)
which.max(stock.prices)
max(stock.prices)