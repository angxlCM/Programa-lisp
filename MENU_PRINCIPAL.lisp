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
  "Módulo desarrollado por Integrante 2: Áreas de 4 figuras geométricas."
  (format t "~%[Módulo Áreas en construcción]~%"))


(menu-principal)