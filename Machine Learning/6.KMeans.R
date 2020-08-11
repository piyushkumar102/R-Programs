require("datasets")
data("iris")
str(iris)
summary(iris)
head(iris)
iris.new <- iris[, c(1, 2, 3, 4)]
iris.class <- iris[, "Species"]
head(iris.new)
head(iris.class)

normalize <- function(x)
{
  return((x - min(x)) / (max(x) - min(x)))
}

iris.new$Sepal.Length <- normalize(iris.new$Sepal.Length)
iris.new$Sepal.Width <- normalize(iris.new$Sepal.Width)
iris.new$Petal.Length <- normalize(iris.new$Petal.Length)
iris.new$Petal.Width <- normalize(iris.new$Petal.Width)
head(iris.new)
result <- kmeans(iris.new, 3) #apply k-means algorithm with no. of centroids(k)=3
result$size #records in each cluster
result$centers # gives value of cluster center datapoint value(3 centers for k=3)
result$cluster #gives cluster vector showing the custer where each record falls

#Plotting
png(file = "kmeans.png")
par(mfrow = c(2, 2), mar = c(5, 4, 2, 2))
plot(iris.new[c(1, 2)], col = result$cluster) # Plot Sepal.Length and Sepal.Width
plot(iris.new[c(1, 2)], col = iris.class) # Plot Sepal.Length and Sepal.Width data points distributed originally as per "class" attribute in dataset
plot(iris.new[c(3, 4)], col = result$cluster) # Plot Petal.Length and Petal.Width
plot(iris.new[c(3, 4)], col = iris.class)
dev.off()
table(result$cluster, iris.class)