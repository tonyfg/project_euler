;;Q: What is the 10001st prime number?
;;A: 104743

;; This solution is way too slow...
;; (defn is-prime [n]
;;   (not-any? zero? (map rem (repeat n) (range 2 n))))

;; (loop [i 1, n 1]
;;   (if (= n 10001)
;;     i
;;     (if (is-prime i)
;;       (recur (inc i) (inc n))
;;       (recur (inc i) n))))


;; This is better ;)
(defn p [n]
  (let [logn (Math/log n), loglogn (Math/log logn)]
    (* n (+ logn (dec loglogn) (/ (* 1.8 loglogn) logn)))))

(defn prime-at-idx [i]
  (loop [primes [2], numbers (range 3 (p i))]
    (if (= (count primes) 10001)
      (first numbers)
      (recur (conj primes (first numbers))
	     (let [n (first numbers)]
	       (doall (filter #(not (zero? (rem % n))) numbers)))))))