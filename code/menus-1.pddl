(define (problem menus-1)
  (:domain menus)
  (:objects
    ; Primeros
    paella ensalada sopa - primero
    ; Segundos
    lubina salmon entrecot - segundo
    ; Dias
    lunes martes miercoles jueves viernes - dia
    )
  (:init

    ; Incompatibilidades 
    (incompatible paella lubina)
    (incompatible paella salmon)
    (incompatible ensalada salmon)
    (incompatible sopa entrecot)
    )

  (:goal (forall (?d - dia) (servido ?d)))
  )
