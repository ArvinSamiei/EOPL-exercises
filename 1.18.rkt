#lang racket

(define swapper
  (lambda (first second lst)
    (if (null? lst)
        '()
        (if (symbol? (car lst))
            (cons (swap first second (car lst)) (swapper first second (cdr lst)))
            (cons (swapper first second (car lst)) (swapper first second (cdr lst)))))))

(define swap
  (lambda (first second symbol)
    (if (equal? symbol first)
        second
        (if (equal? symbol second)
            first
            symbol))))
