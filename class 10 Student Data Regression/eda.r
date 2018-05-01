setwd("D:\\MS BDA I SEM\\Computing For Data Science\\R\\class 10 Student Data Regression")
df <- read.csv('student-mat.csv',sep = ';')
str(df)
head(df)
summary(df)

# Checking for NAs
any(is.na(df))

# Exploratory Data Analysis
library(ggplot2)
library(ggthemes)
library(dplyr)

# Correlation
# grab only numeric columns
num.cols <- sapply(df, is.numeric)
head(num.cols)
library(corrgram)
library(corrplot)
help("corrplot")

# Take Only numeric columns for correlation
cor.data <- cor(df[,num.cols])

# Plotting The Correlations
corrplot(cor.data, method = 'color')
# Automatically
corrgram(df, order = T, lower.panel = panel.shade, upper.panel = panel.pie, text.panel = panel.txt)

# Histogram
ggplot(df,aes(x=G3)) + geom_histogram(bins = 20, alpha = 0.5, fill = 'blue') + theme_minimal()
