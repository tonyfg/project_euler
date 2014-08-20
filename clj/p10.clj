;; Q: Find the sum of all the primes below two million.
;; A: 142913828922

(defn sum-primes [max-val]
  (let [size (int (+ 1 (Math/sqrt max-val)))]
    (loop [numbers (zipmap (range 3 max-val 2) (repeat true)), i 3]
      (if (>= i size)
        (+ 2 (apply + (for [n (keys numbers) :when (true? (get numbers n))] n)))
        (let [new-numbers (apply assoc numbers (interleave (range (* 2 i) max-val i) (repeat false)))]
          (recur
           new-numbers
           (loop [j (inc i)] (if (get new-numbers j) j (recur (inc j))))))))))