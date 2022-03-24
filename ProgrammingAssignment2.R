## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(s)) {
    message("inversed matrix")
    return(s)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(s)
  m
}

s <- matrix(rnorm(9),3,3)
s1 <- makeCacheMatrix(m)
cacheSolve(s1)
