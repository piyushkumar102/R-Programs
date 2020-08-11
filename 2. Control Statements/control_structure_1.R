x <- 15
if (x > 0)
{ print("Positive number") }

x <- 0
if (x < 0) {
  print("Negative number") }else if (x > 0) {
  print("Positive number") }else {
  print("Zero") }

a <- c(25, 37, 22, 19)
print(ifelse(a %% 2 == 0, "even", "odd"))

v <- LETTERS[1:4]
for (i in v)
{ print(i) }
v <- c("Wynk", "Spotify")
cnt <- 3
while (cnt < 7)
{
  print(v)
  cnt <- cnt + 3

}
v <- c("IPL", "2020")
count <- 2
repeat { print(v)
  count <- count + 2
  if (count > 5) { break }
}
v <- c("IPL", "2020")
count <- 2
repeat { print(v)
  count <- count + 2
  if (count > 5) { break }
}

x <- c("Ab", "Rey", "Veer")
if ("GOT" %in% x)
{
  print("GOT")

}else if ("Rey" %in% x) {
  print("Rey") } else {
  print("No Match") }

x <- c("Bob", "Alle", "Brain")
if ("Brain" %in% x) {
  print(" found") } else { print("not found") }

x <- 25L
if (is.integer(x))
{ print("X is an Integer") }
x <- 1
repeat { print(x)
  x <- x + 2
  if (x == 3) { break }

}

x <- 1
repeat
{ print(x)
  x <- x + 1
  if (x == 5) { break }

}
x <- 1:15
for (val in x)
{
  if (val == 5)
  { next }
  print(val) }
x <- 1:15
for (val in x)
{ if (val == 5)
{ break }
  print(val) }
i <- 3
while (i < 7)
{
  print(i)
  i <- i + 1

}

x <- c(22, 25, 33, 19, 18, 11, 5)
count <- 0
for (val in x)
{
  if (val %% 2 == 0)
    count <- count + 1
}
print(count)