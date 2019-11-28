#lang racket

(define product
  (lambda (lst1 lst2)
    (if (null? lst1)
        '()
        (append (product-helper (car lst1) lst2) (product (cdr lst1) lst2)))))

(define product-helper
  (lambda (item lst2)
    (if (null? lst2)
        '()
        (cons (list item (car lst2)) (product-helper item (cdr lst2))))))