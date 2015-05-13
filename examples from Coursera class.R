con <- url("http://www.daringfireball.net/projects/", "rt") #using R to read text from webpages
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


dalist <- c("a", "b", "c", "d")  #subsetting a list
dalist[1]
dalist[[3]]


seclist <- list(dub = 2.2, city = 1:4, recs = "vinyl")
seclist$dub
seclist$city
seclist[[2]][[3]]


trilist <- c(1, 4, 5, NA, 6, NA, 8, 9, NA)  #removing NA values from vector using subsetting. 
bad <- is.na(trilist)
trilist[!bad]


quadlist <- c("a", NA, NA, "b", "c", "d", "e", NA, NA)   #using complete cases to find out which positions(columns) dont have missing values in any row
bothgood <- complete.cases(trilist, quadlist)
bothgood
trilist[bothgood]
quadlist[bothgood]


ab <- 1:4; cd <- 34:37   #vectorized operations 
ab + cd
ab*cd
ab > 2
cd > 35


hw1 <- read.csv("P:/hw1_data.csv", header=TRUE, sep=",") #example of filtering data frame based on conditions in 2 columns and then taking averave of a third column, while omitting NA values in that third column 
hw1[hw1$Ozone > 31 & hw1$Temp > 90,]
mean(hw1$Solar.R, na.rm = TRUE)




x<- list(a= 1:45, b = rnorm(10), c = 6:60)
lapply(x, mean)

y <- 1:4
lapply(y, runif)

sapply(x, mean)

z <- matrix(rnorm(140), 14,10)
apply(z, 1, mean)
apply(z, 2, mean)
apply(z, 1, quantile, probs = c(.25, .5, .75))

L1 <- list(1,2,3,4,5)
L2 <- list(5,4,3,2,1)
mapply(max, L1, L2)


d <- c(rnorm(20), runif(20), rnorm(20,6))
e <- gl(3, 20)
e
tapply(d, e, mean)
tapply(d, e, range)
split(d, e)

library(datasets)
airs <- split(airquality, airquality$Month)
lapply(airs, colMeans)
sapply(airs, colMeans)
sapply(airs, colMeans, na.rm = TRUE)


str(airs)


rnorm(19)
rpois(4)

sample(1:10, 4)
sample(1:10, 6)
sample(letters, 6)
sample(1:10, 2, replace=TRUE)




