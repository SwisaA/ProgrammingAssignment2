## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
}
    get <- function() {
    m
   }    
         setInverse <- function(inverse) {
        i <<- inverse
    }
            getInverse <- function() {
                      i
    }

            list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function
## I first initialized the inverse property then sets the matrix function before getting the matrix and setting the inverse of the matrix. I was then returend a list of the methods used.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
   m <- x$getInverse()

    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }
    data <- x$get()

    m <- solve(data) %*% data

    x$setInverse(m)

    ## Return the matrix    
}

## I got the matrix then calculated the inverse. and Set it has the Inverse. 
