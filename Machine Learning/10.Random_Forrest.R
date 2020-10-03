library(ggplot2)
library(cowplot)
library(randomForest)

url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.cleveland.data"
data <- read.csv(url, header = FALSE)
data
colnames(data) <- c("age", "sex", "cp", "trestbps", "chol", "fbs", "restecg", "thalach", "exang", "oldpeak", "slope", "ca", "thal", "hd")
head(data)
data[data == "?"] <- NA

#Converting the 0's in sex to F and 1's to M  
data[data$sex == 0,]$sex <- "F"
data[data$sex == 1,]$sex <- "M"

#Converting columns tnto the factors  
data$sex <- as.factor(data$sex)
data$cp <- as.factor(data$cp)
data$fbs <- as.factor(data$fbs)
data$restecg <- as.factor(data$restecg)
data$exang <- as.factor(data$exang)
data$slope <- as.factor(data$slope)

#ca and thal columns contain? rather than NA. R treats it as a column of string, We correct this assumption by telling R that is a column of integers.   

data$ca <- as.integer(data$ca)
data$ca <- as.factor(data$ca)
data$thal <- as.integer(data$thal)
data$thal <- as.factor(data$thal)

#Making data hd where 0's represent healthy and 1's to unhealthy.  
data$hd <- ifelse(test = data$hd == 0, yes = "healthy", no = "Unhealthy")
data$hd <- as.factor(data$hd)

#Checking structure of data  
str(data)
set.seed(120)
data.imputed <- rfImpute(hd ~ data, data = data, iter = 6)
data <- rfImpute(hd ~ ., data = data, iter = 20)
model <- randomForest(data$hd ~ ., data, mtry = 13, proximity = TRUE)
model
oob_error_data <- data.frame(Trees = rep(1:nrow(model$err.rate), times = 3), Type = rep(c("OOB", "Healthy", "Unhealthy"), each = nrow(model$err.rate)), Error = c(model$err.rate[, "OOB"], model$err.rate[, "healthy"], model$err.rate[, "Unhealthy"]))
ggplot(data = oob_error_data, aes(x = Trees, y = Error)) + geom_line(aes(color = Type))

library(party)

# Create the input data frame. 
input.dat <- readingSkills[c(1:105),]

# Give the chart file a name. 
png(file = "decision_tree.png")

# Create the tree. 
output.tree <- ctree(nativeSpeaker ~ age + shoeSize + score, data = input.dat)

# Plot the tree. 
plot(output.tree)

# Save the file. 
dev.off()