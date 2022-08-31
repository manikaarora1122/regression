setwd("C:/Users/marora/Desktop/regression")
data <- read.delim("production.txt", header = T, sep = "\t")
data = read.csv("nyc.csv", header = T)
hist(data$RunTime)
hist(data$RunSize)
plot(data$RunTime,data$RunSize,xlab = "run time",ylab = "runsize")

my.linear<-lm(data$RunSize~data$RunTime)
summary(my.linear)
abline(my.linear)
my.linear$residuals
plot(data$RunTime,my.linear$residuals,xlab="runtime",ylab ="residuals" )
qqnorm(my.linear$residuals,pch=16)
qqline(my.linear$residuals)

