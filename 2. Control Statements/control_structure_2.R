list <- c()
# Create a for statement to populate the list
for (i in seq(1, 5, by = 1)) {
  list[[i]] <- i * i
}
print(list)

list <- c()
# Create a for statement to populate the list
for (i in seq(1, 15, by = 2)) {
  list[[i]] <- i * i
}
print(list)

list1 <- list(Sold = c('Cheese', 'Lacto', 'Choco', 'Corn'),
              Money = c(10, 12, 15), purchase = FALSE)
for (i in list1)
{
  print(i)
}

list1 <- list(Sold = c('Cheese', 'Lacto', 'Choco', 'Corn'),
              Money = c(10, 12, 15), purchase = FALSE)
for (i in list1[[1]])
{
  print(i)
}

list1 <- list(Sold = c('Cheese', 'Lacto', 'Choco', 'Corn'),
              Money = c(10, 12, 15), purchase = FALSE)
for (i in list1[[2]])
{
  print(i)
}

mat <- matrix(data = seq(10, 19, by = 1), nrow = 5, ncol = 2)
mat

for (r in 1:nrow(mat))
  for (c in 1:ncol(mat))
    print(paste("Row", r, "column", c, "[]", mat[r, c]))

for (r in 1:nrow(mat[1:3,]))
  for (c in 1:ncol(mat))
    print(paste("Row", r, "column", c, "[]", mat[r, c]))

#Create a variable with value 1
start <- 1
#Create the loop
while (start <= 10) {
  #See which we are
  cat('R Control Structures', start)
  #add 1 to the variable begin after each loop
  start <- start + 5
  print(start)
}

x <- 1:5 * 100
# Two incorrectly defined loops:
for (i in 5) { print(x[i]) }

for (name in c("Alan", "Ben", "Micheal")) {
  print(name)
}

for (name in rev(c("Alan", "Ben", "Micheal"))) {
  print(name)
}