# Unit Test Script for cachematrix
# https://class.coursera.org/rprog-007/forum/thread?thread_id=83

source("~/R/ProgrammingAssignment2/cachematrix.R")

message("Part 1")
amatrix = makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2))
amatrix$get()
cacheSolve(amatrix)

message("Part 2")
amatrix$getInverse()
cacheSolve(amatrix)

message("Part 3")
amatrix$set(matrix(c(0,5,99,66), nrow=2, ncol=2))
cacheSolve(amatrix)  
amatrix$get() 
amatrix$getInverse()