(define (problem C3_2)
  (:domain menus)
  (:objects
    ; Primeros
    paella ensalada sopa
    ; Segundos
    lubina salmon entrecot
    ; Dias
    lunes martes miercoles jueves viernes
    )
  (:init
    ;; Type declarations:

    ; Primeros
    (primero paella)
    (primero ensalada) 
    (primero sopa)

    ; Segundos
    (segundo lubina)
    (segundo salmon)
    (segundo entrecot)

    ; Dias
    (dia lunes)
    (dia martes)
    (dia miercoles)
    (dia jueves)
    (dia viernes)

    ; Incompatibilidades 
    (incompatible paella lubina)
    (incompatible ensalada salmon)
    (incompatible sopa entrecot)
    )

  (:goal (forall (?d - dia) (servido ?d ? ?)))
  )
