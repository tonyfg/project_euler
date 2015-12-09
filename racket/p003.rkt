#lang racket

(define (primes-until n)
  (letrec ([numbers (for/list ([x (in-range 3 n 2)]) x)]
        [filter-multiples (lambda (x l)
                            (filter (lambda (y) (or (= x y)
                                                    (< 0 (remainder y x))))
                                    l))]
        [sieve (lambda (i l)
                 (let ([res (if (< i (length l))
                                (filter-multiples (list-ref l i) l)
                                l)])
                   (if (= (length res) (length l))
                       l
                       (sieve (add1 i) res))))])
    (sieve 0 numbers)))


(primes-until 10)

;; (define (cenas n)
;;   (letrec ([ceiling (add1 (quotient n 2))]
;;            [prime-factor? (lambda (x))]))

;;   )
