library(ggplot2)
library(ggpubr)
library(tidyverse)
library(broom)
library(AICcmodavg)


crop <- crop_data
summary(crop)

one_way <- aov(yield ~ fertilizer, data = crop)
summary(one_way)

two.way <- aov(yield ~ fertilizer + density, data = crop)
summary(two.way)

par(mfrow = c(2, 2))
plot(two.way)

par(mfrow = c(1, 1))
plot(two.way)

x <- c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)
t.test(x, alternative = "greater", mu = 0.3)

Control <- c(91, 87, 99, 77, 88, 91)
Treat <- c(101, 110, 103, 93, 99, 104)
t.test(Control, Treat, alternative = "less", var.equal = TRUE)


reg <- c(16, 20, 21, 22, 23, 22, 27, 25, 27, 28)
prem <- c(19, 22, 24, 24, 25, 25, 26, 26, 28, 32)
t.test(prem, reg, alternative = "greater", paired = TRUE)

#Since the p-value is very low, we reject the null hypothesis. There is strong evidence of a mean increase in gas mileage between regular and premium gasoline
