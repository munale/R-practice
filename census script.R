install.packages("httr")
url1 <- "http://api.census.gov/data/2010/sf1?key=k1&get=P0010001,NAME&for=state:*"
url2 <- "http://api.census.gov/data/2010/sf1?key=k1&get=P0030003,NAME&for=state:*"
url3 <- "http://api.census.gov/data/2010/sf1?key=k1&get=P0010001,P0030003,NAME&for=county:*"
download.file(url1, destfile="AllPopByState", method="curl")
download.file(url2, destfile="BlackPopByState", method="curl")
download.file(url3, destfile="AllAndBlackPopByState", method="curl")
allbystate <- read.csv("AllPopByState", header=TRUE, sep=",")
blackbystate <- read.csv("BlackPopByState", header=TRUE, sep=",")
bothbystate <- read.csv("AllAndBlackPopByState", header=TRUE, sep=",")

library(jsonlite)
install.packages('curl')
allstate <- data.frame(fromJSON(url1))
allstate <- fromJSON("AllPopByState")
names(allstate)
blackstate <- fromJSON(url2)
bothstate <- fromJSON(url3)
head(allstate)
head(blackstate)
head(bothstate)



