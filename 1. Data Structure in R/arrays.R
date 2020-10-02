#Data of Same types
movies <- c('Akira', 'Toy Story', 'Room', 'The Wave', 'Whiplash', 'Star Wars', 'The Ring', 'The Artist', 'Jumanji')
movie_arr <- array(movies, dim = c(4, 3)) #4 Rows and 3 Columns
movie_arr[1, 2]
movie_arr[1,]
movie_arr[, 2]
movie_mat <- matrix(movies, nrow = 3, ncol = 3, byrow = TRUE)
movie_mat[2:3, 1:2]
numbers <- 1:24
numMat <- matrix(numbers, nrow = 6, ncol = 4)
st <- as.vector(numMat)
st
grades <- c('s', 'a', 's', 's', 'f', 'a', 'f')
split(1:7, grades)
