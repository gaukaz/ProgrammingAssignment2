## there are two fucntions bellow: makeCacheMatrix and cacheSolve

makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL
    set <- function(y) {
      x <<- y
      inver <<- NULL
    }
    get <- function()x
    setinv <- function(inverse) {inver <<- inverse}
    getinv <- function() {inver}
    list (set = set, get = get,
          setinv = setinv,
          getinv = getinv)  
    }



## cacheSolve function gets the cache data

cacheSolve <- function(x, ...) {
  inver <- x$getinv()
  if(!is.null(inver)) {
    message ("getting cached data")
    return (inver)
  }
  data <- x$get()
  inver <- solve(data, ...)
  x$setinv(inver)
  inver     ## Return a matrix that is the inverse of 'x'
}
