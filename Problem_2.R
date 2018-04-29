## Problem set 3, Assignment 2

library(ggplot2)

## Read the data
invoices <- read.delim('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/invoices.txt')
str(invoices)
## 

## a) Scatterplot

ggplot(data = ???, aes(x = ???, y = ???)) +
  geom_point()

## b) Fit a linear regression model with OLS.

fit <- lm(??? ~ ???, data = invoices)

## c) Summary of the model fit
summary(fit)

## d) Plot estimated regression line

ggplot(data = ???, aes(x = ???, y = ???)) +
  geom_point() +
  geom_abline(slope = ???, intercept = ???)

## e) Estimate expected time for 130 invoices E(Y|X=130)

## f) Estimate a 95% confidence interval for the start-up time

## g) Estimate a 95% prediction interval for E(Y|X=130)

## h) Test

## i) 

## k) 

lm(Time ~ 1, data = invoices)

## l) 

ggplot(data = ???, aes(x = ???, y = ???)) +
  + geom_point()
+ geom_abline(slope = ???, intercept = ???)
