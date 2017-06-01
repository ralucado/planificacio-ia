(define (problem menus-1)
  (:domain menus)
  (:objects
    ; Primeros
    paella ensalada sopa macarrones arroz tortilla fabada
    empanada callos migas calsots - primero
    ; Segundos
    lubina salmon entrecot salsichas setas huevo_frito pizza
    lechazo boquerones cordero - segundo
    ; Dias
    lunes martes miercoles jueves viernes - dia
    sopa crema ensalada carne pescado pasta arroz huevo - tipo_plato
    )
  (:init
    (consecutivo lunes martes)
    (consecutivo martes miercoles)
    (consecutivo miercoles jueves)
    (consecutivo jueves viernes)
    ; Cyclic
    ;(consecutivo viernes lunes)

    (ultimo_dia viernes)

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


    (es_de_tipo paella pescado)
    (es_de_tipo ensalada ensalada)
    (es_de_tipo sopa sopa)
    (es_de_tipo macarrones pasta)
    (es_de_tipo arroz arroz)
    (es_de_tipo tortilla huevo)
    (es_de_tipo fabada sopa)
    (es_de_tipo lubina pescado)
    (es_de_tipo salmon pescado) 
    (es_de_tipo entrecot carne)
    (es_de_tipo salsichas carne)
    (es_de_tipo setas ensalada)
    (es_de_tipo huevo_frito huevo)
    (es_de_tipo pizza carne)
    (es_de_tipo empanada carne)
    (es_de_tipo callos sopa)
    (es_de_tipo migas carne)
    (es_de_tipo calsots ensalada)
    (es_de_tipo lechazo carne)
    (es_de_tipo boquerones pescado)
    (es_de_tipo cordero carne)

    (servido_primero jueves)
    (menu_primero jueves paella)
    (tipo_dia_primero jueves pescado)

    )

  (:goal (forall (?d - dia)
                 (and (servido_primero ?d)
                      (servido_segundo ?d)
                      )
                 )
         )
  )
