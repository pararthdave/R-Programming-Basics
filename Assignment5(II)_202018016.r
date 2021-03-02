library(MASS)
#Q1
dt=Boston
#Q2
reg=lm(formula=medv~crim+zn+indus+chas+nox+rm+age+dis+rad+tax+ptratio+black+lstat, data=dt)
print(summary(reg))
#Q3
dt1 = sort.int(sample(nrow(dt), nrow(dt)*.8))
train<-dt[dt1,]
test<-dt[-dt1,]
#Q4
reg1=lm(formula=medv~crim+zn+indus+chas+nox+rm+age+dis+rad+tax+ptratio+black+lstat, data=train)
res=predict(reg1,test)
print(res)
#Q5
err=mean(abs(res-test$medv))
print(err)
hist(res-test$medv)

