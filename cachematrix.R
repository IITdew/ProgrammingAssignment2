## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # tu budeme uchovávať cache inverzie
  
  set <- function(y) {
    x <<- y       # nastaví novú maticu
    inv <<- NULL  # vymaže uloženú inverziu, lebo matica sa zmenila
  }
  
  get <- function() x  # vráti aktuálnu maticu
  
  setinverse <- function(inverse) inv <<- inverse  # uloží inverziu do cache
  getinverse <- function() inv                       # vráti cache inverziu
  
  # vrátime list funkcií, ktoré umožnia nastaviť a získať matica aj inverziu
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
