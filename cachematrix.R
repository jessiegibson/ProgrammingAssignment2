## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <- function() i <<- solve(x) 
        getInverse <- function() i
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## This sets the value of the vector, get the value of the vector and we use solve(x) to calculate the inverse.
## it also set the value of the inverse and gets the value of the inverse. 


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
               i <- x$getInverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setInverse(i)
        i
 
}
