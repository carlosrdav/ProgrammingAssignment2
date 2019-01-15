## Put comments here that give an overall description of what your
## functions do

## This is a function to get the Matrix to Cache

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
  x<<-y
  m<<- NULL
}
get <- function() x
setsolve <- function(solve) m<<- solve
getsolve <- function() m
list (set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}


## This is a function to resolve if the data was in cache or compute the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setsolve(m)
  m
}
