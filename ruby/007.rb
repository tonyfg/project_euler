#Q: What is the 10001st prime number?
#A: 104743

# find maximum range we need to search (see prime number theorem)
def p(n)
  n * (Math::log(n) + Math::log(Math::log(n))-1 + 1.8*Math::log(Math::log(n))/Math::log(n))
end
