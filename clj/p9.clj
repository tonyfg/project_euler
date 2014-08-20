;; Q: There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.
;; A: 31875000

(loop [m 2]
  (let [mm (* m m)
        triplets (filter
                  #(= (apply + %) 1000)
                  (for [n (range 1 m)]
                    (let [nn (* n n)] (list (* 2 m n) (- mm nn) (+ mm nn)))))]
    (if (empty? triplets)
      (recur (inc m))
      (apply * (first triplets)))))