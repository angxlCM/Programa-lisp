; Adair Andre Mundo Dominguez / Juan Luis Madueño Gil / Cristhian Anthony Torres Tineo
; Full botisto


; =========================================================
; MENÚ PRINCIPAL
; =========================================================
(defun menu-principal ()
  "Función principal que controla el flujo del programa mediante un menú interactivo."
  (let ((opcion 0))
    (loop
      (format t "~%--- MENÚ DE OPCIONES ---~%")
      (format t "1. Ejecutar Calculadora~%")
      (format t "2. Mostrar Tabla de Multiplicar del 1 al 10~%")
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
  (format t "~%##### CALCULADORA #####~%")
  (format t "Operaciones: +, -, *, /, log, exp, abs~%")
  (let* ((a (progn (format t "Ingrese el primer número (o base): ") (finish-output) (read)))
         (b (progn (format t "Ingrese el segundo número (para abs no importa, inserte cualquiera): ") (finish-output) (read)))
         (op (progn (format t "Ingrese la operación (+, -, *, /, log, exp, abs): ") (finish-output) (read))))

  (case op
      ('+ (format t "~%Resultado: ~A~%" (+ a b)))
      ('- (format t "~%Resultado: ~A~%" (- a b)))
      ('* (format t "~%Resultado: ~A~%" (* a b)))
      ('/ (if (= b 0)
              (format t "~%Error: Dominio inválido (división por cero).~%")
              (format t "~%Resultado: ~A~%" (/ a b))))

      ;logaritmo de b en base a
      ('log (cond
        ((<= a 0) (format t "~%Error: La base del logaritmo debe ser mayor que cero (~A <= 0).~%" a))
        ((= a 1)  (format t "~%Error: La base del logaritmo no puede ser 1.~%"))
        ((<= b 0) (format t "~%Error: El argumento del logaritmo debe ser mayor que cero (~A <= 0).~%" b))
        (t        (format t "~%Resultado: ~A~%" (log b a)))))

      ;exponencial: a elevado a la b
      ('exp (format t "~%Resultado: ~A~%" (expt a b)))
      ('abs (format t "~%Resultado: ~A~%" (abs a)))
      (t (format t "~%Operación no válida.~%")))))


(defun mostrar-tablas ()
  (format t "~%#### TABLAS DE MULTIPLICAR 1 al 10 ####~%~%")
  
  ; Fila de encabezado (números del 1 al 10)
  (format t "  x  |")
  (loop for i from 1 to 10 do
    (format t "~4D" i))
  (format t "~%")
  
  ; Línea separadora
  (format t "----+----------------------------------------~%")
  
  ; Filas de la matriz
  (loop for n from 1 to 10 do
    (format t "~3D |" n)
    (loop for i from 1 to 10 do
      (format t "~4D" (* n i)))
    (format t "~%")))

(defun calcular-areas ()
  (let ((opcion 0))
    (loop
      ; Menu
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
      (format t "~%Seleccione una opción: ")
      (finish-output)
      (setf opcion (read))
      
      (cond
        ((= opcion 1)
         (format t "~%Ingrese el lado del cuadrado: ")
         (finish-output)
         (let ((lado (read)))
           (format t "~%Área del cuadrado = ~,2F~%" (* lado lado))))

        ((= opcion 2)
         (format t "~%Ingrese la base: ")
         (finish-output)
         (let ((base (read)))
           (format t "Ingrese la altura: ")
           (finish-output)
           (let ((altura (read)))
             (format t "~%Área del rectángulo = ~,2F~%" (* base altura)))))

        ((= opcion 3)
         (format t "~%Ingrese la base: ")
         (finish-output)
         (let ((base (read)))
           (format t "Ingrese la altura: ")
           (finish-output)
           (let ((altura (read)))
             (format t "~%Área del triángulo = ~,2F~%" (/ (* base altura) 2)))))

        ((= opcion 4)
         (format t "~%Ingrese el radio: ")
         (finish-output)
         (let ((radio (read)))
           (format t "~%Área del círculo = ~,2F~%" (* 3.1416 radio radio))))

        ((= opcion 5)
         (format t "~%Ingrese la base mayor: ")
         (finish-output)
         (let ((bmayor (read)))
           (format t "Ingrese la base menor: ")
           (finish-output)
           (let ((bmenor (read)))
             (format t "Ingrese la altura: ")
             (finish-output)
             (let ((altura (read)))
               (format t "~%Área del trapecio = ~,2F~%"
                       (/ (* (+ bmayor bmenor) altura) 2))))))

        ((= opcion 6)
         (format t "~%Programa finalizado.~%")
         (return))

        (t
         (format t "~%Opción inválida. Intente nuevamente.~%"))))))

(menu-principal)
