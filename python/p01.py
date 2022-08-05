#Q: Add all the natural numbers below one thousand that are multiples of 3 or 5.
#A: 233168

sum([i for i in xrange(1,1000) if i%3==0 or i%5==0])
