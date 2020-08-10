e <- matrix(c(1:10), nrow = 2)
e
dim(e)
e[2,]
e[, 5]
e[2, 3]
M1 <- matrix(c(2:25), nrow = 4)
M1
f <- as.vector(M1)
f
m7 <- matrix(c(1:24), nrow = 4)
m7
M1
M2 <- M1[2:3, 2:5]
M2

j <- crossprod(M1)
j
4 * M1 * m7
M1 <- matrix(c(2:25), nrow = 4, byrow = TRUE)
M1
M3 <- M1[1:2, 2:5]
M3

t <- matrix(1, nrow = 2, ncol = 2)
t
i <- diag(5, nrow = 3, ncol = 3) #Diagonal Matrix
i

m1 <- matrix(c(2, 3, -5, 6, 9, -7), nrow = 3, ncol = 2, byrow = TRUE)
m1
m2 <- matrix(c(1, -2, 0, 3, 4, -5), nrow = 2, ncol = 3, byrow = TRUE)
m2

#Matrix Multiplication
m1 %*% m2
#crossprod: multiply matrix & its transpose
m1 %*% t(m1) #Transpose
crossprod(m1)
#Inverse of Matrix
solve(i)
i %*% solve(i)
#eigen value & eigen vectors
eigen(i)
apply(m2, 1, mean) #1 means ROWS
apply(m1, 2, sum)  #2 means Columns
apply(m1, 1:2, mean)
