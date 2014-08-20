#Q: What is the sum of the digits of the number 2**1000?
#A: 1366

sum([int(i) for i in list(str(2**1000))])
