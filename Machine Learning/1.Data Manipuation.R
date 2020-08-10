data <- read.csv("C:/Users/piyus/PycharmProjects/R Programs/input.csv")
print(is.data.frame(data)) #Check if its a DataFrame
print(ncol(data)) #Number of Columns
print(nrow(data)) #Number of Rows
print(data)
sal <- max(data$salary) #Access Max in Salaray Column
print(sal)
retval <- subset(data, salary == max(salary)) #Rows with following conditions
retval <- subset(data, dept == "IT")
print(retval)
info <- subset(data, salary > 600 & dept == "IT")
print(info)
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(retval)
write.csv(retval, "output.csv")
newdata <- read.csv("output.csv")
print(newdata)
print(colnames(data))
print(rownames(data))
head(data) #first 6 rows
tail(data) #first 6 tail

