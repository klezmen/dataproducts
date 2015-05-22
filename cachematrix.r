makeCacheMatrix <- function(x = matrix()) {

    m <- NULL

    # Create function to set the value of the matrix. clear previous from cache
    set <- function(y) {

        x <<- y    # Set the value

        m <<- NULL # Clear the cache

    }

    # Define function to get that value of the matrix

    get <- function() x

    # Define function to set the inverse. This is only used by getinverse()
    #define inv function
    setInverse <- function(inverse) m <<- inverse


    getInverse <- function() m

    

    # Return a list with the functions

    list(set = set, get = get,

         setInverse = setInverse,

         getInverse = getInverse)

}





# Return inverse of matrix x


# This function computes the inverse of the "matrix" returned by 

# makeCacheMatrix. cachesolve retrieves the 

# inverse from cache if the inverse is calculated

# 

# 

# return The inverse of the matrix x

# 

cacheSolve <- function(x) {

    m <- solve(x) 

    if(!is.null(m)) { 

        return(m)}
else {
   message("getting cached data")
    }}
    

    data <- x$get()  

    m <- solve(data) 

    x$setInverse(m)  

    m                    
#this is a test
#final results will be updated soon
