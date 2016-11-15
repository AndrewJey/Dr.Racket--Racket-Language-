#lang racket

(define lista (list 1 2 3 4 5 6 7 8 9 10 11))
(define lista2 (list 1 2 3))
(define lista3 (list 4 5 6))
(define lista4 (list "hola" "mundo"))
(define lista5 (list "miguel" "cuak"))
(define precios (list 500 300 1500 10500 523 344 2 32 12525))

(define (menor-cuatro n) (< n 4))

(define (factorial x)
  (if(= x 0) 1
     (* x (factorial (- x 1)))))

(define (sumarlista l)
  (if(empty? l) 0
     (+(car l) (sumarlista (cdr l)))))

(define (tamlista l)
  (if(empty? l) 0
     (length l)))