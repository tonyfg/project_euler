#Q: Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#A: 25164150

(1..100).reduce(:+)**2 - (1..100).reduce{ |a,b| a + b**2 }
