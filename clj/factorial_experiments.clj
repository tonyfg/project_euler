;;Mais rapida de longe (17ms), provavelmente a que ocupa menos ram
;;porque nao usa seqs
(defn fac_loop [n]
  (loop [i 2 accum 1]
    (if (= i n)
      (* i accum)
      (recur (+ 1 i) (* i accum)))))

;;Assim assim (52ms)
(defn fac_red [n]
  (reduce * (range 2 (+ 1 n))))

;;Mais marada (18-44ms), possivelmente ocupa mais ram...
(defn fac_recur [n accum]
  (if (= 1 n)
    accum
    (recur (- n 1) (* n accum))))