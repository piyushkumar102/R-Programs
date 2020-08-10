grep("@.*", c("piyush@gmail.com", 'blah', "17tuit@skct.com"), value = TRUE)
gsub("@.*", "@skct.edu.in", c("piyush@gmail.com", 'blah', "17tuit@skct.com"))
matches <- regexpr("@.*", c("piyush@gmail.com", 'blah', "17tuit@skct.com"))
regmatches(c("piyush@gmail.com", 'blah', "17tuit@skct.com"), matches)
