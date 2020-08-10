std <- data.frame(
  std_id = c(1:5),
  std_name = c("ian", "elena", "katherine", "sanem", "can"),
  std_age = c(18, 19, 17, 18, 20),
  std_marks = c(85, 80, 65, 95, 90),
  stud = c("M", "F", "F", "M", "F")
)
std
aggregate(std[, 3], list(std$std_name), median)
aggregate(std, list(std$std_name), sort)
clinical.trial <- data.frame(patient = 1:100,
                             age = rnorm(100, mean = 60, sd = 8),
                             year.enroll = sample(paste("19", 85:99, sep = ""),
                                                  100, replace = T))
clinical.trial
c1 <- cut(clinical.trial$age, breaks = 4)
table(c1)
c2 <- cut(clinical.trial$age, breaks = seq(30, 80, by = 10))
table(c2)
v <- factor(std_name$std_marks)
print(v)
t1 <- table(std$std_name, std$st_grades)