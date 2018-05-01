# 1
x=1
if (x == 1){
  print("Hello")
}

# 2

num=22
if (num%%2 ==0){
  print(paste(num," is even"))
} else {
  print(paste(num," is odd"))
}

# 3

mat <- matrix(1:9, nrow = 3)
flag<-is.matrix(mat)

if (flag == T) {
  print("is a MATRIX !!!")
} else {
  print("is NOT a MATRIX !!!")
}

# 4

vec <- c(5,1,44)
if (vec[1] > vec[2] & vec[1] > vec[3]){
    if(vec[2] > vec[3]){
      ord<-c(vec[1],vec[2],vec[3])
    } else {
      ord<-c(vec[1],vec[3],vec[2])
    }
} else if (vec[2] > vec[1] & vec[2] > vec[3]) {
    if(vec[1] > vec[3]){
      ord<-c(vec[2],vec[1],vec[3])
    } else {
      ord<-c(vec[2],vec[3],vec[1])
    }
} else if(vec[3] > vec[1] & vec[3] > vec[2]){
    if(vec[2] > vec[1]){
      ord<-c(vec[3],vec[2],vec[1])
    } else {
      ord<-c(vec[3],vec[1],vec[2])
    }
}
print(paste(ord[1]," > ",ord[2]," > ",ord[3]))
ord
# incomplete
   
# 5
vec<-c(1,6,4)

if (vec[3]>vec[1] & vec[3]>vec[2]){
  print(vec[3])
} else if (vec[2]>vec[1] & vec[2]>vec[3]){
  print(vec[2])
} else {
  print(vec[1])
}

