#lang racket

(define filter-in
  (lambda (pred lst)
    (if (null? lst)
        '()
        (filter-in-helper pred lst '()))
    ))

(define filter-in-helper
  (lambda (pred lst filtered-lst)
    (if (null? lst)
        filtered-lst
        (let ([head (car lst)])
          (if (pred head)
              (filter-in-helper pred (cdr lst) (append filtered-lst (list head)))
              (filter-in-helper pred (cdr lst) filtered-lst))))))
