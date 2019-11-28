#lang racket

(define count-occurrences
  (lambda (sym lst)
    (count-occurrences-helper sym lst 0))
  )

(define count-occurrences-helper
  (lambda (sym lst counter)
    (if (null? lst)
        counter
        (if (symbol? (car lst))
            (if (equal? (car lst) sym)
                (count-occurrences-helper sym (cdr lst) (+ 1 counter))
                (count-occurrences-helper sym (cdr lst) counter))
            (count-occurrences-helper sym (cdr lst) (count-occurrences-helper sym (car lst) counter))))))