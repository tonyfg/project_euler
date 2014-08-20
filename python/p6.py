#Q: Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#A: 25164150

from operator import add
print sum(list(range(1,101)))**2 - reduce(add, [i**2 for i in xrange(1,101)])
