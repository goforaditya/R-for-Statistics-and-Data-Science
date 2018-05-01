#install.packages("RCurl")
install.packages("swirl")
library(swirl)
install_course_github("swirldev","R_Programming_E")
install_course("Getting and Cleaning Data")
swirl()
exit
# Checkout Swirl github

library(bitops)
library(RCurl)
library(httr)
set_config( config( ssl_verifypeer = 0L ) )


x = rnorm(100)
y = rnorm(100)
plot(x,y)
