# DataAnalysis_R_DSC551

- First time , learning about the data analysis. 

## What inside ?


1. Descriptive Analysis
  - stats.desc(dataset,2)
  - describe(dataset)
  

2. Inferential Analysis
  i) Normality test
     - Kolmogorov-Smirnov - ks.test(dataset,"pnorm",mean=mean(dataset),sd=sd(dataset))
     - Shapiro Wilk - shapiro.test(dataset)
     
  ii) 1sample T-test
     - use normality test first(shapiro.test,ks.test)
     - then performing t.test() to create a conclusion
