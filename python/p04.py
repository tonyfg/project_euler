#Q: Find the largest palindrome made from the product of two 3-digit numbers.
#A: 906609

def is_palindrome(t):
    a = list(str(t))
    b = list(a)
    a.reverse()
    if b == a:
        return True
    return False

a = 0
last_j = 0
for i in xrange(999, 99, -1):
    if i == last_j:
        break
    for j in xrange(999, 99, -1):
        temp = i*j
        if is_palindrome(temp) and temp > a:
            a = temp
            last_j = j
            break
print(str(a))
