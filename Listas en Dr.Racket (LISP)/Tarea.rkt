#lang racket
(define listapares (list 2 4 6 8 10))
(define lista2 (list 1 3 5 7 9))
"Para saber el tamaño de la lista use la funcion tamaño "
(define tamaño (length listapares))
"Para seleccionar el primer item de la lista use la funcion primero "
(define primero (first listapares))
"Para seleccionar el segundo item de la lista use la funcion segundo item "
(define segundo (second listapares))
"Para seleccionar el tecer item de la lista use la funcion tercero "
(define tercero (third listapares))
"Para seleccionar el cuarto item de la lista use la funcion cuarto "
(define cuarto (fourth listapares))
"Para seleccionar el quinto item de la lista use la funcion quinto "
(define quinto (fifth listapares))
"Si desea unir la cadena de numero pares con la de numero pares use la funcion union"
(define union (append listapares lista2))
"Para imprimir la lista de forma inversa use la funcion invertir "
(define invertir (reverse listapares))
