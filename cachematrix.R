## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

### Creates a list to set and get the value of the matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse,
       getinverse, getinverse)
  
}


## Write a short comment describing this function

## Solves the inverse of the matrix
## Adds the inverse matrix if not already in the list
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getmean()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}

