#lang racket

(define duple
  (lambda (n item)
    (if (zero? n)
        '()
        (cons item (duple (- n 1) item)))))

(duple 4 '(ha ha))