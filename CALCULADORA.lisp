; =========================================================
; SISTEMA PRINCIPAL EN LISP
; MENÚ + TABLAS + ÁREAS
; =========================================================

; =========================================================
; MENÚ PRINCIPAL
; =========================================================
(defun menu-principal ()
  "Función principal que controla el flujo del programa mediante un menú interactivo."
  (let ((opcion 0))
    (loop
      (format t "~%--- MENÚ DE OPCIONES ---~%")
      (format t "1. Ejecutar Calculadora~%")
      (format t "2. Mostrar Tablas de Multiplicar~%")
      (format t "3. Calcular Área de Figuras~%")
      (format t "4. Salir~%")
      (format t "Seleccione una opción: ")

      (finish-output) 
      
      (setq opcion (read))
      
      (cond
        ((= opcion 1) (mi-calculadora))   ;; Llama al trabajo del Integrante 1
        ((= opcion 2) (mostrar-tablas))   ;; Llama al trabajo del Integrante 2
        ((= opcion 3) (calcular-areas))   ;; Llama al trabajo del Integrante 2
        ((= opcion 4) 
         (progn 
           (format t "~%Saliendo del programa...~%")
           (return)))                     ;; Rompe el bucle loop y termina
        (t 
         (format t "~%Opción no válida, intente de nuevo.~%"))))))



;; =========
;; funciones
;; =========

(defun mi-calculadora ()
  "Módulo desarrollado por Integrante 1: Operaciones aritméticas básicas."
  (format t "~%[Módulo Calculadora en construcción]~%"))

(defun mostrar-tablas ()
  "Módulo desarrollado por Integrante 2: Tablas de multiplicar del 1 al 10."
  (format t "~%[Módulo Tablas en construcción]~%"))

(defun calcular-areas ()
  "Módulo desarrollado por Integrante 2: Áreas de 4 figuras geométricas."
  (format t "~%[Módulo Áreas en construcción]~%"))



;; no borres esto
(menu-principal)

; =========================================================
; PROGRAMA: TABLAS DE MULTIPLICAR DEL 1 AL 10 EN LISP
; DESCRIPCIÓN:
; Este programa muestra las tablas de multiplicar del 1 al 10
; utilizando funciones, ciclos y formato de salida.
; =========================================================
(defun mostrar-encabezado ()
    (format t "~%========================================")
    (format t "~%     TABLAS DE MULTIPLICAR EN LISP")
    (format t "~%========================================~%"))
(defun mostrar-linea ()
    (format t "----------------------------------------~%"))
(defun mostrar-tabla (numero)
    (format t "~%Tabla del ~D~%" numero)
    (mostrar-linea)
(loop for i from 1 to 10 do
    (format t "~2D x ~2D = ~3D~%"
            numero
            i
            (* numero i)))
(mostrar-linea))
(defun ejecutar-tablas ()
(mostrar-encabezado)
(loop for n from 1 to 10 do
    (mostrar-tabla n))
(format t "~%Programa finalizado correctamente.~%"))
(ejecutar-tablas)



; =========================================================
; PROGRAMA: CÁLCULO DE ÁREAS DE FIGURAS GEOMÉTRICAS
; LENGUAJE: LISP
; =========================================================
(defun mostrar-menu ()
    (format t "~%======================================")
    (format t "~%   CALCULADORA DE ÁREAS EN LISP")
    (format t "~%======================================")
    (format t "~%1. Área de un cuadrado")
    (format t "~%2. Área de un rectángulo")
    (format t "~%3. Área de un triángulo")
    (format t "~%4. Área de un círculo")
    (format t "~%5. Área de un trapecio")
    (format t "~%6. Salir")
    (format t "~%======================================")
    (format t "~%Seleccione una opción: "))
(defun area-cuadrado (lado)
    (* lado lado))
(defun area-rectangulo (base altura)
    (* base altura))
(defun area-triangulo (base altura)
    (/ (* base altura) 2))
(defun area-circulo (radio)
    (* 3.1416 radio radio))
(defun area-trapecio (base-mayor base-menor altura)
    (/ (* (+ base-mayor base-menor) altura) 2))
(defun iniciar-programa ()
    (let ((opcion 0))

        (loop
            (mostrar-menu)
            (setf opcion (read))
            (cond
((= opcion 1)
    (format t "~%Ingrese el lado del cuadrado: ")
    (let ((lado (read)))
        (format t "~%Área del cuadrado = ~,2F~%"
                (area-cuadrado lado))))

((= opcion 2)
    (format t "~%Ingrese la base: ")
    (let ((base (read)))
        (format t "Ingrese la altura: ")
        (let ((altura (read)))
            (format t "~%Área del rectángulo = ~,2F~%"
                    (area-rectangulo base altura)))))
((= opcion 3)
    (format t "~%Ingrese la base: ")
    (let ((base (read)))
        (format t "Ingrese la altura: ")
        (let ((altura (read)))
            (format t "~%Área del triángulo = ~,2F~%"
                    (area-triangulo base altura)))))

((= opcion 4)
    (format t "~%Ingrese el radio: ")
    (let ((radio (read)))
        (format t "~%Área del círculo = ~,2F~%"
                (area-circulo radio))))
((= opcion 5)
    (format t "~%Ingrese la base mayor: ")
    (let ((bmayor (read)))
        (format t "Ingrese la base menor: ")
        (let ((bmenor (read)))
            (format t "Ingrese la altura: ")
            (let ((altura (read)))
                (format t "~%Área del trapecio = ~,2F~%"
                        (area-trapecio
                            bmayor
                            bmenor
                            altura))))))

((= opcion 6)
    (format t "~%Programa finalizado.~%")
    (return))
(t
    (format t "~%Opción inválida. Intente nuevamente.~%"))
            )
        )
    )

; =========================================================
; EJECUCIÓN DEL PROGRAMA
; =========================================================

(iniciar-programa)
