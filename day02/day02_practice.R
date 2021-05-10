data <- read.csv("C:/Users/User/Desktop/R-data/descriptive.csv")
data

dim(data)
length(data)
length(data$survey)
head(data)
str(data)

summary(data)

data <- subset(data, gender == 1 | gender == 2)
summary(data) #최소 최대값

x <- table(data$gender) #빈도를 구해줌

barplot(x)

#비율을 구하고 싶은 경우에는?
prop.table(x)

#학력수준으로 요약/빈도/비율/그래프
length(data$level)
data2 <- subset(data, level == 1 | level == 2 | level == 3)
summary(data2)

y <- table(data$level)
barplot(y)

prop.table(y)

length(data$survey)
data3 <- subset(data, survey == 1 | survey == 2 | survey == 3 | survey == 4 | survey == 5)
summary(data3)

summary(data3$survey)

z <- table(data$survey)
prop.table(z)
barplot(z)
prop.table(table(data$survey))
hist(table(data$survey))
pie(table(data$survey))

summary(data$cost)
data4 <- subset(data, cost >= 2 & cost <= 10)
summary(data4)
summary(data4$cost)
plot(data4$cost)

mean(data4$cost)
median(data4$cost)

sort(data4$cost)
sort(data4$cost, decreasing = T)

data$cost2[data$cost >= 1 & data$cost <= 3] <- 1
data$cost2[data$cost >= 4 & data$cost <= 6] <- 2
data$cost2[data$cost >= 7] <- 3
data
prop.table(table(data$cost2))

data <- subset(data, data$cost2 == 1 | data$cost2 == 2 | data$cost2 == 3)
data

cost.tot = table(data$cost2)
barplot(cost.tot)
pie(cost.tot)

# 왜도, 첨도 구하는 라이브러리 설치
# install.packages("moments")
library(moments)
cost <- data$cost

skewness(cost)
kurtosis(cost)
hist(cost)

par(mfrow = c(1,1))
hist(cost, freq = F)
lines(density(cost), col='blue')

x <- seq(0, 8, 0.1)
curve(dnorm(x, mean(cost), sd(cost)), col='red', add=T)

qqnorm(x)
qqline(x, col="red", lwd=2)
