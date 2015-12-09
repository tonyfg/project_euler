#Q: Add all the natural numbers below one thousand that are multiples of 3 or 5.
#A: 233168

(0..999).select{ |n| n%3==0 || n%5==0 }.reduce(:+)
