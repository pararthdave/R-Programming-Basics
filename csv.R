library(Hmisc)
#accessing csv file
dt<-read.csv('C:/Users/Pararth Dave/Desktop/DAIICT/R proj/Boston_Edited - Boston_Edited.csv')
class(dt)
nc=ncol(dt)
nr=nrow(dt)
dt[1:5,c('crim','zn')]
#cleaning up data
is.na(dt)
print(sum(is.na(dt)))
dtcln=na.omit(dt)  #ommits lines havin na values
print(sum(is.na(dtcln)))
impute(dt$rm,mean)

