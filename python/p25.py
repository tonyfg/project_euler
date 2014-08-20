#Q: What is the first term in the Fibonacci sequence to contain 1000 digits?
#A: 4782

aprev = 1
prev = 1
i = 3
while True:
    cur = aprev+prev
    if len(str(cur)) >= 1000:
        print i
        break
    aprev = prev
    prev = cur
    i += 1
