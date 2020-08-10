input <- mtcars[, c('wt', 'mpg')]
print(head(input))
png(file = "scatterplot.png") #Create File
plot(x = input$wt, y = input$mpg, xlab = "Weight", ylab = "Milage", xlim = c(2.5, 5), ylim = c(15, 30), main = "Weight vs Milage")
dev.off()

# Plot the matrices between 4 variables giving 12 plots.
# One variable with 3 others and total 4 variables.
png(file = "scatterplot_matrices.png")
pairs(~wt + mpg + disp + cyl, data = mtcars, main = "Scatterplot Matrix")
dev.off()

#Dot Chart
png(file = "dot_chart.png")
data(mtcars)
dotchart(mtcars$mpg, labels = row.names(mtcars), cex = 0.9, main = "Miles Per Gallon (MPG) of Car Models", xlab = "MPG")
dev.off() #cex (margins)

#Bar Plot
png(file = "bar_plot.png")
data(mtcars)
barplot(table(mtcars$cyl), main = "Distribution of Car Cylinder Counts", xlab = "Number of Cylinders")
dev.off()

#Dot chart Multi Variable
cars <- mtcars[order(mtcars$mpg),] #grouping variables must be a factol
cars$cyl <- factor(cars$cyl)
cars$color[cars$cyl == 4] <- "red"
cars$color[cars$cyl == 6] <- "blue"
cars$color[cars$cyl == 8] <- "darkgreen"
png(file = "color_dot_chart.png")
dotchart(cars$mpg, labels = row.names(cars), cex = .7, groups = cars$cyl, main = "Miles Per Gallon (MPG) of Car Models\nGrouped by Cylinder", xlab = "Miles Per Gallon",
         color = cars$color, gcolor = "black")
dev.off()

#Bar Plot Multi-Variable
png(file = "multi_bar_plot.png")
barplot(cars$mpg, main = "Distribution of Car Cylinder Counts and Gears", xlab = "Number of Cylinders", ylab = "Counts", col = c("#0000FFFF", "#0800FFFF", "#00FFFFFF"), legend = rownames(cars$mpg), beside = TRUE, args.legend = list(x = "top", title = "Number of Gears"))
dev.off()

#Pie Chart

x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")
piepercent <- round(100 * x / sum(x), 1)
png(file = "city_percentage_legends.jpg")
pie(x, labels = piepercent, main = "City pie chart", col = rainbow(length(x)))
legend("topright", c("London", "New York", "Singapore", "Mumbai"), cex = 0.8,
       fill = rainbow(length(x)))
dev.off()
#Box Plot

png(file = "boxplot.png") # Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders", ylab = "Miles Per Gallon", main = "Mileage Data")
dev.off()
#Histogram

v <- c(9, 13, 21, 8, 36, 22, 12, 41, 31, 33, 19)
png(file = "histogram_lim_breaks.png")
hist(v, xlab = "Weight", col = "green", border = "red", xlim = c(0, 40), ylim = c(0, 5), breaks = 5)
dev.off()
