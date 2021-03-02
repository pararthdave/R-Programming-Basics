nasdaq=read.csv("C:/Users/Pararth Dave/Desktop/DAIICT/R proj/Nasdaq100.csv")
nifty=read.csv("C:/Users/Pararth Dave/Desktop/DAIICT/R proj/Nifty100.csv")

#CHecking the class of data frame's columns
sapply(nifty, class)
sapply(nasdaq, class)

print(sapply(nifty,class))
#long way to convert to numeric from character
nifty$Open<-as.numeric(nifty$Open)
nifty$High<-as.numeric(nifty$High)
nifty$Low<-as.numeric(nifty$Low)
nifty$Close<-as.numeric(nifty$Close)
nifty$Adj.Close<-as.numeric(nifty$Adj.Close)
nifty$Volume<-as.numeric(nifty$Volume)

#           OR

#shorter way to convert to numeric from character
nifty[2:7]<-sapply(nifty[2:7],as.numeric)
nasdaq[2:7]<-sapply(nasdaq[2:7],as.numeric)

#check for NULL values
NUL<-which(is.na(nifty),arr.ind = TRUE)

#remove that ROW which is having NA from nifty
#niftyNew<-nifty[-NUL[,1]] (Doesn't bhork)
niftyNew<-na.omit(nifty)
sapply(nasdaq,class)

sapply(niftyNew,class)
intersect(niftyNew$Date,nasdaq$Date)
#find two new data frames 
#(one for nfty and one for nasdaq) 
#which contains trading data at common dates
date=merge(niftyNew,nasdaq,by = c('Date','Date'))
sapply(date,class)

#finding correlation
cor(date$Close.x,date$Close.y)
    


#EXTENSION OF LAST LAB

#plot between niftynew$close and nasdaq$close
plot(niftyNew$Close,type="o",col="Red")
lines(nasdaq$Close,type="o", col = "Blue")

#histogram for nifty$close-mean(nifty$close)
h=niftyNew$Close - mean(niftyNew[['Close']])
class(h)
hist(h, col = "Blue")
l=nasdaq$Close - mean(nasdaq[['Close']])
hist(l,col='red')
a=niftyNew$Close
b=nasdaq$Close
length(a)
y <- numeric(length = length(a))

for (i in seq_len(length(a))) {
  ind <- c((i - 2):(i + 2))
  ind <- ind[ind %in% seq_len(length(a))]
  y[i] <- mean(a[ind])
}
x <- numeric(length = length(b))

for (i in seq_len(length(b))) {
  ind <- c((i - 2):(i + 2))
  ind <- ind[ind %in% seq_len(length(b))]
  x[i] <- mean(b[ind])
}

plot(y,type="l",col="black",ylim=c(7000,13000),lty=2)
lines(x,type="l",col="magenta",lty=2)
lines(niftyNew$Close,type="l",col="Red")
lines(nasdaq$Close,type="l", col = "Blue")
