#1
dt=iris
#2
dt$ave.length=(dt$Sepal.Length+dt$Petal.Length)/2
#3
plot(dt$ave.length,type="o",ylab='Average Length')
#4
dt$median.length=apply(dt[c(1,3)], 1, median)
#5
plot(dt$ave.length,type="o",col='Red',ylab='Average Length', main="IRIS")
lines(dt$median.length, type = "o", col = "blue")


