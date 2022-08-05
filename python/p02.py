#Q: Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.
#A: 4613732

def fib(n):
    result = 0
    a, b = 0, 1
    while b < n:
       if b % 2 == 0: result += b
       a, b = b, a+b
    return result

fib(4000000)
