x <- 1:15
y <- matrix(x, nrow = 3)
z <- letters[1:15]
x
y
z
list1 <- list(x, y, z)
df <- data.frame(x, y, z)
list1
df
df$z
df$z[5]
df$x3
max(df$X4)
summary(df$x)
subset(df, X3 > 3)
subset(df, X3 > 3, select = c(-3, -4, -5))
sp <- split(df, df$X5) #Splits DF Based on Elements
