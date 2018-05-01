# Ques 1
#install.packages("gapminder")

# Ques 2
library(gapminder)
data(gapminder)

# Ques 3
head(gapminder)

# Ques 4
str(gapminder)
df1 <- gapminder[gapminder$year == 1952,]
x<-df1$lifeExp
hist(x)


# Ques 5
Fn<-ecdf(x)
Fn(40)
#OR
mean(x <= 40)

# Ques 6
Fn(60) - Fn(40)
#OR
mean(x<=60) - mean(x<=40)

# Ques 7
Fn<-ecdf(x)
plot(Fn)

# Ques 8

#a)
prop <- function(q){
  mean(x<=q)
}

#b)
prop(40)

#c)
Qs <- seq(from = min(x), to = max(x), length = 20)

#d)
props <- sapply(Qs, prop)

#e)
props
plot(Qs,props,type = "l", xlab = "a (Life Expectency)", ylab = "Pr( x<=a )")

#f)
props <- sapply(Qs, function(q){ mean(x<=q) })

#g)
identical(Fn,props)
plot(props)
plot(Fn)
