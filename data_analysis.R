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

##i)Normality test
str(dat)

###a)Kolmogorov_smirnov using ks.test() function
ks.test(rural,"pnorm",mean=mean(rural),sd=sd(rural))

###b)Shapiro wilk test using shapiro.test() function
shapiro.test(rural)


Ho: Rural is normally disributed
H1: Rural is not normally distributed

p-value=0.2054(shapiro)/0.9799(kolmgorov)

Decision: Since, p-value(0.2054)>alpha(0.05),then we fail to reject null hypothesis.

Conclusion: Therefore, rural is normally distributed.


##ii)1sample T-test
is.na(dat)
summary(dat)

#to use dataOctopus.csv
octo=read.table(file.choose(),header=TRUE,sep=";")
attach(octo)
summary(octo)
str(octo)
octo$Sex=as.factor(octo$Sex)

#Checking the missing value
is.na(octo) #no missing value
summary(octo)

#normality test
shapiro.test(octo$Weight)
ks.test(octo$Weight,"pnorm",mean=mean(Weight),sd=sd(Weight))

Ho: Weight is normally disributed
H1: Weight is not normally distributed

p-value=0.0733(shapiro)/0.2483(kolmgorov)

Decision: Since, p-value(0.0733)>alpha(0.05),then we fail to reject null hypothesis.

Conclusion: Therefore, Weight is normally distributed.


#performing 1 sample t.test using t.test() function

t.test(Weight,mu=2700,conf.level=0.95)


Ho : mu=2700 kg
H1 : mu=!2700 kg

p-value=0.00956

Decision : Since the p-value(0.00956)<alpha(0.05), then we reject the null

Conclusion : Therefore, the average weight of octopus is not 2700 kg  








