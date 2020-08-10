#Vector Array of Objects
c(81, 125) / 60
length <- c(81, 125)
1:10 #Sequential Vector
10:1
1997 > 2000 #Conditionals
c("Toy Story", "Akira", "The Artist")
genre_vect <- c('Comedy', 'Animation', 'Animation', 'Crime', 'Comedy')
genre_factor <- factor(genre_vect) #Factors : Categorical Data
summary(genre_vect)
summary(genre_factor)

#Ordinal
movielength <- c("Short", 'Very Short', 'Long', 'Very Long', 'Medium')
movielength_fact <- factor(movielength, ordered = TRUE, levels = c('Very Short', 'Short', 'Medium', 'Long', 'Very Long'))
movielength_fact
class(movielength)
x <- 1:10
y <- 4
z <- x + y #Add 4 to every Element
print(z)
any(x > 8)
all(x > 8)
all(x > 0)
year <- c(1985, 1999, 2010, 2002)
names(year) <- c("The Breakfast Club", "American Beauty", 'Black Swan', "Chicago") #Add names to indices
year['Black Swan'] #Naming the Index
length(year)
year_sort <- sort(year)
min(year)
max(year)
y <- c("R" = 1, "Python" = 2, "Java" = 3)
names(y)
y[c("Java", "Python")]


