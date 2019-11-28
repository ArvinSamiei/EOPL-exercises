#lang racket

(define list-set
  (lambda (lst index element)
    (if (null? lst)
        '()
        (if (zero? index)
        (cons element (cdr lst))
        (cons (car lst) (list-set (cdr lst) (- index 1) element))))))