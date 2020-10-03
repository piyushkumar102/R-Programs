library("plot3D")
data(iris)
head(iris)
x <- sep.l <- iris$Sepal.Length
y <- pet.l <- iris$Petal.Length
z <- sep.w <- iris$Sepal.Width

scatter3D(x, y, z, clab = c("Sepal", "Width (cm)"))

# grey background with white grid lines
scatter3D(x, y, z, bty = "g", colkey = FALSE, main = "bty= 'g'")

# User defined
scatter3D(x, y, z, pch = 18, bty = "u", colkey = FALSE,
          main = "bty= 'u'", col.panel = "steelblue", expand = 0.4, col.grid = "darkblue")

# gg.col: ggplot2 like color
scatter3D(x, y, z, bty = "g", pch = 18, col = gg.col(100))

# ramp.col: custom palettes
scatter3D(x, y, z, bty = "g", pch = 18, col = ramp.col(c("blue", "yellow", "red")))
scatter3D(x, y, z, theta = 15, phi = 20)