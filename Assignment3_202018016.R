#1
dt=trees
#2
#mean
mg=mean(dt$Girth)
mh=mean(dt$Height)
mv=mean(dt$Volume)
#AM
amg=(sum(dt$Girth)/3)
amh=(sum(dt$Height)/3)
amv=(sum(dt$Volume)/3)

library(psych)
#GM
gm=geometric.mean(dt)
#HM
hm=harmonic.mean(dt)
#median
median(dt$Girth)
median(dt$Height)
median(dt$Volume)
#mode
mode(dt$Girth)
mode(dt$Height)
mode(dt$Volume)

#3
#sd of simple mean
sd(dt$Girth)
sd(dt$Height)
sd(dt$Volume)
#sd of gm
sdgmg=sqrt(((sum((dt$Girth-geometric.mean(dt$Girth))**2))/(nrow(dt))))
sdgmh=sqrt(((sum((dt$Height-geometric.mean(dt$Height))**2))/(nrow(dt))))
sdgmv=sqrt(((sum((dt$Volume-geometric.mean(dt$Volume))**2))/(nrow(dt))))
#sd of hm
sdhmg=sqrt(((sum((dt$Girth-harmonic.mean(dt$Girth))**2))/(nrow(dt))))
sdhmh=sqrt(((sum((dt$Height-harmonic.mean(dt$Height))**2))/(nrow(dt))))
sdhmv=sqrt(((sum((dt$Volume-harmonic.mean(dt$Volume))**2))/(nrow(dt))))

#4
skw=function(x,y){
  a=sum((x-y)**3)/length(x)
  b=sum((x-y)**2)/length(x)
  m=a/(b**1.5)
  print(m)
}
skw(dt$Girth,mean(dt$Girth))
skw(dt$Height,mean(dt$Height))
skw(dt$Volume,mean(dt$Volume))
skw(dt$Girth,geometric.mean(dt$Girth))
skw(dt$Height,geometric.mean(dt$Height))
skw(dt$Volume,geometric.mean(dt$Volume))
skw(dt$Girth,harmonic.mean(dt$Girth))
skw(dt$Height,harmonic.mean(dt$Height))
skw(dt$Volume,harmonic.mean(dt$Volume))