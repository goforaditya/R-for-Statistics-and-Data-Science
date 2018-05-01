c1<-1:10
c2<-letters[1:10] # predefined R array containing a-z 

df<-data.frame(col1 = c1, col2 = c2)

nrow(df) #no of rows
ncol(df)

colnames(df)
rownames(df)

str(df)
summary(df)

#pull out individual values
df
df[[5,2]]
df[[5,'col2']]

# Change particular value
df[[5,'col2']]<-'r'# doesn't work

