library(survival)
data <- pbc
survfit(Surv(pbc$time, pbc$status == 2) ~ 1)
plot(survfit(Surv(pbc$time, pbc$status == 2) ~ 1))
bladder