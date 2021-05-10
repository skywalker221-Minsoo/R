hdtv <- read.csv("C:/Users/User/Desktop/R-data/hdtv.csv", header=TRUE)

library(readr)
library(prettyR)
view(hdtv)
head(hdtv)

summary(hdtv$buy)
length(hdtv$buy)
table(hdtv$buy)

freq(hdtv$buy)

binom.test(c(32, 18), p=0.35, alternative = 'two.sided', conf.level=0.95)
