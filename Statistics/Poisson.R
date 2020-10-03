mtcars
input <- mtcars[, c("am", "cyl", "hp", "wt")]
am.data <- glm(formula = am ~ cyl + hp + wt, data = input, family = binomial)
print(summary(am.data))
#Loading library
library(mlbench)
#Using BreastCancer dataset
data(BreastCancer, package = "mlbench")
breast_canc <- BreastCancer[complete.cases(BreastCancer),]
#Displaying the information related to dataset with the str() function.
str(breast_canc)
library(lattice)
library(ggplot2)
#Dividing dataset into training and test dataset.
set.seed(100)
#Creating partitioning.
Training_Ratio <- c(breast_canc$Class, p = 0.7, list = F)
#Creating training data.
Training_Data <- breast_canc[Training_Ratio,]
str(Training_Data)
#Creating test data.
Test_Data <- breast_canc[-Training_Ratio,]
str(Test_Data)
glm(Class ~ Cell.shape, family = "binomial", data = Training_Data)
model <- glm(Class ~ Cell.shape, family = "binomial", data = Training_Data)
#Using summary function
print(summary(model))