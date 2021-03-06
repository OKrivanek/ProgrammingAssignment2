makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x  #initialiaze by loading matrix
  setinverse <- function(inverse) i <<- inverse #getting inverse ,here the solve function will be applied through cacheSolve
  getinverse <- function() i  # displaying inverse
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {       
          message("getting cached data") # if not null, displaying message
          return(i)
  }
  data <- x$get()       #loading matrix in order to solve inverse matrix by using solve function
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
