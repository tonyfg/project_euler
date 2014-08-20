#Q: Which Collatz conjecture starting number, under one million, produces the longest chain?
#A: 837799

def collatz(n):
    n_iterations = 1
    while n > 1:
        if n%2: #atencao impar!
            n = 3*n +1
        else:
            n = n//2
        n_iterations += 1
    return n_iterations

n = -1
max_seq = 0
for i in xrange(1, 1000000):
    tmp = collatz(i)
    if tmp > max_seq:
        n = i
        max_seq = tmp
        print(str(i)+': '+ str(max_seq))
