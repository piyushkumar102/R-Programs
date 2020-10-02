d <- c(5, 12, 13, 4, 3, 28, 12, 12, 9, 5, 5, 13, 5, 4, 12)
dtab <- table(d)
dtab

tabdom <- function(tbl, k)
{
  dtabf <- as.data.frame(dtab)
  freqord <- order(dtabf$Freq, decreasing = TRUE)
  dom <- dtabf[freqord,][1:k,]
  return(dom)
}

tabdom(dtab, 3)

gender <- factor(c("male", "female", "female", "male"))
levels(gender)

data <- c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North")
factor_data <- factor(data)
factor_data

size <- c("Small", "Medium", "Large", "Small", "Large", "Small", "Medium", "Large")
size_fac <- factor(size)
print(size_fac)

d <- c(1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3)
v <- factor(d)
summary(v)
levels(v)

food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
levels(food)
nlevels(food) #Number of Levels

height <- c(132, 151, 162, 139, 166, 147, 122)
weight <- c(48, 49, 66, 53, 67, 52, 40)
gender <- c("male", "male", "female", "female", "male", "female", "male")
input_data <- data.frame(height, weight, gender)
print(input_data)
print(is.factor(input_data$gender))
print(input_data$gender)
d_fac <- factor(input_data$gender)
print(d_fac)

table(input_data$height, input_data$weight)
table(input_data$gender)
table(input_data$gender, input_data$height)

census <- matrix(c(51, 43, 22, 92, 28, 21, 68, 22, 9), ncol = 3, byrow = TRUE)
colnames(census) <- c("High", "Low", "Middle")
rownames(census) <- c("current", "former", "never")
census <- as.table(census)
census

v <- gl(3, 4, labels = c("Tampa", "Seattle", "Boston"))
v
v <- gl(2, 4, labels = c("Tampa", "Seattle", "Boston"))