#lang racket

(for/sum ([x (in-range 1000)])
  (if (or (= 0 (modulo x 5))
          (= 0 (modulo x 3)))
      x
      0))
