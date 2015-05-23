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




x<- list(a= 1:45, b = rnorm(10), c = 6:60)       # using lapply to apply functions across items in list
lapply(x, mean)

y <- 1:4
lapply(y, runif)

sapply(x, mean)

z <- matrix(rnorm(140), 14,10)   # using apply to take mean across rows and colums of matrix
apply(z, 1, mean)
apply(z, 2, mean)
apply(z, 1, quantile, probs = c(.25, .5, .75))

L1 <- list(1,2,3,4,5)     # using mapply to apply max function across pairwise elements of two lists 
L2 <- list(5,4,3,2,1)
mapply(max, L1, L2)


d <- c(rnorm(20), runif(20), rnorm(20,6))    # using tapply to find mean and range of list for each grouping within list 
e <- gl(3, 20)
e
tapply(d, e, mean)
tapply(d, e, range)
split(d, e)

library(datasets)              #using split to split a dataset by value in the month column. then can use apply functions to take means of columns for each month 
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




e<- rnorm(100, 0, 2)            #using R to simulate a quadratic model using rnorm to model error term and random variable
x<- rnorm(100)
y <- 2 - 40*x + 2.4 *x^2 + e 
summary(y)


pnorm(1) # cumulative distribution
dnorm(1) # density function for less than x


# using str to return info on dataframe
a <- c(1,4,8,9)
b<- c(3,5,4,9)
d <- c(88,88,3,44)

df <- rbind(a,b,d)
str(df)
ddf <- cbind(a,b,d)
str(ddf)

# sampling without and with repalcement 
sample(letters, 6)
sample(1:100, 8)
sample(1:10, 4, replace=TRUE)


# using R to download a datafile from a website and reading into R
fileURL <- .....com
download.file(url, destfile=, method="curl")
mydata <- read.csv or read.table("destfile")


# dataframe tools
summary()
str()
table()
colSums()
rowSums()
table(var %in% c(123))
DF[DF$var %in% c(123),]
xt <- xtabs(numvar ~ var1 +var2, data=DF) # only works for all numeric variables
try creating new variables based on a condtion. df$new var = ifelse(df$old > 0, true, false)
melt()
dcast(df, id ~ variable)






