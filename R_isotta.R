require(plyr)
library(tidyverse)
# a)
x <- rnorm(10000, mean=0, sd=1)
# b)
y <- rnorm(10000, mean=5, sd=1)
# c)
u <- rbinom(10000, size=1, prob = 0.5)
# d)
mat <- data.frame(x, y, u)
names(mat)
mat <- mutate(mat, z=ifelse(u==0,x,y))
# e)
hist(mat$z)
result.mean <- mean(mat$z)
result.median <- median(mat$z)
result.sd <- sd(mat$z, na.rm = FALSE)

# f)
mean.v.1 <-c()
for (i in 1:500){
  n.obs.1 <- sample(mat$z, size=10, replace = TRUE)
mean.v.1 <-c(mean.v.1, mean(n.obs.1))
  }
mean.v
length(mean.v)
hist(mean.v.1)
result1.mean <- mean(mean.v.1)
result1.median <- median(mean.v.1)
result1.sd <- sd(mean.v.1, na.rm = FALSE)

# g)
mean.v.2 <-c()
for (i in 1:500){
  n.obs.2 <- sample(mat$z, size=50, replace = TRUE)
  mean.v.2 <-c(mean.v.2, mean(n.obs.2))
}
hist(mean.v.2)
result.mean <- mean(mean.v.2)
hist(mean.v.2)
result2.mean <- mean(mean.v.2)
result2.median <- median(mean.v.2)
result2.sd <- sd(mean.v.2, na.rm = FALSE)


# h)
mean.v.3 <-c()
for (i in 1:500){
  n.obs.3 <- sample(mat$z, size=300, replace = TRUE)
  mean.v.3 <-c(mean.v.3, mean(n.obs.3))
}

hist(mean.v.3)
result3.mean <- mean(mean.v.1)
result3.median <- median(mean.v.1)
result3.sd <- sd(mean.v.1, na.rm = FALSE)


