#Topic 5:Statistival Data Analysis

#1)Descriptive Analysis
library(MASS)
dat=road
attach(dat)

summary(dat)
round(apply(dat,2,mean),1)

install.packages("pastecs") #install pastecs package
library(pastecs)
round(stat.desc(dat),2)

install.packages("psych")
library(psych)
describe(dat)

Mean=apply(dat,2,mean) #to compute mean
Variance=apply(dat,2,var) #to compute var
Std.Dev=apply(dat,2,sd) #to compute standard deviation
Min=apply(dat,2,min) #to compute minimum value
Max=apply(dat,2,max) #to compute maximum value
Median=apply(dat,2,median) #to compute median value
Quartile=apply(dat,2,quantile) #to explore the quartile
Quartile=Quartile[-c(1,2,3,5),]
Skewness=apply(dat,2,skew) #to compute the Skewness


summary3=rbind(Min,Max,Variance,Std.Dev,Median,Quartile,Skewness)
summary3=round(summary3,2)
	
***************************************


#2)Inferential Analysis