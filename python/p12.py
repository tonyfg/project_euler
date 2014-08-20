#Q: What is the value of the first triangle number to have over five hundred divisors?
#A: 76576500

from operator import mul

SIEVE_INIT = 5000
SIEVE_INTERVAL = 1000

#incremental implementation of sieve of erastothenes for ranges
#(it would be better with a generator though... also sieve of atkins is faster)
def sieve(start, end, prev_primes):
    print('Sieving from ', start, 'to ', end)
    if not start%2:
        start += 1
    numbers = {}
    for i in xrange(start, end, 2):
        numbers[i] = True

    for i in prev_primes:
        if i > end**0.5:
            break
        for j in xrange(start, end, 2):
            if not j%i:
                numbers[j] = False

    size = int(end**0.5)+1
    for i in xrange(start, size, 2):
        if numbers[i]:
            for j in xrange(i*2+1, end, 2):
                if not j%i:
                    numbers[j] = False
    return [k for k, v in numbers.iteritems() if v]



primes = [2] + sieve(3, SIEVE_INIT, [])
current = 1
i = 2
while True:
    root = current**0.5
    if primes[-1] < root:
        primes += sieve(primes[-1]+2, primes[-1]+SIEVE_INTERVAL, primes)
        
    factors = {}
    tmp = current
    for j in primes:
        if j > root or tmp == 1:
            break
        if not tmp%j:
            tmp = tmp//j
            factors[j] = 1
        while True:
            if tmp%j:
                break
            else:
                tmp = tmp//j
                factors[j] += 1

    exponents = [v+1 for v in factors.values()]
    if len(exponents) > 0 and reduce(mul, exponents) > 500:
        print('Result: ' + str(current))
        break
        
    current += i
    i += 1
