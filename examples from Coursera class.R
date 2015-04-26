con <- url("http://www.daringfireball.net", "rt") #using R to read text from webpages
x <- readLines(con)
head(x)
x


doubla <- function(x=10) { x*2   #basic R function with a default argument


}





times <- function(a,b){  #basic R function with 2 arguments
	a^b
}


OddOrEven <- function(x){               #using if function
  if (x%%2 == 0) { print("even")}
  else {print("odd")}
}


cubelist <- function(y) {          #using for loop
  for(i in 1:y) {
    print(i^3)
  }
}


mat <- matrix(1:6, 2, 3)         #using nested for loops
for(i in seq_len(nrow(mat))) {
  for(j in seq_len(ncol(mat))) {
    print(mat[i, j])
  }   
}

count <- 0                        #using while loop
unders <- function(z)
  while(count < z){
    print(count)
  count <- count+1
  }

oddities <- function(w){           #using next command in loop
  for(i in 1:w){
    if(i%%2 ==0){
      next
    }
    print(i)
  }
  
  
}
