movies <- list('Toy Story', 1995, c('Animation', 'Adventure', 'Comedy'))
movies[2]
movies[2:3]
movie_details <- list(name = 'Toy Story', year = 1995, genre = c('Animation', 'Adventure', 'Comedy'))
movie_details$genre #Access name
movie_details['genre']
movie_details['Age'] <- 5
movie_details['Age'] <- 6 #Reassign
movie_details['Age']
movie_details['Age'] <- NULL #Remove name or Value

l1 <- list(c("positive", "negative", "total spread"), c(1:10), matrix(c(1:10)))
l2 <- list((rep(c(1:10), each = 10)), c("mexico", "brazil"))
mylist <- list(name1 = "Alex", name2 = "Smith")
names(mylist)
song_fav <- list("Newpicks", 190, 30)
names(song_fav) <- c("Latest Hits", "duration", "track")


GOT <- list(c("Emilie", "Kit", "Sophie", "Peter", "Lena"), 2015)
GOT_new <- c(GOT, Author = "George R Martin")
names(GOT_new) <- c("Cast", "Year", "Author")
GOT_new

listv <- list(c(1:10), c(21:55))
lapply(listv, median) #Return as List of Same length
sapply(listv, mean) #Return as Vector
v1 <- unlist(listv) #Flatten List