tryCatch(10 + 10)
tryCatch('a' + 10,
         error = function(e)
           print("Something Wrong"))
return('10a')

tryCatch(
  for (i in 1:3)
  {
    print(i + 'a')
  }
  , error = function(e)
    print("Bad"))

tryCatch(as.integer('A'),
         warning = function(e)
           print("Warning"))