#1
dt=read.csv('C:/Users/Pararth Dave/Desktop/DAIICT/R proj/Normal_Distribution_Data.csv')

#2
mn=mean(dt$Data)
s=sd(dt$Data)
x=dnorm(dt$Data,mean=mn,sd=s)
plot(dt$Data,x)

#3
prob<-pnorm(10, mean=mn, sd=s, lower.tail = FALSE)
print (prob)
#4
plot(dt$Data, type='l')

