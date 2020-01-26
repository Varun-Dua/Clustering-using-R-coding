library(datasets)
library(ggplot2)
head(iris)
library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()
set.seed(20)
irisCluster <- kmeans(iris[, 3:4], 3, nstart = 20)
irisCluster
table(irisCluster$cluster, iris$Species)
irisCluster$cluster <- as.factor(irisCluster$cluster)
ggplot(iris, aes(Petal.Length, Petal.Width, color = irisCluster$cluster)) + geom_point()


OrchardSprays

ggplot(OrchardSprays, aes(decrease, treatment, color = treatment)) + geom_point()

set.seed(20)
SprayCluster <- kmeans(OrchardSprays[, 1:3], 8, nstart = 20)
SprayCluster

table(SprayCluster$cluster, OrchardSprays$treatment)
ggplot(OrchardSprays, aes(decrease, treatment, color = SprayCluster$cluster)) + geom_point()

