# 1
  x=0:100
  y=dpois(x,lambda =50)
  plot(x,y,type = 'h', main="Poisson Distribution for 50 Cars per Hour",
       xlab="Cars Per Hour", ylab="Probability")

  ppois(90,lambda =50,lower.tail = FALSE)

  
# 2
  x=0:100
  y=dpois(x,lambda =30)
  plot(x,y,type = 'h', main="Poisson Distribution for 30 Cars per Hour",
       xlab="Cars Per Hour", ylab="Probability")
  
# 3
  x=0:100
  y=dpois(x,lambda =70)
  plot(x,y,type = 'h', main="Poisson Distribution for 70 Cars per Hour",
       xlab="Cars Per Hour", ylab="Probability")