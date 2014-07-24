makeCacheMatrix <- function(x = matrix()) {
##function creates a matrix
	m <- NULL
	set <- function (y) {
		x <<- y
		m <<- NULL
}
	get <- function()x
	setinverse <- function(solve)m <<- solve
	getinverse <- function()m
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}




cacheSolve <- function(x) {
##assigns function to cacheSolve
	m <- x$getinverse()
##gets inverse of matrix
	if(!is.null(m)) {
##if not null, gets cached inverse and prints	
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data)
	x$setinverse(m)
	m
}
