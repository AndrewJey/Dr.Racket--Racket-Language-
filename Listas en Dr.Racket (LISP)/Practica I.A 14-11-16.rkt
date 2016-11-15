#lang racket

;Creacion de lista predefinida
(define listaA (list 1 2 3 4 5 6 7 8 9 10))
(define listaB (list 44 46 48))
(define listaC (list 50 52 54))

;metodo del arbol
(define (make-bt dato izq der)
  (list dato izq der))
(define vacio-bt '())

;Primer elemento de la lista
(define (dato-bt btree)
  (car btree))
(define (izq-bt btree)
  (car (cdr btree)))
(define (der-bt btree)
  (car (cdr (cdr btree))))
(define (vacio-bt? btree)
  (null? btree))

;Consulta si elos nodos son vacios
(define (hoja-bt? btree)
  ;y si es vacio el izq de la lista
  (and (vacio-bt (izq-bt btree))
       ; o el derecho de la lista
       (vacio-bt (der-bt btree))))

;OPERADORES metodos
(define (to-list-bt btree)
  (if (vacio-bt? btree)
      '()
  (append (to-list-bt (izq-bt btree))
  (list (dato-bt btree))
  (to-list-bt (der-bt btree)))))

;Metodos para la insercion de nodos en orden
(define (insertar-bt x bt) ;insercion definicion
  (cond ;condiciones
    ;cond 1 : si es vacio agregue
    ((vacio-bt? bt) (make-bt x vacio-bt vacio-bt))
    ;cond 2: si es menor que x (dato)
    ((< x (dato-bt bt))
     (make-bt (dato-bt bt) ;;agregue lo siguiente, inserte en el lado izquierdo y enlace el derecho
              (insertar-bt x (izq-bt bt))
              (der-bt bt)))
    ((> x (dato-bt bt)) ;;Si es mayor a x
     ;cond 3
     (make-bt (dato-bt bt) ;haga lo siguiente
              (izq-bt bt) ;inserte en derecho y enlace izquierdo
              (insertar-bt x (der-bt bt))))
    ;cond 4
    ((= x (dato-bt bt) bt)))) ;si ya esta solo devuelva el valor no agregue


#|
  METODO INSERT-LIST
  Insertamos en la lista nodos
|#

(define (insertar-list-bt lista bt)
  (if (null? lista)
      bt
      (insertar-list-bt (cdr lista)(insertar-bt (car lista) bt)
      )))

;Factorial
(define (factorial x)
  (if(= x 0) 1(* x (factorial (- x 1)))))

;Metodo para sumar listas

(define (sumarLista l)
  (if (empty? l) 0
      (+ (first l)(sumarLista (rest l )))))