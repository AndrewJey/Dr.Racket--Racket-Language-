#lang racket

;ESTO ES UN COMENTARIO...

;Para un string:
"HOLA"

;Para concatenar strings:
(string-append "HOLA" " MUNDO")

;Para contar la longitud del string:
"El largo es de: " (string-length (string-append "HOLA" " YO"))

;SUMA:
"La suma de 2 más 3, dá: " (+ 2 3)

;RESTA:
"La resta de 3 menos 2, dá: " (- 3 2)

;DIVISIÓN SIN FUNCIÓN:
"La división de 6 entre 2, dá: " 6/2

;DIVISIÓN CON FUNCIÓN:
"La división de 9 entre 3, dá: " (/ 9 3)

;MULTIPLICACIÓN:
"La multiplicación de 5 por 2, dá: " (* 5 2)

;Para sumar el total de 2 longitudes de strings:
"La suma de la longitud de 'Hola Yo' y de 'Hola Mundo', es de: "
(+ (string-length (string-append "HOLA" " YO")) (string-length (string-append "HOLA" " MUNDO")))

"Si y vale 2, y x vale 4; La multiplicación de x y y es de: "
;Uso de Operación con "let":
  ;LET: "Permite definir unas variables locales, darles un valor y evaluar una expresión con ese valor definido."
(let ((x 4) ;Definición de let y variable temporal 'x'
      (y 2)) ;Definición de variables temporal 'y' dentro del let
    (* x y)) ;Operación de unificación (binding) del let, usando ambas variables temporales x & y

;Como curiosidad, terminamos presentando el siguiente código que implementa un intérprete de Scheme en Scheme utilizando el bucle read-eval-print:
(define (rep-loop)
   (display "mi-interprete> ")              ; imprime un prompt
   (let ((expr (read)))                     ; lee una expresión
      (cond ((eq? expr 'adios)              ; el usuario quiere parar?
             (display "saliendo del bucle read-eval-print")
             (newline))
            (else                           ; en otro caso
             (write (eval expr))            ; evaluar e imprimir
             (newline)
             (rep-loop))))) 