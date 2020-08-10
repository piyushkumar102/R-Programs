movie_lists <- data.frame(name = c('Akira', 'Toy Story', 'Room', 'The Wave', 'Whiplash', 'Star Wars', 'The Ring', 'The Artist', 'Jumanji'), year = c(1998, 1995, 2010, 2009, 2011, 1970, 2000, 2007, 2017))
movie_lists$name #Access Colummn
movie_lists[1] #Access Column
movie_lists[1, 2]
str(movie_lists)
head(movie_lists)
tail(movie_lists)
movie_lists['Length'] <- c(81, 125, 7, 100, 87, 193, 130, 119, 120) #Add Column
movie_lists <- rbind(movie_lists, c(name = 'Dr Strange', year = 2016, Length = 94)) #Add Row
movie_lists
rbin
movie_lists <- movie_lists[-10,] #Delete Row
movie_lists["Length"] <- NULL #Delete Column
movie_lists


