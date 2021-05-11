#두 집단간 비율검정 문제

getwd()
#setwd("C:/Users/User/Documents/day03/day03")

data <- read.csv("C:/Users/User/Desktop/R-data/two_sample.csv")
data
head(data)

x <- data$gender
head(x)
y <- data$survey
head(y)
table(x)
table(y)
table(x,y, useNA = "ifany")

subset(data, data$gender == 1 | data$gender == 2)
help("prop.test")
prop.test(c(138, 107), c(174, 126), alternative = 'two.sided', conf.level=0.95)
data
