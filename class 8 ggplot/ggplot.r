library(ggplot2)
ggplot(data = mtcars)
ggplot(aes(x=mpg,y=hp))
pl<-ggplot(data = mtcars,aes(x=mpg,y=hp), ) + geom_point()
pl2<-pl + facet_grid(cyl ~ .) + stat_smooth()
pl3<-pl2 + coord_cartesian(xlim = c(15,25))+xlab("MILES")
pl3
t
 
#######

install.packages("ggplot2movies")
library(ggplot2)
library(ggplot2movies)
#use movie dataset
df <- movies[sample(nrow(movies), 1000), ]
head(df)
#qplot
qplot(rating, data = df, geom = 'histogram', binwidth=0.1, alpha =
        0.8)
#ggplot (data, aesthetics)
pl <- ggplot(df, aes(x=rating))
#Adding histogram geometry
pl + geom_histogram()
#Adding color
pl <- ggplot(df, aes(x=rating))
pl + geom_histogram(binwidth = 0.1, color = 'red', fill = 'pink')
#Alpha
#Adding color
pl <- ggplot(df, aes(x=rating))
pl + geom_histogram(binwidth = 0.1, color = 'red', fill = 'pink',
                    alpha = 0.4)
#Adding labels
pl <- ggplot(df, aes(x=rating))
pl + geom_histogram(binwidth = 0.1, color='red', fill='pink') +
  xlab('Movie Ratings') + ylab('Occurrences') + ggtitle('Movie
Ratings')
#Change transperancy (alpha)
pl <- ggplot(df, aes(x=rating))
pl + geom_histogram(binwidth = 0.1, fill = 'blue', alpha = 0.4) +
  xlab('Movie Ratings') + ylab('Occurrences')

#Adding labels
pl <- ggplot(df,aes(x=rating))
pl + geom_histogram(binwidth=0.1,aes(fill=..count..)) + xlab('Movie
Ratings')+ ylab('Occurences')
