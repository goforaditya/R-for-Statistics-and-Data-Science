avg<-rowMeans(tech.stocks)
mat

# Scalar Operations
mat*2
mat/2
mat^2

mat[mat>15] # Returns vector
mat>15 # Returns matrix of boolean

mat+mat
mat/mat # Element by element
mat*mat # Element by element

mat%*%mat # Actual Matrix Multiplications

stocks.matrix # load from matrices.r

# Summation of rows and columns
colSums(stocks.matrix)
rowSums(stocks.matrix)

colMeans(stocks.matrix)
rowMeans(stocks.matrix)

# Adding Another Row (ROW BIND)
FB<-c(111,112,113,120,145) # name FB to row auto assigned
tech.stocks<-rbind(stocks.matrix,FB)

# Adding Cloumn
avg<-rowMeans(tech.stocks)
tech.stocks<-cbind(tech.stocks,avg)
tech.stocks

# Pull out rows/colums mat[row,col]
tech.stocks[,1]
stocks.matrix[1,]
