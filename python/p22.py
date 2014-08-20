#Q: What is the total of all the name scores in the file?
#A: 871198282

f = open('22.txt', 'r')
string = f.read()
names = [i[1:-1] for i in string.split(',')]
names.sort()
score = 0
for i in xrange(0, len(names)):
    score += sum([ord(j)-ord('A')+1 for j in names[i]])*(i+1)
print 'Total score is: ' + str(score)
f.close()
