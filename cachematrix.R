## The following is my submission for Programming Assignment 3.

## The function below will set the value of a matrix, get the value of a matrix, set the value of the inverse, and finally get the value of the inverse. 

makeCacheMatrix <- function(x = matrix()){
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function below will calculate the inverse of a matrix while first checking if such a value exists in the cache. If so, the value will be printed. If not, the function will compute the value. 

cacheSolve <- function(x, ...){
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
       