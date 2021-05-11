#두 집단 간 비율 검정

library(readr)
data <- read.csv("C:/Users/User/Desktop/R-data/two_sample.csv")
View(data)
head(data)

x <- data$method
y <- data$survey

x; y
#빈도 분석표
table(x)
table(y)

#교차 분석표
table(x, y, useNA = "ifany")

#두 집단 이상의 명목척도의 비율 검정
help("prop.test")
prop.test(c(110, 135), c(150,150), alternative='greater', conf.level=0.95)
