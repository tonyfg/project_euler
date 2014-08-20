#Q: Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.
#A: 4613732

def fib(n):
    result = []
    a, b = 0, 1
    while b < n:
        result.append(b)
        a, b = b, a+b
    return result

print sum([i for i in fib(4000001) if i%2==0])
