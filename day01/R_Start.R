name <- '홍길동'
name2 <- '김길동'
name
name2

age <- 100
#comments
age

#install.packages("ggplot2")
install.packages("corrplot")

#console clear: ctrl + L
#case sensitivity
#ctrl + shift + 1 : R Script Joom+-

library(corrplot)
install.packages("lattice")

library(lattice)

a = mtcars
a

mcors2 = cor(mtcars$gear, mtcars$carb)
mcors2

xyplot(gear~carb, data=mtcars)

lm = plot(mtcars$gear~mtcars$carb)

abline(lm(mtcars$gear~mtcars$carb))

mcor = cor(mtcars)
mcor

corrplot(mcor) #heatmap  
plot(mtcars) #pairplot
round(mcor, 2)

# 무게와 마일간의 관계: 상관계수, 그래프로 그리기
mcors3 = cor(mtcars$wt, mtcars$mpg)
mcors3

xyplot(wt~mpg, data=mtcars)
lm = plot(mtcars$mpg~mtcars$wt)
abline(lm(mtcars$mpg~mtcars$wt))

# 전체 항목 중에서 양의 상관계수가 제일 높은 것은?
# mtcars$disp~mtcars$syl 배기량~실린더
mcor2 = cor(mtcars)
mcor2
corrplot(mcor2)

# 전체 항목 중에서 음의 상관계수가 제일 높은 것은?
# mtcars$mpg~mtcars$wt 마일~무게

