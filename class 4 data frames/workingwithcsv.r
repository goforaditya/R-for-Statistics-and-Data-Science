# import / export csv
d2 <- read.csv(file = 'toys.csv', header = T)
d2
d3<-data.frame(Names = "Skates",Price = 134.00)
d2<-rbind(d2,d3)
write.csv(d2, file = "ant.csv")
d2
