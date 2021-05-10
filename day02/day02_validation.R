data <- read.csv("C:/Users/User/Desktop/R-data/descriptive.csv")
data

# install.packages("readr")
library(readr)
view(data)
head(data)

summary(data$survey)
length(data$survey)
table(data$survey)

# install.packages("prettyR")
library(prettyR)
freq(data$survey)

binom.test(c(136, 14), p=0.8, alternative = 'greater', conf.level=0.95)
