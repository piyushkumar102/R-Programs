employee <- c('Rey', 'Sam', 'Josh')
salary <- c(25000, 25400, 27800)
city <- c('SFO', 'NY', 'CT')
employ_data <- data.frame(employee, salary, city)
employ_data

employee <- c('Rey', 'Sam', 'Josh')
salary <- c(25000, 25400, 27800)
city <- c('SFO', 'NY', 'CT')
employ_data <- data.frame(employee, salary, city)
employ_data
emp <- c()
for (i in 1:length(employ_data$salary)) {
  if (employ_data$salary[i] >= 50000) {
    emp <- append(emp, 'high')
  }
  else {
    emp <- append(emp, 'low')
  }
}
emp

temp <- c(55, 56, 54, 53, 52, 58, 58, 45)
humid <- c(20.8, 21.7, 22.78, 24, 23.28, 23.78, 21.89, 22.28)
overcast <- c('Sunny', 'Windy', 'Partly Cloudy', 'Clear', 'Sunny', 'Sunny', 'Clear', 'Partly Cloudy')
df <- data.frame(temp, humid, overcast)
df

ctr <- c()
for (i in 1:length(df$humid)) {
  if (df$temp[i] >= 55 && df$humid[i] >= 22) {
    ctr <- append(ctr, 'sunny')
  }
  else {
    ctr <- append(ctr, 'clear')
  }
}

ctr
