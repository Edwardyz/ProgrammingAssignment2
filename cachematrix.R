## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        vec_inv <- NULL
    set <- function(y) {
        x <<- y
        vec_inv <<- NULL
    }
    get <- function() x
    setInv <- function(inverse) vec_inv <<- inverse
    getInv <- function() vec_inv
    list(set = set,
         get = get,
         setInv = setInv,
         getInv = getInv)
}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       vec_inv <- x$getInv()
    if (!is.null(vec_inv)) {
        message("getting cached data")
        return(invvec_inv)
    }
    matx <- x$get()
    vec_inv <- solve(matx)
    x$setInv(vec_inv)
    vec_inv
}
