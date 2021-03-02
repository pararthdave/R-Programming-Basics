dt<-iris        
nm<-names(dt)  
ncol(iris)
nm
class(dt$Species)
sapply(dt,class)
ncol(dt)
dt$Species<-as.character(dt$Species)
class(dt$Species)
dt$Species=as.factor(dt$Species)
dt$Sepal.Length2<-dt$Sepal.Length/100 
dt$Petal.LengthWidth=dt$Petal.Length+dt$Petal.Width
dt$Sepal.Length2[dt$Sepal.Length>6.0]<- NA 
sum(is.na(dt$Sepal.Length2))
library(Hmisc)
impute(dt$Sepal.Length2, fun = mean(dt$Sepal.Length2))
dt$Sepal.Length2 <- with(dt, impute(dt$Sepal.Length2, mean))
dt$Mean.feature<-apply(dt[1:4], 1, mean) 
dt$Median.feature<-apply(dt[1:3], 1, median) 
dt$Sepal.Width2<-cut(dt$Sepal.Width, c(1.9, 2.5, 2.8, 5.0), c("Short", "Medium", "Tall"))
dt$Sepal.Width2<-cut(dt$Sepal.Width, c(2.0, 2.5, 2.8, 5.0), c("Short", "Medium", "Tall"))
sum(is.na(dt$Sepal.Width2))
class(dt$Sepal.Width2)
levels(dt$Sepal.Width2)
dt$Sepal.Width2<-cut(dt$Sepal.Width, c(2.0, 2.5, 2.8, 5.0), c("Extra Short", "Medium", "Tall"))
dt$Sepal.Width2
dtsentosa<-subset(dt, Species=="setosa")
dtversicolor<-subset(dt, Species=="versicolor")
subset(dt, fun=mean(dt$Petal.Width, Species=="versicolor"))
aggregate(Petal.Width ~ Species, data = dt, FUN = mean)
aggregate(Petal.Width ~ Species, data = dt, FUN = median)
