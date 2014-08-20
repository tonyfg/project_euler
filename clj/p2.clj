;;Q: Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.
;;A: 4613732

(loop [a 0 b 1 sum 0]
  (if (>= b 4000000)
    sum
    (recur b (+ a b) (if (zero? (rem b 2))
		       (+ sum b)
		       sum))))