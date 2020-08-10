#install.packages('readxl')
library(readxl)
data <- read.csv("C:/Users/piyus/PycharmProjects/R Programs/Files/brics.csv")
data[1]
data['country']
data[1,]
data[1, c('country', 'capital')]
data() #Display Already present data sets
help(CO2) #Already present data sets
CO2