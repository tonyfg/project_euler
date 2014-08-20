#Q: Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
#A: 4179871

#all numbers after this can be expressed as sum of 2 abundant numbers
lim=28123

#find all abundant numbers up to lim
abundant = [i for i in xrange(1, lim)
            if sum([j for j in xrange(1, i//2+1) if not i%j]) > i]
print('done getting abundant numbers')
#check for numbers that are result of sum of abundant numbers
numbers = {}
for i in abundant:
    for j in abundant:
        tmp = i+j
        if tmp < lim:
            numbers[tmp] = True
numbers = numbers.keys()

#get all numbers up to lim that are not on the previous list
final = [i for i in xrange(1, numbers[0])]
for i in xrange(len(numbers)-1):
    for j in xrange(numbers[i]+1, numbers[i+1]):
        final.append(j)
print sum(final)
