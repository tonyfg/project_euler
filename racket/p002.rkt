#lang racket

(define (fib n)
  (if (= n 0)
      1
      (if (= n 1)
          2
          (+ (fib (- n 1))
             (fib (- n 2))))))

(for/sum ([x (stop-before (in-naturals) (lambda (n) (> (fib n) 4000000)))])
  (let ([f (fib x)])
    (if (= 0 (modulo f 2))
        f
        0)))
