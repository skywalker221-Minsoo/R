#단일표본 T검정

getwd()
time <- read.csv("C:/Users/User/Desktop/R-data/one_sample.csv")

head(time)

x <- time$time
head(x)

summary(x)
mean(x)
mean(x, na.rm = T) #결측값을 제거 한 후 평균을 구함.

x1 = na.omit(x) #결측값 제거
x1
hist(x1) #히스토그램
shapiro.test(x1) #샤피로-월콕스 검정
t.test(x1, mu = 5.2) #mu = 평균

#t검정, two.sided = 표본위 위치가 상관이 없다.
t.test(x1, mu = 5.2, alter = 'two.sided', conf.level = 0.95)

result <- t.test(x1, mu = 5.2, alter = 'greater', conf.level = 0.95)
names(result)
str(result)
result$p.value
