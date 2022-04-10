#6a
n = 100
m = 50
std = 8

data <- rnorm(n,m,std)
avg <- mean(data)
x1 <- floor(avg)
x2 <- round(avg)

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "o", col="black")

#6b
x <- rnorm(100,50,8)
hist(x, breaks = 50,
     main = "5025201272_Sarah Alissa Putri_Probstat_C_DNhistogram")

#6c
var(x)
