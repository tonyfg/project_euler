#Q: If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#A: 

single = ['one', 'two', 'three', 'four',
          'five', 'six', 'seven', 'eight', 'nine']

ten_20 = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen',
          'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

tens = ['twenty', 'thirty', 'forty', 'fifty',
        'sixty', 'seventy', 'eighty', 'ninety']

hundred = 'hundred'

hundred_and = 'hundredand'

thousand = 'onethousand'


def count(l):
    '''Works for lists of strings aswell as strings'''
    return sum(map(len, l))

#thousand only appears once
total = count(thousand)

# (0-9 + 31-99 ) * 10 for repetitions on each hundredth
total += 10*9*count(single)


total += 9*count(hundred) + 10*count(ten_20) + 10*count(tens)
total += 99*9*count(hundred_and)

print str(total)
