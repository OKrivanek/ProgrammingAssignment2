## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeCacheMatrix <- function(x = matrix()) {
  pomocna <- NULL
  set <- function(y) {    # initialize to load a matric
    x <<- y
    pomocna <<- NULL 
  }
  get <- function() x     
  setInverse <- function() pomocna <<- solve(x) #using solve function get inverse matrix under assumption that a matrix is always invertible
  getInverse <- function() pomocna # Return a matrix that is the inverse of 'x'
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse) 
}
