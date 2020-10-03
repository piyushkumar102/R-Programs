datatext <- readLines("C:/Users/piyus/PycharmProjects/R Programs/Files/en_BDU R 101 Module 4 video 2.txt")
datatext
nchar(datatext[1]) #Length
toupper(datatext[1])
tolower(datatext[1])
chartr(" ", "-", datatext[1]) #Replace
char <- strsplit(datatext[1], " ")
words <- unlist(char) #Vector
sorted <- sort(words)
concat <- paste(sorted, collapse = " ") #Vector to String
subconcat <- substr(datatext[1], start = 1, stop = 2)
trimws(subconcat) #Trim White Space
library(stringr)
str_sub(datatext[1], -8, -1)


