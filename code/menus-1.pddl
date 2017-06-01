(define (problem menus-1)
  (:domain menus)
  (:objects
    ; Primeros
    paella ensalada sopa macarrones arroz tortilla fabada - primero
    ; Segundos
    lubina salmon entrecot salsichas setas huevo_frito pizza - segundo
    ; Dias
    lunes martes miercoles jueves viernes - dia
    )
  (:init

    ; Incompatibilidades 
    (incompatible paella lubina)
    (incompatible paella salmon)
    (incompatible ensalada salmon)
    (incompatible sopa entrecot)
    (incompatible tortilla huevo_frito)
    (incompatible fabada salmon)
    (incompatible sopa pizza)
    (incompatible paella setas) 
    (incompatible arroz salsichas)
    (incompatible ensalada setas)
    )

  (:goal (forall (?d - dia) (servido ?d)))
  )
