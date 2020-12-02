### Install the Trend package
install.packages("trend")
### Load the Trend package
library("trend")
### Load the data
mydata <- read.table("F:/MKtest/Area3-text.txt", sep="\t", header=TRUE,col.names=c("Year", "Area"))
sens.slope(mydata$Area)
### M-Ktest
mk.test(mydata$Area, continuity = TRUE)
### Visualization
plot(mydata$Year,mydata$Area, type="o", lwd="3",col="red", xlab="Year", ylab="Area")