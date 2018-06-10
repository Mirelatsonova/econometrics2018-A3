## Problem set 3, Problem 2
## Problem description:
## https://firebasestorage.googleapis.com/v0/b/uni-sofia.appspot.com/o/assignments%2FA3.pdf?alt=media

library(ggplot2)

## Read the data
invoices <- read.delim('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/invoices.txt')
str(invoices)

## a) Scatterplot
ggplot(data = invoices, aes(x = Invoices, y = Time)) +
  geom_point()

## b) Fit a linear regression model with OLS.
fit <- lm(Time ~ Invoices, data = invoices)

## c) Summary of the model fit
summary(fit)

## d) Appromimate 95% confidence interval for beta0

## Lower limit
0.6417099 - 2 * 0.1222707
## Upper limit
0.6417099 + 2 * 0.1222707

## e) Plot estimated regression line
ggplot(data = invoices, aes(x = Invoices, y = Time)) +
  geom_point() +
  geom_abline(slope = 0.0112916, intercept = 0.6417099)

## f) Estimate expected time for 130 invoices E(Y|X=130)

0.6417099 + 0.0112916 * 130

## or better:

predict(fit, newdata = data.frame(Invoices = 130))

## g) Estimate a 95% confidence interval for the start-up time
## The problem description says prediction interval
## (we have not discussed that). The interval calculated below
## is an approximate 95% CONFIDENCE interval for the expected
## work time for 130 invoices.

est <- predict(fit, newdata = data.frame(Invoices = 130), se.fit = TRUE)

## Lower limit
est$fit - 2 * est$se.fit
## Upper limit
est$fit + 2 * est$se.fit

## h) 
## Here we deviate from the problem and test the
## null hypothesis that the average time to process one
## additional invoice equals 0.6 minutes (0.01 hours).

testStatistic <- (0.0112916 - 0.01) / 0.0008184

n <- nrow(invoices)
lowerCriticalValue <- - qt(0.975, df = n - 2)
upperCriticalValue <- qt(0.975, df = n - 2)

testStatistic > upperCriticalValue
testStatistic < lowerCriticalValue
testStatistic
## We cannot reject at the 95% significance level (5% error probability)
## because the value of the test-statistic is less than the 
## upper critical value and is greater than the lower critical value

## The p-value of the test is:

2 * pt(-1.578201, df = n - 2)

## i)
## Multiple R squared = 0.8718

## j, k) 

lm(Time ~ 1, data = invoices)

## beta0 is the expected work time per day
## beta0_hat is the sample mean of Y (Time)

## l) 

ggplot(data = invoices, aes(x = Invoices, y = Time)) +
  geom_point() +
  geom_abline(slope = 0, intercept = mean(invoices$Time))
