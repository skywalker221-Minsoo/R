library(ggplot2)

# install.packages("ggmap")
library(ggplot2)
library(ggmap)

seoul <- c(left=126.77, bottom=37.40, right=127.17, top=37.70)

map <- get_stamenmap(seoul, zoom=10, maptype='terrain')

ggmap(map)


################# ass find modify!####################
pop <- read.csv(file.choose(), header=T)
