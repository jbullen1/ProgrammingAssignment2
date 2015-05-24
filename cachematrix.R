## Put comments here that give an overall description of what your
## functions do

## sets or gets the value of a matrix
## sets or gets the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  #
  cachedMatrix <- NULL
  set <-function(y){
        x <<- y
        cachedMatrix<<- NULL    
  }
  get <- function() x
  setInverse <- function(inverse) cachedMatrix <<- inverse
  getInverse <- function() cachedMatrix
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Returns the inverse of a matrix by either computing and storing the inverse if it wasn't 
## already stored, or retuning previously stored value.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  cachedMatrix <- x$getInverse()
  if(!is.null(CachedMatrix)){
      message("getting cached data")
      return(cachedMatrix)
  }
  data <- x$get()
  cachedMatrix <-solve(data)
  x$setInverse(cachedMatrix)
  cachedMatrix
}
