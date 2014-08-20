#Q: What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
#A: 232792560

multiples = list(range(20, 10, -1))

print multiples
i=40
while True:
    divis = True
    for j in multiples:
        if i%j != 0:
            divis = False
            break
    if divis:
        print(str(i))
        break
    i+=20

