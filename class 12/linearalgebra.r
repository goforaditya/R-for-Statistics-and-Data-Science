# Linear Algebra
install.packages("matlib")
library(matlib)

browseVignettes("matlib")

# we have 2 eqs with 2 unknowns
# Ax = b
# A is matrix , x is unknowns and b are constants
# for example
# x - y = 2
# 2x + 2y = 1

A <- matrix(c(1,-1,2,2),byrow=T,nrows = 2)
A <- matrix(c(1,-1,2,2),2,2)
b <- c(2,1)

showEqn(A,b)
# gives
# x1 - x2 = 2
# 2x1+ 2x2 = 1
plotEqn(A,b)
solve(A,b)


# We can also have three consistent eqns
# suppose
# x - y = 2
# 2x + 2y = 1
# 3x + y = 3
# so three eqns

A <- matrix(c(1,2,3,-1,2,-1),3,2)
b<-c(2,1,3)
showEqn(A,b)
plotEqn(A,b)

# lets look at three eqns with three unknowns
# lets go for three unknowns
# 2x + y - z = 8
# -3x - y  + 2z = -11
# -2x + y + 2z = -3

A<-matrix(c(2,-3,-2,1,-1,1,-1,2,2),3,3)
b<-c(8,-11,-3)
colnames(A) <- paste0("x",1:3)
showEqn(A,b)
plotEqn(A,b)
solve(A,b)
plotEqn3d(A,b,xlim = c(0,4),ylim = c(0,4))

# Checkout Determinants
A <- matrix(c(3,1,2,4), nrow = 2, byrow = T)
A
det(A)
#transpose
t(A)

#Rank
R(A)

#Eigenvalues
A <- matrix(c(13,-4,2,-4,11,-2,2,-2,8),3,3,byrow = T)
A
ev<-eigen(A)
ev

tr(A)
tr(A) == sum(ev$values)
