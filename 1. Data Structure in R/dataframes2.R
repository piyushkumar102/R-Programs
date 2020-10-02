emp_db <- data.frame(
  empdb_id = c(1:5),
  empdb_name = c("Roy", "Ian", "Cathy", "Tokyo", "Chris"),
  salary_dollars = c(7000, 8000, 6500, 7700, 6200)
)
emp_db

emp_db$dept <- c("IT", "Operations", "IT", "HR", "Operations") #Add new Column
v <- factor(emp_db$emp_name)
print(v)

emp_newdb <- data.frame(
  empdb_id = c(6:8),
  empdb_name = c("Rick", "Martin", "Felix"),
  salary_dollars = c(5780, 7225, 6328),
  dept = c("IT", "Operations", "Fianance")
)
emp_1 <- rbind(emp_db, emp_newdb)
emp_1

emp_1$employee_stat <- c("FT", "PT", "PT", "FT", "FT", "PT", "PT", "FT")

emp_1[1:5, 2:4] #Row,Column
emp_new <- emp_1[3:5, 1:2]
emp_new$emp_id <- c(1, 2, 3)

table1 <- table(emp_db$empdb_id, emp_db$empdb_name) #Categorical Classification
table1

