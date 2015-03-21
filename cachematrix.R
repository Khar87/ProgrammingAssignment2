## Functionality that provides matrix inversion
## with caching 

## Creates an object that contains matrix
## Object can cache matrix's inverse
## It's used in cacheSolve function

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    setData <- function(y) {
        x <<- y
        inverse <- NULL
    }
    getData <- function() {
        return(x)
    }
    setInverse <- function(i) {
        inverse <<- i
    }
    getInverse <- function() {
        return(inverse)
    }
    return(list(setData = setData, getData = getData,
                setInverse = setInverse, getInverse = getInverse))
}


## Returns inverse of matrix x.
## If x already contains an inverse returns it
## Otherwise computes the inverse, store in x and returns it

cacheSolve <- function(x, ...) {
    inverse <- x.getInverse()
    if (!is.null(inverse)) {
        message("Getting cached inverse")
        return(inverse)
    }
    data <- x$getMatrix()
    inverse <- solve(date)
    x$setInverse(inverse)
    return(inverse)
}
