## Put comments here that give an overall description of what your
## functions do

## This function creates a special matrix, which is really a list,
## containing a function to:
##
## 1. set the value of the matrix.
## 2. get the value of the matrix.
## 3. set the value of the inverse matrix - i
## 4. get the value of the inverse matrix - i

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

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
