; =========================================================
; SISTEMA PRINCIPAL EN LISP
; MENÚ + TABLAS + ÁREAS
; =========================================================

; =========================================================
; MENÚ PRINCIPAL
; =========================================================

(defun menu-principal ()

  "Función principal que controla el flujo del programa."

  (let ((opcion 0))

    (loop

      (format t "~%======================================")
      (format t "~%         MENÚ PRINCIPAL")
      (format t "~%======================================")
      (format t "~%1. Ejecutar Calculadora")
      (format t "~%2. Mostrar Tablas de Multiplicar")
      (format t "~%3. Calcular Área de Figuras")
      (format t "~%4. Salir")
      (format t "~%======================================")
      (format t "~%Seleccione una opción: ")

      (finish-output)

      (setf opcion (read))

      (cond

        ; -----------------------------------
        ; CALCULADORA
        ; -----------------------------------
        ((= opcion 1)

         (mi-calculadora)
        )

        ; -----------------------------------
        ; TABLAS
        ; -----------------------------------
        ((= opcion 2)

         (mostrar-tablas)
        )

        ; -----------------------------------
        ; ÁREAS
        ; -----------------------------------
        ((= opcion 3)

         (calcular-areas)
        )

        ; -----------------------------------
        ; SALIR
        ; -----------------------------------
        ((= opcion 4)

         (format t "~%Saliendo del programa...~%")

         (return)
        )

        ; -----------------------------------
        ; OPCIÓN INVÁLIDA
        ; -----------------------------------
        (t

         (format t "~%Opción no válida, intente de nuevo.~%")
        )
      )
    )
  )
)

; =========================================================
; MÓDULO CALCULADORA
; =========================================================

(defun mi-calculadora ()

  (let ((n1 0)
        (n2 0)
        (resultado 0))

    (format t "~%========= CALCULADORA =========~%")

    (format t "Ingrese el primer número: ")
    (setf n1 (read))

    (format t "Ingrese el segundo número: ")
    (setf n2 (read))

    ; Suma
    (setf resultado (+ n1 n2))

    (format t "~%Resultado = ~D~%" resultado)
  )
)

; =========================================================
; MÓDULO TABLAS DE MULTIPLICAR
; =========================================================

(defun mostrar-tablas ()

  (mostrar-encabezado)

  (loop for n from 1 to 10 do

        (mostrar-tabla n)
  )

  (format t "~%Programa finalizado correctamente.~%")
)

(defun mostrar-encabezado ()

    (format t "~%========================================")
    (format t "~%     TABLAS DE MULTIPLICAR EN LISP")
    (format t "~%========================================~%")
)

(defun mostrar-linea ()

    (format t "----------------------------------------~%")
)

(defun mostrar-tabla (numero)

    (format t "~%Tabla del ~D~%" numero)

    (mostrar-linea)

    (loop for i from 1 to 10 do

        (format t "~2D x ~2D = ~3D~%"
                numero
                i
                (* numero i))
    )

    (mostrar-linea)
)

; =========================================================
; MÓDULO CÁLCULO DE ÁREAS
; =========================================================

(defun calcular-areas ()

  (iniciar-programa)
)

; =========================================================
; MENÚ DE ÁREAS
; =========================================================

(defun mostrar-menu-areas ()

    (format t "~%======================================")
    (format t "~%   CALCULADORA DE ÁREAS EN LISP")
    (format t "~%======================================")
    (format t "~%1. Área de un cuadrado")
    (format t "~%2. Área de un rectángulo")
    (format t "~%3. Área de un triángulo")
    (format t "~%4. Área de un círculo")
    (format t "~%5. Área de un trapecio")
    (format t "~%6. Regresar al menú principal")
    (format t "~%======================================")
    (format t "~%Seleccione una opción: ")
)

; =========================================================
; FUNCIONES DE ÁREAS
; =========================================================

(defun area-cuadrado (lado)

    (* lado lado)
)

(defun area-rectangulo (base altura)

    (* base altura)
)

(defun area-triangulo (base altura)

    (/ (* base altura) 2)
)

(defun area-circulo (radio)

    (* 3.1416 radio radio)
)

(defun area-trapecio (base-mayor base-menor altura)

    (/ (* (+ base-mayor base-menor) altura) 2)
)

; =========================================================
; PROGRAMA DE ÁREAS
; =========================================================

(defun iniciar-programa ()

    (let ((opcion 0))

        (loop

            (mostrar-menu-areas)

            (setf opcion (read))

            (cond

                ; -----------------------------------
                ; CUADRADO
                ; -----------------------------------
                ((= opcion 1)

                    (format t "~%Ingrese el lado del cuadrado: ")

                    (let ((lado (read)))

                        (format t "~%Área del cuadrado = ~,2F~%"
                                (area-cuadrado lado))
                    )
                )

                ; -----------------------------------
                ; RECTÁNGULO
                ; -----------------------------------
                ((= opcion 2)

                    (format t "~%Ingrese la base: ")

                    (let ((base (read)))

                        (format t "Ingrese la altura: ")

                        (let ((altura (read)))

                            (format t "~%Área del rectángulo = ~,2F~%"
                                    (area-rectangulo base altura))
                        )
                    )
                )

                ; -----------------------------------
                ; TRIÁNGULO
                ; -----------------------------------
                ((= opcion 3)

                    (format t "~%Ingrese la base: ")

                    (let ((base (read)))

                        (format t "Ingrese la altura: ")

                        (let ((altura (read)))

                            (format t "~%Área del triángulo = ~,2F~%"
                                    (area-triangulo base altura))
                        )
                    )
                )

                ; -----------------------------------
                ; CÍRCULO
                ; -----------------------------------
                ((= opcion 4)

                    (format t "~%Ingrese el radio: ")

                    (let ((radio (read)))

                        (format t "~%Área del círculo = ~,2F~%"
                                (area-circulo radio))
                    )
                )

                ; -----------------------------------
                ; TRAPECIO
                ; -----------------------------------
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
                                            altura))
                            )
                        )
                    )
                )

                ; -----------------------------------
                ; REGRESAR
                ; -----------------------------------
                ((= opcion 6)

                    (format t "~%Regresando al menú principal...~%")

                    (return)
                )

                ; -----------------------------------
                ; OPCIÓN INVÁLIDA
                ; -----------------------------------
                (t

                    (format t "~%Opción inválida. Intente nuevamente.~%")
                )
            )
        )
    )
)

; =========================================================
; EJECUCIÓN DEL SISTEMA
; =========================================================

(menu-principal)
