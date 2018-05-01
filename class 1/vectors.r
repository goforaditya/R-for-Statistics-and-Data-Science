# Working with vectors one dimensional arrayscla
# c() stands for the combine function
nvec<-c(1,2,3,4)
cvec<-c('a','b','c')
svec<-c("Adi","Jag","Sbu")
lvec<-c(T,F,T,F) # dont put T or f in quotes

# Mix it up
# logical with nos

V<-c(T,F,20)

# strings with nos

x<-c("India",10,20)

# try to give names
# Days
days<-c("Mon",'Tue',"Wed","Thu","Fri","Sat")
temp<-c(76,77,78,79,80,81)
# another functions called names
names(temp)<-days
temp[1:3]

temp[1]
temp['Mon']
