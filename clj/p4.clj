;;Q: Find the largest palindrome made from the product of two 3-digit numbers.
;;A: 906609

(defn palindrome? [n]
  (let [str (.toString n)]
    (every? true? (map =  str (reverse str)))))

(defn big-palindrome []
  (loop [i 999, pal 1]
    (let [n (loop [j 999]
	      (let [n2 (* i j)]
		(if (zero? j)
		  nil
		  (if (palindrome? n2)
		    n2
		    (recur (dec j))))))]
      (if (> i 1)
	(if (and n (> n pal))
	  (recur (dec i) n)
	  (recur (dec i) pal))
	(if (and n (> n pal))
	  n
	  pal)))))