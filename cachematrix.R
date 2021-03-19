## These functions set a matrix in cache and calculates the inverse
## once you got the inverse the function cacheSolve checks if it is
## in cache and prints or calculates depending on the answer

## This function, set a matrix, get the matrix,
##get the inverse matrix and set the invese matrix


makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setinverse <- function(inverse) {inv <<- inverse}
  getinverse <- function() {inv}
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


##Function checks if there is a inverse matrix in cache. 
##If there is not calculates the inverse from the matrix in cache
## and sets the inverse in cache

cacheSolve <- function(x, ...) {
  
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("This is the inverse of the matrix")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}
        ## Return a matrix that is the inverse of 'x'

source("cachematrix.R")



