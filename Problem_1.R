## Problem set 3, Assignment 2

library(ggplot2)

## Read the data
invoices <- read.delim('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/invoices.txt')
str(invoices)
## 

## Crate a scatterplot

ggplot(data = invoices, aes(x = Invoices, y = Time)) + geom_point()


## Create a 

fit <- lm(Time ~ Invoices, data = invoices)
summary(fit)

## 

fit

ggplot(data = invoices, aes(x = Invoices, y = Time)) +
  geom_point() + 
  geom_abline(slope = 0.01129, intercept = 0.64171)