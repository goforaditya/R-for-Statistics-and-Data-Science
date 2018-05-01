# 1)
A<-c(1,2,3)
B<-c(4,5,6)

mat1<-matrix(ncol = 3)

mat1<-rbind(mat1,A)
mat1<-rbind(mat1,B)
mat1

# 2)
mat<-matrix(1:9,byrow = T,nrow = 3)
mat

# 3)
is.matrix(mat)

# 4)
mat2 = matrix(1:25,byrow = T,nrow = 5)
mat2

# 5)
mat2[2,2:3]
mat2[3,2:3]

# 6)
mat2[4,4:5]
mat2[5,4:5]

# 7)
sum(mat2)

# 8)
mat3<-matrix()
mat3<-replicate(4,floor(runif(5, min = 1, max = 20)))
mat3
