## Helper functions for working with matricies and their inverse matrix
## Sample Invertable matrix:  matrix(c(4,7,2,6),2,2)

## Function retuns an enhanced matrix object which can cache its inverse
#  Ex1: enhMatrix <- makeCacheMatrix()                       #create empty enhanced matrix object
#       enhMatrix$set(matrix(c(4,7,2,6),2,2))                #add data
#  Ex2: enhMatrix <- makeCacheMatrix(matrix(c(4,7,2,6),2,2)) #create one with data



makeCacheMatrix <- function(x = matrix()) {

    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    
    get <- function() x
    
    setInverse <- function(solve) inv <<-solve
    
    getInverse <- function() inv
    
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
    
}


## This functions calculates the inverse of an enhanced matrix object. Before
## running the solve, it checks to see if this particular object had its getInv element 
## already computed and saved in the environment. 
#  Ex1: inverseMtrx <- cacheSolve(enhMatrix)         #compute the inverse and cache the result

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  browser
  inv <- x$getInverse()
  
  if (!is.null(inv)) {
    message("Solve was in cache!")
    return(inv)
  }
  
  data <- x$get()
  inv <- solve(data,...)
  x$setInverse(inv)
  inv
}