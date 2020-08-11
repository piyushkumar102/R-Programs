#install.packages("caret")
#install.packages("rpart.plot")
library(caret)
library(rpart)
library(e1071)

data_url <- c("https://archive.ics.uci.edu/ml/machine-learning-databases/car/car.data")
download.file(url = data_url, destfile = "car.data")

car_df <- read.csv("car.data", sep = ',', header = FALSE)
str(car_df)
set.seed(3033)
intrain <- createDataPartition(y = car_df$V7, p = 0.7, list = FALSE)
training <- car_df[intrain,]
testing <- car_df[-intrain,]

head(car_df)
dim(training)
dim(testing)
anyNA(car_df)
summary(car_df)

trctrl <- trainControl(method = "repeatedcv", number = 10, repeats = 3) #Use sets of 10, 3 times
set.seed(3333)
dtree_fit <- train(V7 ~ ., data = training, method = "rpart", parms = list(split = "information"), trControl = trctrl, tuneLength = 10)
dtree_fit
prp(dtree_fit$finalModel, box.palette = "Reds", tweak = 1.2)