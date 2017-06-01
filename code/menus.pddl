(define (domain menus)
  (:requirements :typing)

  (:types 
    dia - object
    plato - object
    primero - plato
    segundo - plato
    )

  (:predicates
    ;; Static predicates:

    ;; Non-static predicates:

    ; Primer plato p es incompatibe con segundo plato s
    (incompatible ?p - primero ?s - segundo)
    (menu ?d - dia ?p - primero ?s - segundo)
    (servido ?d - dia)
    (preparado ?p - plato)
    )

  (:action servir
           :parameters (?d - dia ?p - primero ?s - segundo)
           :precondition (and 
                           (not (incompatible ?p ?s))
                           (not (servido ?d))
                           (not (preparado ?p))
                           (not (preparado ?s))
                           )
           :effect  (and
                      (menu ?d ?p ?s)
                      (servido ?d)
                      (preparado ?p)
                      (preparado ?s)
                      )
           )
  )
