#lang racket


(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g) (/ d g))))

(provide (contract-out [amount (and/c number? positive?)]))

(define amount 69)
