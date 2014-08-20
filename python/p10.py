#Q: Find the sum of all the primes below two million.
#A: 142913828922

from math import sqrt

max_val = 2000000
numbers = {}
for i in xrange(3, max_val, 2):
    numbers[i] = True

size = int(sqrt(max_val))+1
for i in xrange(3, size, 2):
    if numbers[i]:
        for j in xrange(i*2+1, max_val, 2):
            if j%i == 0:
                numbers[j] = False

print sum([i for i,v in numbers.iteritems() if v])+2
