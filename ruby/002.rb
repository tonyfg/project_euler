#Q: Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.
#A: 4613732

f1 = f2 = 1
n = 0
loop do
  tmp = f2
  f2 += f1
  f1 = tmp
  break if f2 > 4000000
  n += f2 if f2.even?
end
