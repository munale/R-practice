# get census key at http://api.census.gov/data/key_signup.html
library(jsonlite)
install.packages('curl')
install.packages("httr")


url1 <- "http://api.census.gov/data/2010/sf1?key=eeeb2c9848fbe0eff9c43b61bd3dbae278a8c6e8&get=P0010001,NAME&for=state:*"
download.file(url1, destfile="AllPopByState", method="curl")
allstate <- fromJSON("AllPopByState")
colnames(allstate) <- allstate[1,]
allstate <- allstate[-1,]
allstateDF <- data.frame(allstate)

url2 <- "http://api.census.gov/data/2010/sf1?key=eeeb2c9848fbe0eff9c43b61bd3dbae278a8c6e8&get=P0030003,NAME&for=state:*"
download.file(url2, destfile="BlackPopByState", method="curl")

url3 <- "http://api.census.gov/data/2010/sf1?key=eeeb2c9848fbe0eff9c43b61bd3dbae278a8c6e8&get=P0010001,P0030003,NAME&for=county:*"
download.file(url3, destfile="AllAndBlackPopByState", method="curl")

url4 <- "http://api.census.gov/data/2010/sf1?key=eeeb2c9848fbe0eff9c43b61bd3dbae278a8c6e8&get=P0010001,NAME,REGION&for=state:*"
download.file(url4, destfile="byrace", method="curl")

url5 <- "http://api.census.gov/data/2010/sf1?key=eeeb2c9848fbe0eff9c43b61bd3dbae278a8c6e8&get=P0030001,NAME,P0030002,P0030003,P0030004,P0030005,P0030006,P0030007,P0030008&for=state:*"
download.file(url5, destfile="therace", method="curl")

url6 <- http://api.census.gov/data/2010/sf1?get=NAME,P0010001,P0030001&for=state:*&in=county:*&key=eeeb2c9848fbe0eff9c43b61bd3dbae278a8c6e8


# example urls
#http://api.census.gov/data/2010/sf1?key=eeeb2c9848fbe0eff9c43b61bd3dbae278a8c6e8&get=P0030001,NAME,P0030002,P0030003,P0030004,P0030005,P0030006,P0030007,P0030008&for=congressional+district:*&in=state:17
#http://api.census.gov/data/2010/sf1?get=P0010001,NAME&in=state:*&key=eeeb2c9848fbe0eff9c43b61bd3dbae278a8c6e8&for=county:*





allrace <- fromJSON("byrace")
bytherace <- fromJSON("therace")






names(allstate)
blackstate <- fromJSON(url2)
bothstate <- fromJSON(url3)
head(allstate)
head(blackstate)
head(bothstate)







