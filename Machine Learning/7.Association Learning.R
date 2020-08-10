#install.packages("arules")
library(arules)
data("Groceries")
class(Groceries)
inspect(head(Groceries))
LIST(head(Groceries, 3)) # convert 'transactions' to a list, note the LIST in CAPS

frequentItems <- eclat(Groceries, parameter = list(supp = 0.07, maxlen = 15)) # calculates support for frequent items
inspect(frequentItems)

#To read data from a file as a transactions data, use read.transactions().
#tdata <- read.transactions("transactions_data.txt", sep="\t")
#If you already have your transactions stored as a dataframe, you could convert it to class transactionsas follows,
#tData <- as (myDataFrame, "transactions")


#Plot
itemFrequencyPlot(Groceries, topN = 10, type = "absolute", main = "Item Frequency") # plot frequent items

#Apply Rules
rules <- apriori(Groceries, parameter = list(supp = 0.001, conf = 0.5)) # Min Support as 0.001, confidence as 0.8.
rules_conf <- sort(rules, by = "confidence", decreasing = TRUE) # sort by confidence
inspect(head(rules_conf))

#To get ‘strong‘ rules, increase the value of ‘conf’ parameter.
#To get ‘longer‘ rules, increase ‘maxlen’

rules <- apriori(Groceries, parameter = list(supp = 0.001, conf = 0.5, maxlen = 3))
rules_conf <- sort(rules, by = "confidence", decreasing = TRUE)
inspect(head(rules_conf))


subsetRules <- which(colSums(is.subset(rules, rules)) > 1) # get subset rules in vector
length(subsetRules) #> 3913
rules <- rules[-subsetRules]

rules <- apriori(data = Groceries, parameter = list(supp = 0.001, conf = 0.08), appearance = list(default = "lhs", rhs = "whole milk"), control = list(verbose = F)) # Rules target to buy 'whole milk'
rules_conf <- sort(rules, by = "confidence", decreasing = TRUE)
inspect(head(rules_conf))

rules <- apriori(data = Groceries, parameter = list(supp = 0.001, conf = 0.15, minlen = 2), appearance = list(default = "rhs", lhs = "whole milk"), control = list(verbose = F)) # Target who bought 'milk'
rules_conf <- sort(rules, by = "confidence", decreasing = TRUE)
inspect(head(rules_conf))

