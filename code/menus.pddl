(define (domain menus)
  (:requirements :strips :equality :typing)

  (:types 
    dia - object
    plato - object
    primero - plato
    segundo - plato

    tipo_plato - object
    )

  (:predicates
    ;; Static predicates:

    ;; Non-static predicates:

    ; Primer plato p es incompatibe con segundo plato s
    (incompatible ?p - primero ?s - segundo)

    (menu_primero ?d - dia ?p - primero)
    (menu_segundo ?d - dia ?s - segundo)

    (servido_primero ?d - dia)
    (servido_segundo ?d - dia)

    (preparado ?p - plato)
    (es_de_tipo ?p - plato ?t - tipo_plato)
    ; Dia 2 es consecutivo a dia 1
    (consecutivo ?d1 - dia  ?d2 - dia)
    ; *vomits*
    (ultimo_dia ?d - dia)
    (tipo_dia_primero ?d - dia ?t - tipo_plato)
    (tipo_dia_segundo ?d - dia ?t - tipo_plato)
    )

  (:action servir_ultimo_dia
           :parameters (
                        ?d - dia 
                        ?p - primero
                        ?s - segundo
                        ?tp - tipo_plato
                        ?ts - tipo_plato 
                        ) 
           :precondition (and 
                           (ultimo_dia ?d)
                           (not (servido_primero ?d))
                           (not (servido_segundo ?d))
                           (not (preparado ?p))
                           (not (preparado ?s))
                           (es_de_tipo ?p ?tp)
                           (es_de_tipo ?s ?ts)
                           )
           :effect  (and
                      (servido_primero ?d)
                      (servido_segundo ?d)
                      (menu_primero ?d ?p)
                      (menu_segundo ?d ?s)
                      (preparado ?p)
                      (preparado ?s)
                      (tipo_dia_primero ?d ?tp)
                      (tipo_dia_segundo ?d ?ts)
                      )
           )

  (:action servir_primero
           :parameters (
                        ?d - dia 
                        ?p - primero
                        ?c - dia 
                        ?t - tipo_plato
                        ?tc - tipo_plato 
                        ) 
           :precondition (and 
                           (not (servido_primero ?d))
                           (not (preparado ?p))
                           (es_de_tipo ?p ?t)
                           (consecutivo ?d ?c)
                           (servido_primero ?c)
                           (tipo_dia_primero ?c ?tc)
                           (not (= ?t ?tc))
                           )
           :effect  (and
                      (servido_primero ?d)
                      (preparado ?p)
                      (tipo_dia_primero ?d ?t)
                      (menu_primero ?d ?p)
                      )
           )

  (:action servir_segundo
           :parameters (
                        ?d - dia 
                        ?x - primero
                        ?p - segundo
                        ?c - dia 
                        ?t - tipo_plato
                        ?tc - tipo_plato 
                        ) 
           :precondition (and 
                           (servido_primero ?d)
                           (not (servido_segundo ?d))
                           (not (preparado ?p))
                           (menu_primero ?d ?x)
                           (not (incompatible ?x ?p))

                           (es_de_tipo ?p ?t)
                           (consecutivo ?d ?c)

                           (servido_segundo ?c)
                           (tipo_dia_segundo ?c ?tc)

                           (not (= ?t ?tc))
                           )
           :effect  (and
                      (servido_segundo ?d)
                      (preparado ?p)
                      (tipo_dia_segundo ?d ?t)
                      (menu_segundo ?d ?p)
                      )
           )
  )

; (:action servir
;          :parameters (?d - dia ?p - primero ?s - segundo 
;                          ?c - dia ?tp - tipo_plato ?ts - tipo_plato 
;                          ?tcp - tipo_plato ?tcs - tipo_plato
;                          ) 
;          :precondition (and 
;                          (not (incompatible ?p ?s))
;                          (not (servido ?d))
;                          (not (preparado ?p))
;                          (not (preparado ?s))
;                          (es_de_tipo ?p ?tp)
;                          (es_de_tipo ?s ?ts)
;                          (or 
;                            (ultimo_dia ?d)
;                            (and
;                              (consecutivo ?d ?c)
;                              (servido ?c)
;                              (tipos_dia ?c ?tcp ?tcs)
;                              (not (= ?tp ?tcp))
;                              (not (= ?ts ?tcs))
;                              )
;                            )
;                          )
;          :effect  (and
;                     (servido ?d)
;                     (preparado ?p)
;                     (preparado ?s)
;                     (tipos_dia ?d ?tp ?ts)
;                     (menu_primero ?d ?p)
;                     (menu_segundo ?d ?s)
;                     )
;          )
