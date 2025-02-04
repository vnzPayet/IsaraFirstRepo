# des graphiques

iris

## graphics de Rbase
hist(iris$Sepal.Length)
plot(iris$Petal.Length, iris$Petal.Width)

boxplot(iris$Petal.Length~ iris$Species)
plot(iris$Petal.Length ~ iris$Species)

plot(iris$Petal.Length, iris$Petal.Width)

points(iris$Petal.Length[iris$Species=="setosa"], 
       iris$Petal.Width[iris$Species=="setosa"], 
       col="red", pch=16)

par(mfrow=c(1,2))
boxplot(iris$Petal.Length~ iris$Species)
stripchart(iris$Petal.Length~ iris$Species)

## ggplot2
library(ggplot2)

ggplot(data=iris, 
       mapping= aes(x=Species, y=Sepal.Length,
                    fill=Species))+
  geom_boxplot()+
  theme_light()

ggplot(data=iris, 
       mapping= aes(x=Sepal.Length, fill=Species))+
  geom_histogram(bins=10 )+
  theme_light()+
  facet_grid(rows=vars(Species))


ggplot(data=iris, 
       mapping= aes(x=Petal.Length, y=Petal.Width, colour =Species))+
  geom_point()+
  theme_light()+
  facet_grid(rows=vars(Species))

ggplot(data=iris, 
       mapping= aes(x=Petal.Length, y=Petal.Width))+
  geom_point()+
  geom_smooth(method="lm")+
  theme_light()

ggplot(data=iris, 
       mapping= aes(x=Petal.Length, y=Petal.Width, group=Species))+
  geom_point()+
  geom_smooth(method="lm", aes(colour = Species))+
  theme_light()


## Autres données
library(dplyr)
data("starwars")
starwars
data("diamonds")
diamonds

library("palmerpenguins")
data("penguins")
penguins
