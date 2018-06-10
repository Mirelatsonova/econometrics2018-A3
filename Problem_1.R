## Problem set 3, Problem 1
## Problem description:
## https://firebasestorage.googleapis.com/v0/b/uni-sofia.appspot.com/o/assignments%2FA3.pdf?alt=media

childiq <- read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/childiq.csv')
str(childiq)

## a)

## Create two vectors with child IQ scores:
## - for children whose mother did not finish high school
score0 <- childiq[childiq$mom_hs == 0, 'kid_score']
  
## - for children whose mother finished high school
score1 <- childiq[childiq$mom_hs == 1, 'kid_score']
  
## Use t-tset to test the null hypothesis that
## the two group means are equal 
## (i.e. the difference of the group means is zero)

t.test(score1, score0, var.equal = TRUE)

## The test rejects the null hypothesis of equal group means
## (p-value < 0.05)

## b)

fit <- lm(kid_score ~ mom_hs, data = childiq)


## c)
fit

## Estimated regression line Y_hat = 77.55 + 11.77 * mom_hs

# d)
## The test of the null hypothesis  beta1 = 0 vs. beta1 != 0
## is performed automatically when calling summary(fit)
## and the results are presented along with the coefficient
## estimate

summary(fit)
