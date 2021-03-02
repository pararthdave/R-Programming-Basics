
heads=0:100
#1
plot(heads,dbinom(heads,size=100, prob=0.5 ),type='h',xlab = 'Number of Heads',
     ylab='Probability',main = 'Flipping a Unbiased Coin 100 times'
    )
      
  
  #2
  plot(heads,dbinom(heads,size=100, prob=0.7 ),type='h',xlab = 'Number of Heads',
       ylab='Probability',main = 'Flipping a biased Coin 100 times'
       )

#3
plot(heads,dbinom(heads,size=100, prob=0.3 ),type='h',xlab = 'Number of Heads',
     ylab='Probability',main = 'Flipping a biased Coin 100 times')

