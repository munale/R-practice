steps <- read.table("P:/Stepz-Export-2015-06-10.csv", header=TRUE, sep=",")
head(steps)
summary(steps)
str(steps)
steps$goal = ifelse(steps$steps > 10000, 'Y', 'N')
steps$day <- weekdays(as.Date(steps$date))
table(steps$goal)
plot(steps$date, steps$steps, pch=5, col="blue")
title("my steps")
library("ggplot2", lib.loc="C:/Program Files/R/R-3.1.2/library")
ggplot(data=steps, aes(x=date, y=steps, group=1)) + geom_line(colour="red", size=.75) + geom_point(colour="red", size=2, shape=21, fill="black")

daysplits <- split(steps, steps$day)
library("plyr", lib.loc="C:/Program Files/R/R-3.1.2/library")

byday <- ddply(steps,~day,summarise,mean=mean(steps))
byday