library(ggplot2)
library(RCurl)
library(devtools)

allData <- getURL("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv")
myData <- read.csv(text = allData, header=TRUE, colClasses=c("character"), sep = ",")
head(myData, 3)

steps <- myData$Steps
miles <- myData$Miles

plot(steps, miles,xlab="Steps Taken", ylab="Miles Walked")
