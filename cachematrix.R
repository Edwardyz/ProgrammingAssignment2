## The two functions below are designed to create a matrix and then find its inverse either from cache or real-time calculation. 


## the function creates a list of functions to set or get the matrix under examine and its inverse

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



## the function finds a matrix's inverse by first checking if the inverse is already computed and stored, 
## if not it will calculate it using solve function

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
