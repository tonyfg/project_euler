#Q: Find the sum of the digits in the number 100!
#A: 648

from operator import mul
print reduce(lambda x,y: int(x)+int(y), list(str(reduce(mul, list(range(100, 0, -1))))))
