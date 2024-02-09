## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##the function will return the list of functions that include set, get, setmean, and getmean
makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}



## Write a short comment describing this function
## This function will check if the mean from x is already start by checking it value 
## if the value is null,then it will return the original value of x$getmean back
## if the value is not null, then it will return the mean value

cacheSolve <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmean(m)
        m
}
