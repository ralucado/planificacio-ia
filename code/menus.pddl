(define (domain menus)
  (:requirements :strips)
  (:predicates
    ;; Static predicates:
    (primero ?p) (segundo ?s) (dia ?d)
    ;; Non-static predicates:
    ; Primer plato p es incompatibe con segundo plato s
    (incompatible ?p ?s)
    (servido ?d ?p ?s)
    )

  (:action servir
           :parameters (?d ?p ?s)
           :precondition (and 
                           (dia ?d) 
                           (primero ?p) 
                           (segundo ?s)
                           (not (incompatible ?p ?s))
                           )
           :effect ( (servido ?d ?p ?s) )
           )
  )
