library('ggplot2')
data(diamonds)
diamonds
sp1 <- smooth.spline(x = diamonds$carat, y = diamonds$price)
sp1
sp2 <- smooth.spline(x = diamonds$carat, y = diamonds$price, df = 2)
sp3 <- smooth.spline(x = diamonds$carat, y = diamonds$price, df = 10)
sp4 <- smooth.spline(x = diamonds$carat, y = diamonds$price, df = 20)
sp5 <- smooth.spline(x = diamonds$carat, y = diamonds$price, df = 50)
sp6 <- smooth.spline(x = diamonds$carat, y = diamonds$price, df = 100)
get.spline <- function(object) { data.frame(x = object$x, y = object$y, df = object$df) }
require(plyr)
splined <- ldply(list(sp1, sp2, sp3, sp4, sp5, sp6), get.spline)
head(splined)
splot <- ggplot(diamonds, aes(x = carat, y = price + geom_point()))
splot +
  geom_line(data = splined, aes(x = x, y = y, color = factor(round(df, 0)), group = df)) +
  scale_color_discrete("Degrees of Freedom")


tree <- read.csv("stevens.csv")
tree
install.packages("rpart.plot")
install.packages("caTools")
library(caTools)
set.seed(3000)
spl <- sample.split(tree$Reverse, SplitRatio = 0.7)
train <- subset(tree, spl == TRUE)
test <- subset(tree, spl == FALSE)
library(rpart)
library(rpart.plot)
stevensTree <- rpart(Reverse ~ Circuit +
  Issue +
  Petitioner +
  Respondent +
  LowerCourt +
  Unconst, data = train, method = "class", minbucket = 25)
prp(stevensTree)
predictCART <- predict(stevensTree, newdata = test, type = "class")
table(test$Reverse, predictCART)
install.packages("ROCR")
library(ROCR)
predictROC <- predict(stevensTree, newdata = test)
predictROC
pred <- prediction(predictROC[, 2], test$Reverse)
perf <- performance(pred, "tpr", "fpr")
plot(perf)