## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
+## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {


  invMat <- NULL   #set default inverse matrix to null
  setMat <- function(y) {
        x <<-y
        invMat <<- NULL
  }
  getMat <- function() x  #get the matrix
  setInv <- function(inverse) invMat <<- inverse #set the invertible matrix
  getInvMat <- function() invMat #get the invertible matrix
  list(setMat = setMat, getMat = getMat, setInv = setInv, getInv = getInv)
}


## This function computes the inverse of the special matrix returned by the
##'makeCacheMatrix' above. If there is a history of inverse calculated previously
## then this function will retrieve the inverse from the cache.
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invMat <- x$getInvMat()
        if(!is.null(invMat)){            #if the inverse matrix is not NULL
        message("There is a Cached Invertible Matrix") #print this message
        return(invMat)                                 #return the invertible matrix
        }
        #if invMat is NULL then do the following
        MatrixData <- x$getMat()           #get the matrix
        invMat <- solve(MatrixData, ...)   #use solve function to get the inverse matrix
        x$setInv(invMat)                   #set the invertible matrix
        return(invMat)                     #return the invertible matrix
}
