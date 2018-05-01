# 1
library(ggplot2)
library(plotly)

# 2
df <- mpg
pl<-ggplot(df, aes(hwy))
pl<-pl + geom_histogram()
ggplotly(pl)

# 3
pl<-ggplot(df, aes(manufacturer))
pl<-pl + geom_bar(aes(fill = factor(cyl)))
pl

# 4
head(txhousing)

# 5
pl2 <- ggplot(txhousing, aes(volume,sales)) + geom_point()
pl2
# playing around
pl2 <- ggplot(txhousing, aes(volume,sales)) + geom_point(aes(fill = sales),alpha =0.3)
pl2

# 6

pl2 <- ggplot(txhousing, aes(volume,sales)) + geom_point()
sm<-pl2 + geom_smooth()
sm
