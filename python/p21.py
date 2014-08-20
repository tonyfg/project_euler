#Q: Evaluate the sum of all the amicable numbers under 10000.
#A: 31626

def divisor_sum(n):
    return sum([i for i in xrange (1, n//2+1) if not n%i])
    
def sum_amicable(start, end):
    sum = 0
    for i in xrange(start, end):
        tmp = divisor_sum(i)
        if i == divisor_sum(tmp) and i != tmp:
            sum += i+tmp
    return sum/2 #each pair is found twice, so divide by 2 ;)

print sum_amicable(1,10000)
