## Create a Matrix, compute and cache its inverse

## Set the value of the matrix

makeCacheMatrix <- function(x = matrix()) {
## Get the value of the matrix
        inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        
## Set the value of the inverse matrix
        setinverse <- function(solve) inverse <<- solve
   
## Get the value of the inverse matrix
        getinverse <- function() inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)    
}


## Return inverse Matrix 

cacheSolve <- function(x, ...) {
        
## Check cache for inverse of matrix 'x'
## Return cached inverse 
        
        inverse <- x$getinverse()
        
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        
## If cache is empty compute inverse of matrix 'X'
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinverse(inverse)
        
## Return a matrix that is the inverse of 'x'
       
        inverse
}



