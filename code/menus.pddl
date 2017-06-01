(define (domain menus)
  (:requirements :typing)

  (:types 
    dia - object
    primero - object
    segundo - object
    )

  (:predicates
    ;; Static predicates:

    ;; Non-static predicates:

    ; Primer plato p es incompatibe con segundo plato s
    (incompatible ?p - primero ?s - segundo)
    (menu ?d - dia ?p - primero ?s - segundo)
    (servido ?d - dia)
    )

  (:action servir
           :parameters (?d - dia ?p - primero ?s - segundo)
           :precondition (and 
                           (not (incompatible ?p ?s))
                           (not (servido ?d))
                           )
           :effect  (and (menu ?d ?p ?s) (servido ?d))
           )
  )
