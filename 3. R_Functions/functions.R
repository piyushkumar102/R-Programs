printer <- function()
  {
  print("Hello")
}

printer()

adder <- function(x, y)
  {
  x + y
}

adder(5, 6)

adder <- function(x, y) #Parameters
  {
  return(x + y)
}

x <- readline()
y <- readline()
x <- as.integer(x)
y <- as.integer(y)
adder(x, y)

adder <- function(x, y = 2) #Keyword Arg
  {
  return(x + y)
}

adder(x)


