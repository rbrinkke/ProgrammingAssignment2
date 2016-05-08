## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  # It's new c to Null
  c <- NULL
  
  # put the new matrix in the working environment.
  set <- function(y) {
    x <<- y
    c <<- NULL
  }
  
  # get the cached matrix
  get <- function() x
  # Store the inverted matrix in cache
  setInverse <- function(inverse) c <<- inverse
  # get inverted matrix from cache
  getInverse <- function() c
  # set function to working environment
  list(set = set, get = get,
       setInverse =  setInverse ,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  # Get the matrix from cache
  c <- x$getInverse()
  
  #  If found in cache return matrix e
  if (!is.null(c)) {
    message("getting cached data")
    # return the inversed matrix from cache
    return(c)
  }
  
  # Get the matrix 
  matrix <- x$get()
  # calculate the inverse of the matrix
  c <- solve(matrix, ...)
  # put the inverse matrix in cache
  x$setInverse(c)
  # return the inversed matrix
  return (c)
}
 
