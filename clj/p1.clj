;; Q: Add all the natural numbers below one thousand that are multiples of 3 or 5.
;; A: 233168

(eval (conj (loop [result () i 999]
  (if (= 2 i)
    result
    (if (or (zero? (rem i 3)) (zero? (rem i 5)))
      (recur (conj result i) (dec i))
      (recur result (dec i))))) +))

(reduce + (filter #(or (zero? (rem % 3)) (zero? (rem % 5))) (range 1000)))
