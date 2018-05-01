# 1
greetname <- function(name){
  print(paste("Hello ",name))
  print(paste(name," Have a nice day"))
}
g<-greetname("AAA")
g

# 2
greetreturn <- function(name){
  return(paste("Hello ",name))
}
f <- greetreturn("ABC")
f

# 3
productq<-function(a,b){
  return(a*b)
}

# 4
a<-3
b<-c(1,2,3,3,3,5)


checkcontains <- function(a,b = vector()){
  return(any(a==b))
}
checkcontains(a,b)

# 5
a<-3
b<-c(1,2,3,3,3,5)

noofoccurancebs<-function(a,b){
  #return(sum(b==a))
  return(length(b[b==a]))
}
noofoccurances(a,b)

# 6

shipaluminium<-function(kgs){
  # big bars
  bb<-kgs%/%5
  sb<-kgs-bb*5
  bars <- c(bb,sb)
  names(bars)<-c('Big','Small')
  return(bars)
}

# 7

addnotthrees <- function(x,y,z){
  result<-0
  lv <- c(x,y,z)
  lm <- lv[lv%%3 != 0]
  result <- result + sum(lm)
  return(result)
}

# 8 

checkprime <- function(a){
  flagprime<-T
  end <- a/2
  for (i in 2:end){
    print("checking..")
    if(a%%i==0){
      flagprime<-F
      break
    }
  }
  
  return(flagprime)
}