## This file contains two functions, makeCacheMatrix, and cacheSolve
## The two functions mean that the inverse to a  matrix, which is 
## computationally expensive to find, can be cached and then returned
## without having to calculate the solution more than once.
## makeCacheMatirix creates the cached matrix, cacheSolve checks wether
## the inverse has been calculated and calculates it if required.

## This function creates a special matrix, which is really a list,
## containing a function to:
##
## 1. set the value of the matrix.
## 2. get the value of the matrix.
## 3. set the value of the inverse matrix - i
## 4. get the value of the inverse matrix - i
##
## The function takes a matrix object as an argument

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    
    get <- function() x
    
    setinverse <- function(solve) i <<- solve
    
    getinverse <- function() i
    
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## This function examines the special matrix created in 
## the function above to check if the inverse has been calculated.
## If the inverse has been calculated it skips calculating the inverse.
## If the inverse is not calculated, the function calculates the
## inverse and saves it to the cached matrix.
## This function takes a cached matrix as a argument (from function above)

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    
    if(!is.null(i)) { 
        message("Getting cached data")
        return(i)
    }
    
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
