# install.packages("MASS")
library(MASS)

data5 <- data(Animals)
data5

head(Animals)

dim(Animals)
length(Animals)

summary(Animals$brain)
length(Animals$body)
length(Animals$brain)

mean(Animals$brain)
x <- table(Animals$brain)
barplot(x)
prop.table(x)

sort(Animals$brain)

Animals$brain2[Animals$brain <= 13] <- 1
Animals$brain2[Animals$brain >= 13 & Animals$brain <= 200] <- 2
Animals$brain2[Animals$brain >= 200] <- 3
Animals
barplot(prop.table(table(Animals$brain2)))

install.packages("psych")
library(psych)
#install.packages("descr")
library(descr)
freq(Animals$brain)


brain <- Animals$brain

skewness(brain)
kurtosis(brain)
hist(brain)

par(mfrow = c(1,1))
hist(brain, freq = F)
lines(density(brain), col='blue')

x <- seq(0, 6000, 0.1)
curve(dnorm(x, mean(brain), sd(brain)), col='red', add=T)

qqnorm(x)
qqline(x, col="red", lwd=2)
