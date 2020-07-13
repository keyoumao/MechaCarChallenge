### Challenge
library(tidyverse)
MPG_Regression <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#Multiple linear regression
lm(mpg ~ MPG_Regression$"vehicle length" + MPG_Regression$"vehicle weight" + MPG_Regression$"spoiler angle" + AWD,data=MPG_Regression) #generate multiple linear regression model
summary(lm(mpg ~ MPG_Regression$"vehicle length" + MPG_Regression$"vehicle weight" + MPG_Regression$"spoiler angle" + AWD,data=MPG_Regression)) #generate summary statistics
#convert data frame into numeric matrix
MPG_matrix <- as.matrix(MPG_Regression[,c("vehicle length","vehicle weight","spoiler angle","AWD","mpg")])
cor(MPG_matrix)
lm(mpg ~ MPG_Regression$"vehicle length", MPG_Regression) #create linear model
summary(lm(mpg ~ MPG_Regression$"vehicle length", MPG_Regression)) #summarize linear model
model <- lm(mpg ~ MPG_Regression$"vehicle length", MPG_Regression)  #create linear model
yvals <- model$coefficients['MPG_Regression$"vehicle length"']*MPG_Regression$"vehicle length" +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(MPG_Regression,aes(x=MPG_Regression$"vehicle length",y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

