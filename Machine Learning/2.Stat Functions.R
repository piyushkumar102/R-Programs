x <- c(12, 7, 3, 4.2, 18, 2, 54, -21, 8, -5)
result.mean <- mean(x)
print(result.mean)
result.mean <- mean(x, trim = 0.3) #Avoid first n and last n index
print(result.mean)
x <- c(12, 7, 3, 4.2, 18, 2, 54, -21, 8, -5, NA)
result.mean <- mean(x)
print(result.mean)
result.mean <- mean(x, na.rm = TRUE) # Find mean dropping NA values.
print(result.mean)
median.result <- median(x)
print(median.result)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

v <- c(2, 1, 2, 3, 1, 2, 3, 4, 1, 5, 5, 3, 2, 3)
print(unique(v)) #Unique Elements
print(match(v, unique(v))) #Match vector to the index wrt unique elements
print(tabulate(match(v, unique(v))))
print(which.max(tabulate(match(v, unique(v))))) #Index of max element
result <- getmode(v)
charv <- c("o", "it", "the", "it", "it") # Calculate the mode using the user function.
result <- getmode(v)
