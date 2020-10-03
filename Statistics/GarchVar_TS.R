# Title     : TODO
# Objective : TODO
# Created by: piyus
# Created on: 03-10-2020

install.packages("WDI")
require(WDI)
#domestic gross product
gdp <- WDI(country = c("US", "CA", "GB", "DE", "CN", "JP", "SG", "IL"), indicator = c("NY.GDP.PCAP.CD", "NY.GDP.MKTP.CD"), start = 1960, end = 2011)
gdp
head(gdp)
names(gdp) <- c("iso2c", "Country", "Year", "PerCapGDP", "GDP")
us1 <- gdp$PerCapGDP[gdp$Country == "Canada"]
#convert it to a time series
us1
us1 <- ts(us1, start = min(gdp$year), end = max(gdp$year))
plot(us1, ylab = "Per capita GDP", xlab = "Year")
acf(us1)
pacf(us1)

install.packages("reshape2")
library(reshape2)
reshape2
dcast
gdpCast <- dcast("Year", "Country", data = gdp[, c("Country", "Year", "PerCapGDP")], value.var = "PerCapGDP")
gdpCast <- dcast(Year ~ Country,
                 data = gdp[, c("Country", "Year", "PerCapGDP")],
                 value.var = "PerCapGDP")
head(gdpCast)
gdpTS <- ts(data = gdpCast[, -1], start = min(gdpCast$Year), end = max(gdpCast$Year))
plot(gdpTS, plot.type = "single", col = 1:8)
legend("topleft", legend = colnames(gdpTS), ncol = 2, lty = 1, col = 1:8, cex = .9)
gdpTS <- gdpTS[, which(colnames(gdpTS) != "Germany")]

library(quantmod)
load("data/att.rdata")
library(quantmod)
att <- getSymbols("T", auto.assign = FALSE)
library(xts)
# show data
head(att)
plot(att)
attClose <- att$T.Close
class(attClose)
head(attClose)
library(rugarch)
attSpecugarchspec(variance.model = list(model = "sGARCH", garchOrder = c(1, 1), mean.model = list(armaOrder = c(1, 1)), distribution.model = "std")
                  attGarch <- ugarchfit(spec = attSpec, data = attClose)
                  attGarch
                  attLog <- diff(log(attClose))[-1]
                  # build the specification
                  attLogSpec <- ugarchspec(variance.model = list(model = "sGARCH",
                                                                 garchOrder = c(1, 1)),
                                           mean.model = list(armaOrder = c(1, 1)),
                                           distribution.model = "std")
                  # fit the model
                  attLogGarch <- ugarchfit(spec = attLogSpec, data = attLog)
                  infocriteria(attLogGarch)
