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
