library(ggplot2)
library(data.table)

#1
#df<-read.csv(file = "Economist_Assignment_Data.csv")
# have to use fread
df<-fread("Economist_Assignment_Data.csv")

#2
head(df)

#3
pl <- ggplot(df, aes(x = CPI, y = HDI))
pl+geom_point()

#4
#df<-read.csv(file = "Economist_Assignment_Data.csv")
pl <- ggplot(df, aes(x = CPI, y = HDI))
pl+geom_point(aes(fill = factor(Region)))

#5
pl +  geom_smooth(aes(group=1))

#6
pl + geom_smooth(aes(group=1), method = lm, formula = y ~ log(x), se = F, color='red')

#7
pl2 <- pl + geom_text(aes(label=Country))
pl2

#9
pl4 <- pl2 + theme_bw()
pl4
