;; Q: What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
;; A: 232792560

(loop [divisors (range (int 2) (int 21)) x (int 40)]
  (if (every? zero? (map rem (repeat x) divisors))
    x
    (recur divisors (+ x (int 20)))))