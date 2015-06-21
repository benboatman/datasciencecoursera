## General Overivew of Homework Assignment 2

## Objective 1 is to create a Cache Function for a Simple Matrix
## Objective 2 is to create a Solve Function to solve the inverse of the matrix, either cached or not.
## Objective 3 create a simple matrix that can be cached, and solved for in the inverse
## Objective 4 some of the intitial background bits of code used to get an idea of what matrixes, and how the solve/det
  ## Funtions worked.

 ## Objecive 1 makeCacheMatrix function to store the inverse of a matrix in cache
      
      
      makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
          x<<-y
          m<<-NULL
        }
        get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
      }
 
 ## Objective 2 calculates the inverse of the matrix using the solve fuction. it first checks to see if the matrix
      ## is in cache, if so it grabs the solved matrix from cache, else it solves the inverse of the matrix 
      ##passed to it.
           
      cacheSolve <- function(x=matrix(), ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
          message("getting cached data")
          return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
      }
      
 ## Objective 3
           
      ## a <- Sets makeCacheMatrix to a simple value, too hard to type that out, when figuring out how to remodel 
      ## the Vector example
      
      a<-makeCacheMatrix()
      
      ##a$set below sets a simple matrix to begin the process of solving for the inverse, and the event that the
      ##inverse of the matrix needs to be cached.
      
      ### This matrix needs to be run for the two functions to operate correctly.
      
      
      a$set(b<-matrix(1:4,2,2))
      print(b)
  
   ## Objective 4   
      
          
     ## Initial Test Code and Functoins to see what is needed to create a matrix, determine any issues with the Solve
     ## function, and then execute the solve.
      
     ## T1 <- function(x = matrix(x2 <- runif(9, 5.0, 7.5),3,3)) { 
     ##   x<-matrix(x2 <- runif(9, 5.0, 7.5),3,3)
     ##   print(x)
        
     ## } 
     
     ## x<-matrix(x2 <- runif(9, 5.0, 7.5),3,3)
       
     ##S1 <- function(x,..) { 
     ##   solve(x)
     ## } 
      
     ## det(x)  - checks to see whether the determinant of a matrix = 0, 
      

