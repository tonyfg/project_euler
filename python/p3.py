#Q: What is the largest prime factor of the number 600851475143?
#A: 6857

def isprime(n):
    i=3
    if n%2 == 0:
        return False
    while i < (n**0.5)+1:
        if n%i == 0:
            return False
        i += 2
    return True

num = 600851475143
max = num//2+1
i = 3
current = 1
while i < max:
    if isprime(i) and num%i==0:
        current = current*i
        if current == num:
            print(str(i))
            break
    i += 2
