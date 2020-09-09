## Put comments here that give an overall description of what your
## functions do
##readlly don't fully grok this cache function

 #so I think we model it on the makeVector function given
makeCacheMatrix <- function(x = matrix()) {
    #initialize inverse property (i)
    i <- NULL
    
    #set matrix and null
    set <- function(matrix) {
            m <<- matrix
            i <<- NULL
           }
    
    #get matrix (which we've set as m)
    get <- function(){
        #return matrix
        m
        }
    
    #invert matrix (set it?)
    setInverse<-function(inverse){
        i<<-inverse
    }
    
    #get inverted matrix
    getInvere<- function(){
        i
    }
    
    #return list of methods
    list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
    
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        #easy enough to start...?
        m <- x$getInverse()
        
        ## Just return the inverse if its already set
        if( !is.null(m) ) {
                message("getting cached data")
                return(m)
        }
        
        ## Get the matrix from our object
           data <- x$get()
           
           ## Calculate the inverse using matrix multiplication
           m <- solve(data) %*% data

           ## Set the inverse to the object
           x$setInverse(m)

           ## Return the matrix
           m
}
