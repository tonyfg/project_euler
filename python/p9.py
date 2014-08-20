#Q: There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.
#A: 31875000

found = False
m = 2
while not found:
    for n in xrange(1, m):
        a, b, c = 2*m*n, m**2-n**2, m**2+n**2
        if a+b+c == 1000:
            print str(a*b*c)
            found = True
    m += 1
