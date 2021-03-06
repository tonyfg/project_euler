;;Q: Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
;;A: 25164150

(let [n100 (range 1 101), sum (reduce + n100)]
  (- (* sum sum) (reduce + (for [n n100] (* n n)))))