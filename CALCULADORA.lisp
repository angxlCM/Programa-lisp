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
        (t (format t "~%Opción no válida, intente de nuevo.~%"))))))



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
