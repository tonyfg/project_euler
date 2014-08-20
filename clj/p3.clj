;;Q: What is the largest prime factor of the number 600851475143?
;;A: 6857

(defn is-prime [n]
  (let [n (int n)]
    (if (zero? (rem n (int 2)))
      false
      (not-any? zero? (map rem
			   (repeat n)
			   (take-nth 2 (range 3 (+ (. Math sqrt n) 1))))))))

(defn largest-factor []
  (loop [num 600851475143, max (+ (/ num 2) 1), i 3, current 1]
    (if (= current num)
      (- i 2)
      (if (and (is-prime i) (zero? (rem num i)))
	(recur num max (+ i 2) (* current i))
	(recur num max (+ i 2) current)))))
