#1. Load the "trees" data. The name of the Data Frame should be "dt".
dt<-trees

#2. Compute Measure of Central Tendencies such as
#mean
mean(dt$Girth)
mean(dt$Height)
mean(dt$Volume)
#arithmetic mean
amG=(sum(dt$Girth)/nrow(dt))
amH=(sum(dt$Height)/nrow(dt))
amV=(sum(dt$Volume)/nrow(dt))
#gemometric mean
library(psych)
geometric.mean(dt$Girth)
#harmonic mean
harmonic.mean(dt)
#median
median(dt$Girth)
median(dt$Height)
median(dt$Volume)
#mode
apply(dt[1:3],2,mode)

#3. Calculate Standard Deviations of Simple mean, Arithmetic mean, Geometric mean for all columns (variables) of the data
#simple mean
sd(dt$Girth)
sd(dt$Height)
sd(dt$Volume)
#geometric mean
sdgeoG=sqrt(((sum((dt$Girth-geometric.mean(dt$Girth))**2))/(nrow(dt))))
sdgeoH=sqrt(((sum((dt$Height-geometric.mean(dt$Height))**2))/(nrow(dt))))
sdgeoV=sqrt(((sum((dt$Volume-geometric.mean(dt$Volume))**2)))/(nrow(dt)))
sdgeoG
sdgeoH
sdgeoV
#harmonic mean
sdharG=sqrt(((sum((dt$Girth-harmonic.mean(dt$Girth))**2))/(nrow(dt))))
sdharH=sqrt(((sum((dt$Height-harmonic.mean(dt$Height))**2))/(nrow(dt))))
sdharV=sqrt(((sum((dt$Volume-harmonic.mean(dt$Volume))**2)))/(nrow(dt)))
sdharG
sdharH
sdharV

#4. Calculate the Skewness in all the variables for all the mean values (Simple, Arithmetic, Geometric).
skewn<-function(x,y){
       a<-sum((x-y)**3)/length(x)
       b<-sum((x-y)**2)/length(x)
       m=a/(b**1.5)
       print(m)
}
skewn(dt$Girth,mean(dt$Girth))
skewn(dt$Height,mean(dt$Height))
skewn(dt$Volume,mean(dt$Volume))
skewn(dt$Girth,geometric.mean(dt$Girth))
skewn(dt$Height,geometric.mean(dt$Height))
skewn(dt$Volume,geometric.mean(dt$Volume))
skewn(dt$Girth,harmonic.mean(dt$Girth))
skewn(dt$Height,harmonic.mean(dt$Height))
skewn(dt$Volume,harmonic.mean(dt$Volume))

