#5a
set.seed(1)
rexp(3)

#5b
hist(rexp(10))
hist(rexp(100))
hist(rexp(1000))
hist(rexp(10000))

#5c
n = 100
lambda = 3

set.seed(1)
rataan = mean(rexp(n, lambda))
varian = (sd(rexp(n, lambda)))^2
rataan
varian
