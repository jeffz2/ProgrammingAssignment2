## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

### Creates a list with the original matrix at index 1 and NULL
### as a placeholder for the inverse at index 2.
makeCacheMatrix <- function(x = matrix()) {
  m <- list(x, NULL)
}


## Write a short comment describing this function

## Solves the inverse of the matrix
## Adds the inverse matrix if not already in the list
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if (x[[2]] == solve(x[[1]])) {
    x[[2]]
  }
  else {
    x[[2]] <- solve(x[[1]])
  }
}
