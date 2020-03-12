## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  #Initialize variable holding the cached inverse matrix
  cachedInverse <- NULL
  
  # sets the value of matrix to y using the superassignment operator 
  # from other environment in the search() list
  set <- function(y) {
    x <<- y
    cachedInverse <<- NULL
  }
  
  
  get <- function()
  { x
                   }
  # get the value of x
  
  ##To Set the inverse of matrix
  setInverse<-function(inverse)
  { cachedInverse <<- inverse
  }
  
  ##Tp get inverse matrix
  getInverse <- function()
   {
    cachedInverse
  
  }
  ## Return a list of methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
 
  invFunc <- x$getInverse()
  
  if(!is.null(invFunc)) {
    message("getting cached data")
    return(invFunc)
  }
  data <- x$get()
  invFunc <- solve(data, ...)
  x$setInverse(invFunc)
  invFunc
}
