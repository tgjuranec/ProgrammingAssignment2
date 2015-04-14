## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function for storing matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
    minv <- NULL
    set <- function(y){
        m <<- y
        minv <<- NULL
    }
    get <- function() m
    setinverse <- function(minv_inp) minv <<- minv_inp
    getinverse <- function() minv
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
## Function for access makeCacheMatrix function and
## solving or getting inverse
cacheSolve <- function(x, ...) {
    minv <- m$getinverse()
    if(!is.null(minv)) {
        message("getting cached data")
        return(minv)
    }
    data <- m$get()
    inverse <- solve(data, ...)
    m$setinverse(inverse)
    inverse    
}
