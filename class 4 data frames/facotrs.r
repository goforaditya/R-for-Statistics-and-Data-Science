#Factors
# Nominal no specific order
animals<-c('d','c','d','c','c')
factor(animals)

# Ordinal e.g. Temprature
ord.cat<-c('cold','med','hot')
temp<-c('cold','med','hot','hot','hot','cold','med')
fact.temp<-factor(temp,ordered = T,levels = ord.cat)
fact.temp
summary(fact.temp)