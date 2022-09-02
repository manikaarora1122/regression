##############################################
### Homework 1- Data Import, plot and modeling 
### Due 09/07/2022 
##############################################
## Members: Manika Arora,Ha Tran,Hiep Pham

##1.set working directory
setwd("C:/Users/marora/Desktop/class 5310 and 5316")
##2.download the files production.txt and nyc,cvs from blackboard, into that directory
## upload the file into R
data <- read.delim("production.txt", header = T, sep = "\t")
data = read.csv("nyc.csv", header = T)
##3. Take a look at your data!Plot a histogram of both variable
hist(data$RunTime)
hist(data$RunSize)
##3b.plot the scatter plot for X= Runtime and Y = RunSize
## remember that it's good practice to name your plot and label axes
plot(data$RunTime,data$RunSize,xlab = "run time",ylab = "runsize")
##4.do a simple linear regression of Y on X, save it as an object
my.linear<-lm(data$RunSize~data$RunTime)
##5.use summary ()to look at the model
summary(my.linear)
##6a. Think about what are some things that the familiar.Is there anything that isn't fimiliar?
## what conclusions can you draw?
my.linear$residuals
plot(data$RunTime,my.linear$residuals,xlab="runtime",ylab ="residuals" )
qqnorm(my.linear$residuals,pch=20)
qqline(my.linear$residuals)
##7 Add the regression line to the scatter plot.
abline(my.linear)
##8.Now, do a regression for nyc.cvs
data2 = read.csv("nyc.csv", header = T)
## regressing Price on food,then again for Price on Decor
plot(data2$Food,data2$Price)
my.linear<-lm(data2$Price~data2$Food)
summary(my.linear)
abline(my.linear)
plot(data2$Decor,data2$Price)
my.linear1<-lm(data2$Price~data2$Decor)
summary(my.linear1)
abline(my.linear1)
## use plot()to make  a side-by-side boxplot of Decor vs East
##(the east of fifth ave indicator)
## You will need to turn East into a "factor"
factor(data2$East)
labels=c("Decor","East")
boxplot(data2$Decor,data2$East,names=labels)
