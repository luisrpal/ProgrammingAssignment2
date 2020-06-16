## Coursera week 3 - Programming assignment
## functions do create a special matrix and the obtain the inverse

## Creation of special matrix

makeCacheMatrix <- function(x = matrix()) {
 i<-NULL
 set<-function(y){
         x<<-y
         i<<-NULL
         }
  get<-function()x
  setinverse<-function(inverse) i<<-inverse
  getinverse<-function() i
  list(set=set,
       get=get,
       setinverse=setinverse,
       getinverse=getinverse)        

}


## Obtaining the inverse of the created matrix

cacheSolve <- function(x, ...) {
        i=x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
                }
        data<-x$get()
        i<-solve(data, ...)
        x$setinverse(i)
        i                
}
