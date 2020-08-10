cost <- c(836, 83, 81)
sum(cost) / 3
mean(cost)
summary(cost)
cost > 80 #Condition
cost[cost > 80] #Subset
cost[2] #Access index
cost[c(2, 3)] #Access list of index
cost[1:3]
cost[-1] #Remove element
age <- c(14, 16, 12, 10, 18, 18)
seq <- c(2, 3, 0, 2, 6, 3)
multi <- age * seq
multinum <- age * 2
v1 <- c(3, 8, 4, 5, 0, 11)
v2 <- c(4, 11, 0, 8, 1, 2)
multi.result <- v1 * v2
print(multi.result)
v1 <- c(3, 8, 4, 5, 0, 11)
v2 <- c(4, 11)
add.result <- v1 + v2
print(add.result)

x <- 10:20
m <- numeric(length(x))
for (i in seq_along(x)) {
  m <- x[i] + 1
  print(m)
}
s <- c("aa", "yy", "tt", "ff", "gg")
print(s[c(2, 4)])
v <- c("Red", "Blue", "yellow", "violet")
sort.result <- sort(v)
print(sort.result)
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)
x <- c(1, 2, 4)
length(x)
v <- seq(1:10)
ifelse(v %% 2 == 1, "p", "c")
s <- seq(1:5)
ifelse(s < 2, 1, 0)
x <- rep(8, 4)
y <- c(1.2, 3.9, 0.4)
z <- round(y)
seq(to = 35, length = 10)