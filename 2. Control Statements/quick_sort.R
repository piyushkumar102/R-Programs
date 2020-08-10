quickSort <- function(vect) {
  if (length(vect) <= 1) {
    return(vect)
  }
  element <- vect[1]
  partition <- vect[-1]
  v1 <- partition[partition < element]
  v2 <- partition[partition >= element]
  v1 <- quickSort(v1)
  v2 <- quickSort(v2)
  return(c(v1, element, v2))
}

quickSort(c(4, 65, 2, -31, 0, 99, 83, 782, 1))
quickSort(c(54, 26, 93, 17, 77, 31, 44, 55, 20))