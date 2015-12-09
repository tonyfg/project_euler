#Q: Find the largest palindrome made from the product of two 3-digit numbers.
#A: 906609

max_pal = 0
999.step(100, -1){ |i|
  999.step(100, -1){ |j|
    n = i*j
    str = n.to_s
    max_pal = n if n > max_pal && str == str.reverse
  }
}
max_pal
