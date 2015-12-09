#Q: What is the largest prime factor of the number 600851475143?
#A: 6857

class Fixnum
  def prime?
    return false if self % 2 == 0
    3.step(self**0.5, 2){ |i| return false if self % i == 0 }
    return true
  end
end

num = 600851475143
fac = 1
3.step(num/2, 2){ |i|
  if i.prime? && num % i == 0
    fac *= i
    break i if fac == num
  end
}
