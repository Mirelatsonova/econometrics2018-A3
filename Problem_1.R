## Problem set 3, Problem 1

childiq <- read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/childiq.csv')

## a)
## Create two vectors with child IQ scores:
## - for children whose mother did not finish high school
childIqNoHS <- 

## - for children whose mother finished high school
childIqWithHS <- 

## Compute the test statistic for a two-samples t-test (equal variances)
testStat <- 
  
## Compute the critical values at the 95% confidence level
qt(???)
qt(???)

## Compare the test statistic and the critical values and 
## decide whether to reject the null hypothesis or not.

## Perform the test with the t.test function
t.test(x = , y = , mu = , var.equal = TRUE)

## Perform the test with the t.test function
## using the formula interface


## Check 

## b)

lm(??? ~ ???, data = childiq)

## Estimated regression line: Y_hat = 

## c)



