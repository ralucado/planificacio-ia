(define (problem menus-1)
  (:domain menus)
  (:objects
    ; Primeros
    primero0 primero1 primero2 primero3 primero4 primero5 primero6 primero7 primero8 primero9 primero10 primero11 primero12 primero13 primero14 primero15 primero16 primero17 primero18 primero19 primero20 primero21 primero22 primero23 primero24 primero25 primero26 primero27 primero28 primero29 primero30 primero31 primero32 primero33 primero34 primero35 primero36 primero37 primero38 primero39 primero40 primero41 primero42 primero43 primero44 primero45 primero46 primero47 primero48 primero49  - primero
    ; Segundos
    segundo0 segundo1 segundo2 segundo3 segundo4 segundo5 segundo6 segundo7 segundo8 segundo9 segundo10 segundo11 segundo12 segundo13 segundo14 segundo15 segundo16 segundo17 segundo18 segundo19 segundo20 segundo21 segundo22 segundo23 segundo24 segundo25 segundo26 segundo27 segundo28 segundo29 segundo30 segundo31 segundo32 segundo33 segundo34 segundo35 segundo36 segundo37 segundo38 segundo39 segundo40 segundo41 segundo42 segundo43 segundo44 segundo45 segundo46 segundo47 segundo48 segundo49  - segundo
    ; Dias
    lunes martes miercoles jueves viernes - dia
    ; tipos
    tipo0 tipo1 tipo2 tipo3 tipo4 tipo5  - tipo_plato
)
(:init

    (consecutivo lunes martes)
    (consecutivo martes miercoles)
    (consecutivo miercoles jueves)
    (consecutivo jueves viernes)
    ; No usamos este ultimo predicado porque resulta en un ciclo.
    ;(consecutivo viernes lunes)
    ; Usamos en su lugar este predicado que indica que viernes no
    ; tiene sucesor.
    (ultimo_dia viernes)

    ; NIVEL BASICO
    ; Incompatibilidades 
    (incompatible primero0 segundo10)
    (incompatible primero0 segundo11)
    (incompatible primero0 segundo12)
    (incompatible primero0 segundo19)
    (incompatible primero0 segundo20)
    (incompatible primero0 segundo21)
    (incompatible primero0 segundo22)
    (incompatible primero0 segundo25)
    (incompatible primero0 segundo29)
    (incompatible primero0 segundo40)
    (incompatible primero0 segundo42)
    (incompatible primero1 segundo3)
    (incompatible primero1 segundo5)
    (incompatible primero1 segundo6)
    (incompatible primero1 segundo11)
    (incompatible primero1 segundo15)
    (incompatible primero1 segundo20)
    (incompatible primero1 segundo25)
    (incompatible primero1 segundo29)
    (incompatible primero1 segundo32)
    (incompatible primero1 segundo34)
    (incompatible primero1 segundo46)
    (incompatible primero1 segundo48)
    (incompatible primero2 segundo1)
    (incompatible primero2 segundo9)
    (incompatible primero2 segundo12)
    (incompatible primero2 segundo15)
    (incompatible primero2 segundo18)
    (incompatible primero2 segundo42)
    (incompatible primero2 segundo44)
    (incompatible primero3 segundo7)
    (incompatible primero3 segundo8)
    (incompatible primero3 segundo11)
    (incompatible primero3 segundo31)
    (incompatible primero3 segundo33)
    (incompatible primero3 segundo39)
    (incompatible primero3 segundo42)
    (incompatible primero3 segundo48)
    (incompatible primero4 segundo1)
    (incompatible primero4 segundo3)
    (incompatible primero4 segundo6)
    (incompatible primero4 segundo15)
    (incompatible primero4 segundo19)
    (incompatible primero4 segundo25)
    (incompatible primero4 segundo33)
    (incompatible primero4 segundo41)
    (incompatible primero4 segundo43)
    (incompatible primero5 segundo3)
    (incompatible primero5 segundo9)
    (incompatible primero5 segundo14)
    (incompatible primero5 segundo15)
    (incompatible primero5 segundo22)
    (incompatible primero5 segundo33)
    (incompatible primero5 segundo39)
    (incompatible primero6 segundo10)
    (incompatible primero6 segundo13)
    (incompatible primero6 segundo15)
    (incompatible primero6 segundo39)
    (incompatible primero6 segundo40)
    (incompatible primero6 segundo42)
    (incompatible primero6 segundo47)
    (incompatible primero7 segundo6)
    (incompatible primero7 segundo7)
    (incompatible primero7 segundo8)
    (incompatible primero7 segundo9)
    (incompatible primero7 segundo18)
    (incompatible primero7 segundo24)
    (incompatible primero7 segundo26)
    (incompatible primero7 segundo29)
    (incompatible primero7 segundo31)
    (incompatible primero7 segundo43)
    (incompatible primero7 segundo47)
    (incompatible primero8 segundo13)
    (incompatible primero8 segundo26)
    (incompatible primero8 segundo31)
    (incompatible primero8 segundo34)
    (incompatible primero8 segundo37)
    (incompatible primero8 segundo40)
    (incompatible primero8 segundo46)
    (incompatible primero9 segundo4)
    (incompatible primero9 segundo10)
    (incompatible primero9 segundo16)
    (incompatible primero9 segundo19)
    (incompatible primero9 segundo22)
    (incompatible primero9 segundo23)
    (incompatible primero9 segundo31)
    (incompatible primero9 segundo43)
    (incompatible primero9 segundo45)
    (incompatible primero9 segundo47)
    (incompatible primero10 segundo1)
    (incompatible primero10 segundo6)
    (incompatible primero10 segundo8)
    (incompatible primero10 segundo26)
    (incompatible primero10 segundo43)
    (incompatible primero11 segundo5)
    (incompatible primero11 segundo9)
    (incompatible primero11 segundo20)
    (incompatible primero11 segundo24)
    (incompatible primero11 segundo29)
    (incompatible primero11 segundo41)
    (incompatible primero11 segundo43)
    (incompatible primero11 segundo47)
    (incompatible primero12 segundo4)
    (incompatible primero12 segundo13)
    (incompatible primero12 segundo18)
    (incompatible primero12 segundo22)
    (incompatible primero12 segundo30)
    (incompatible primero12 segundo40)
    (incompatible primero12 segundo44)
    (incompatible primero12 segundo46)
    (incompatible primero12 segundo48)
    (incompatible primero12 segundo49)
    (incompatible primero13 segundo3)
    (incompatible primero13 segundo4)
    (incompatible primero13 segundo6)
    (incompatible primero13 segundo10)
    (incompatible primero13 segundo18)
    (incompatible primero13 segundo19)
    (incompatible primero13 segundo28)
    (incompatible primero13 segundo30)
    (incompatible primero13 segundo31)
    (incompatible primero13 segundo32)
    (incompatible primero13 segundo34)
    (incompatible primero13 segundo37)
    (incompatible primero13 segundo40)
    (incompatible primero13 segundo44)
    (incompatible primero14 segundo11)
    (incompatible primero14 segundo13)
    (incompatible primero14 segundo17)
    (incompatible primero14 segundo18)
    (incompatible primero14 segundo24)
    (incompatible primero14 segundo28)
    (incompatible primero14 segundo32)
    (incompatible primero14 segundo34)
    (incompatible primero14 segundo48)
    (incompatible primero15 segundo4)
    (incompatible primero15 segundo10)
    (incompatible primero15 segundo12)
    (incompatible primero15 segundo25)
    (incompatible primero15 segundo30)
    (incompatible primero15 segundo32)
    (incompatible primero15 segundo34)
    (incompatible primero15 segundo41)
    (incompatible primero15 segundo43)
    (incompatible primero15 segundo45)
    (incompatible primero16 segundo1)
    (incompatible primero16 segundo5)
    (incompatible primero16 segundo10)
    (incompatible primero16 segundo15)
    (incompatible primero16 segundo20)
    (incompatible primero16 segundo21)
    (incompatible primero16 segundo37)
    (incompatible primero16 segundo39)
    (incompatible primero16 segundo40)
    (incompatible primero16 segundo48)
    (incompatible primero17 segundo0)
    (incompatible primero17 segundo7)
    (incompatible primero17 segundo15)
    (incompatible primero17 segundo22)
    (incompatible primero17 segundo27)
    (incompatible primero17 segundo31)
    (incompatible primero17 segundo39)
    (incompatible primero17 segundo43)
    (incompatible primero17 segundo49)
    (incompatible primero18 segundo2)
    (incompatible primero18 segundo6)
    (incompatible primero18 segundo9)
    (incompatible primero18 segundo13)
    (incompatible primero18 segundo17)
    (incompatible primero18 segundo20)
    (incompatible primero18 segundo23)
    (incompatible primero18 segundo30)
    (incompatible primero18 segundo32)
    (incompatible primero18 segundo35)
    (incompatible primero18 segundo46)
    (incompatible primero19 segundo8)
    (incompatible primero19 segundo11)
    (incompatible primero19 segundo12)
    (incompatible primero19 segundo13)
    (incompatible primero19 segundo17)
    (incompatible primero19 segundo20)
    (incompatible primero19 segundo26)
    (incompatible primero19 segundo32)
    (incompatible primero19 segundo33)
    (incompatible primero19 segundo37)
    (incompatible primero19 segundo44)
    (incompatible primero19 segundo48)
    (incompatible primero20 segundo1)
    (incompatible primero20 segundo11)
    (incompatible primero20 segundo20)
    (incompatible primero20 segundo29)
    (incompatible primero20 segundo30)
    (incompatible primero20 segundo31)
    (incompatible primero20 segundo37)
    (incompatible primero20 segundo39)
    (incompatible primero20 segundo43)
    (incompatible primero20 segundo45)
    (incompatible primero21 segundo5)
    (incompatible primero21 segundo7)
    (incompatible primero21 segundo9)
    (incompatible primero21 segundo13)
    (incompatible primero21 segundo18)
    (incompatible primero21 segundo28)
    (incompatible primero21 segundo30)
    (incompatible primero21 segundo32)
    (incompatible primero21 segundo39)
    (incompatible primero22 segundo2)
    (incompatible primero22 segundo7)
    (incompatible primero22 segundo15)
    (incompatible primero22 segundo21)
    (incompatible primero22 segundo22)
    (incompatible primero23 segundo0)
    (incompatible primero23 segundo1)
    (incompatible primero23 segundo3)
    (incompatible primero23 segundo16)
    (incompatible primero23 segundo20)
    (incompatible primero23 segundo21)
    (incompatible primero23 segundo23)
    (incompatible primero23 segundo38)
    (incompatible primero23 segundo42)
    (incompatible primero24 segundo0)
    (incompatible primero24 segundo1)
    (incompatible primero24 segundo4)
    (incompatible primero24 segundo7)
    (incompatible primero24 segundo8)
    (incompatible primero24 segundo12)
    (incompatible primero24 segundo37)
    (incompatible primero24 segundo38)
    (incompatible primero25 segundo0)
    (incompatible primero25 segundo3)
    (incompatible primero25 segundo12)
    (incompatible primero25 segundo22)
    (incompatible primero25 segundo26)
    (incompatible primero25 segundo28)
    (incompatible primero25 segundo30)
    (incompatible primero25 segundo36)
    (incompatible primero25 segundo37)
    (incompatible primero25 segundo38)
    (incompatible primero25 segundo43)
    (incompatible primero25 segundo49)
    (incompatible primero26 segundo0)
    (incompatible primero26 segundo19)
    (incompatible primero26 segundo22)
    (incompatible primero26 segundo27)
    (incompatible primero26 segundo29)
    (incompatible primero26 segundo39)
    (incompatible primero26 segundo43)
    (incompatible primero27 segundo4)
    (incompatible primero27 segundo5)
    (incompatible primero27 segundo10)
    (incompatible primero27 segundo14)
    (incompatible primero27 segundo20)
    (incompatible primero27 segundo21)
    (incompatible primero27 segundo33)
    (incompatible primero27 segundo37)
    (incompatible primero27 segundo39)
    (incompatible primero28 segundo10)
    (incompatible primero28 segundo11)
    (incompatible primero28 segundo12)
    (incompatible primero28 segundo29)
    (incompatible primero28 segundo36)
    (incompatible primero29 segundo0)
    (incompatible primero29 segundo2)
    (incompatible primero29 segundo5)
    (incompatible primero29 segundo6)
    (incompatible primero29 segundo13)
    (incompatible primero29 segundo15)
    (incompatible primero29 segundo34)
    (incompatible primero29 segundo41)
    (incompatible primero29 segundo46)
    (incompatible primero29 segundo48)
    (incompatible primero30 segundo5)
    (incompatible primero30 segundo10)
    (incompatible primero30 segundo11)
    (incompatible primero30 segundo20)
    (incompatible primero30 segundo21)
    (incompatible primero30 segundo29)
    (incompatible primero30 segundo32)
    (incompatible primero30 segundo35)
    (incompatible primero30 segundo40)
    (incompatible primero30 segundo41)
    (incompatible primero30 segundo48)
    (incompatible primero31 segundo0)
    (incompatible primero31 segundo4)
    (incompatible primero31 segundo6)
    (incompatible primero31 segundo7)
    (incompatible primero31 segundo21)
    (incompatible primero31 segundo28)
    (incompatible primero31 segundo29)
    (incompatible primero31 segundo31)
    (incompatible primero31 segundo39)
    (incompatible primero31 segundo40)
    (incompatible primero32 segundo5)
    (incompatible primero32 segundo13)
    (incompatible primero32 segundo17)
    (incompatible primero32 segundo18)
    (incompatible primero32 segundo21)
    (incompatible primero32 segundo24)
    (incompatible primero32 segundo29)
    (incompatible primero32 segundo33)
    (incompatible primero32 segundo36)
    (incompatible primero32 segundo46)
    (incompatible primero33 segundo1)
    (incompatible primero33 segundo7)
    (incompatible primero33 segundo12)
    (incompatible primero33 segundo15)
    (incompatible primero33 segundo25)
    (incompatible primero33 segundo27)
    (incompatible primero33 segundo28)
    (incompatible primero33 segundo30)
    (incompatible primero33 segundo34)
    (incompatible primero33 segundo37)
    (incompatible primero33 segundo41)
    (incompatible primero33 segundo47)
    (incompatible primero34 segundo1)
    (incompatible primero34 segundo7)
    (incompatible primero34 segundo8)
    (incompatible primero34 segundo15)
    (incompatible primero34 segundo17)
    (incompatible primero34 segundo19)
    (incompatible primero34 segundo22)
    (incompatible primero34 segundo45)
    (incompatible primero34 segundo47)
    (incompatible primero35 segundo3)
    (incompatible primero35 segundo4)
    (incompatible primero35 segundo5)
    (incompatible primero35 segundo8)
    (incompatible primero35 segundo12)
    (incompatible primero35 segundo18)
    (incompatible primero35 segundo22)
    (incompatible primero35 segundo23)
    (incompatible primero35 segundo25)
    (incompatible primero35 segundo26)
    (incompatible primero35 segundo27)
    (incompatible primero35 segundo28)
    (incompatible primero35 segundo30)
    (incompatible primero35 segundo31)
    (incompatible primero35 segundo37)
    (incompatible primero35 segundo39)
    (incompatible primero35 segundo42)
    (incompatible primero35 segundo49)
    (incompatible primero36 segundo0)
    (incompatible primero36 segundo3)
    (incompatible primero36 segundo5)
    (incompatible primero36 segundo6)
    (incompatible primero36 segundo13)
    (incompatible primero36 segundo21)
    (incompatible primero36 segundo22)
    (incompatible primero36 segundo38)
    (incompatible primero36 segundo47)
    (incompatible primero37 segundo0)
    (incompatible primero37 segundo4)
    (incompatible primero37 segundo10)
    (incompatible primero37 segundo11)
    (incompatible primero37 segundo12)
    (incompatible primero37 segundo25)
    (incompatible primero37 segundo26)
    (incompatible primero37 segundo28)
    (incompatible primero37 segundo35)
    (incompatible primero37 segundo44)
    (incompatible primero37 segundo46)
    (incompatible primero38 segundo3)
    (incompatible primero38 segundo6)
    (incompatible primero38 segundo10)
    (incompatible primero38 segundo11)
    (incompatible primero38 segundo13)
    (incompatible primero38 segundo16)
    (incompatible primero38 segundo25)
    (incompatible primero38 segundo31)
    (incompatible primero38 segundo39)
    (incompatible primero38 segundo44)
    (incompatible primero38 segundo47)
    (incompatible primero39 segundo5)
    (incompatible primero39 segundo19)
    (incompatible primero39 segundo22)
    (incompatible primero39 segundo26)
    (incompatible primero39 segundo27)
    (incompatible primero39 segundo28)
    (incompatible primero39 segundo35)
    (incompatible primero39 segundo48)
    (incompatible primero39 segundo49)
    (incompatible primero40 segundo3)
    (incompatible primero40 segundo4)
    (incompatible primero40 segundo6)
    (incompatible primero40 segundo13)
    (incompatible primero40 segundo14)
    (incompatible primero40 segundo18)
    (incompatible primero40 segundo20)
    (incompatible primero40 segundo26)
    (incompatible primero40 segundo27)
    (incompatible primero40 segundo31)
    (incompatible primero40 segundo34)
    (incompatible primero40 segundo36)
    (incompatible primero40 segundo41)
    (incompatible primero41 segundo2)
    (incompatible primero41 segundo19)
    (incompatible primero41 segundo21)
    (incompatible primero41 segundo26)
    (incompatible primero41 segundo34)
    (incompatible primero41 segundo37)
    (incompatible primero41 segundo44)
    (incompatible primero41 segundo46)
    (incompatible primero42 segundo0)
    (incompatible primero42 segundo1)
    (incompatible primero42 segundo2)
    (incompatible primero42 segundo8)
    (incompatible primero42 segundo10)
    (incompatible primero42 segundo16)
    (incompatible primero42 segundo23)
    (incompatible primero42 segundo36)
    (incompatible primero42 segundo38)
    (incompatible primero42 segundo49)
    (incompatible primero43 segundo8)
    (incompatible primero43 segundo10)
    (incompatible primero43 segundo13)
    (incompatible primero43 segundo25)
    (incompatible primero43 segundo26)
    (incompatible primero43 segundo33)
    (incompatible primero43 segundo37)
    (incompatible primero43 segundo48)
    (incompatible primero43 segundo49)
    (incompatible primero44 segundo5)
    (incompatible primero44 segundo6)
    (incompatible primero44 segundo9)
    (incompatible primero44 segundo10)
    (incompatible primero44 segundo15)
    (incompatible primero44 segundo16)
    (incompatible primero44 segundo29)
    (incompatible primero44 segundo32)
    (incompatible primero44 segundo37)
    (incompatible primero44 segundo41)
    (incompatible primero44 segundo42)
    (incompatible primero44 segundo46)
    (incompatible primero44 segundo48)
    (incompatible primero45 segundo3)
    (incompatible primero45 segundo15)
    (incompatible primero45 segundo16)
    (incompatible primero45 segundo29)
    (incompatible primero45 segundo30)
    (incompatible primero45 segundo36)
    (incompatible primero45 segundo40)
    (incompatible primero45 segundo42)
    (incompatible primero45 segundo48)
    (incompatible primero46 segundo3)
    (incompatible primero46 segundo5)
    (incompatible primero46 segundo6)
    (incompatible primero46 segundo7)
    (incompatible primero46 segundo14)
    (incompatible primero46 segundo17)
    (incompatible primero46 segundo25)
    (incompatible primero46 segundo28)
    (incompatible primero46 segundo33)
    (incompatible primero46 segundo39)
    (incompatible primero46 segundo41)
    (incompatible primero46 segundo44)
    (incompatible primero46 segundo47)
    (incompatible primero46 segundo48)
    (incompatible primero47 segundo5)
    (incompatible primero47 segundo9)
    (incompatible primero47 segundo18)
    (incompatible primero47 segundo28)
    (incompatible primero47 segundo30)
    (incompatible primero47 segundo32)
    (incompatible primero47 segundo39)
    (incompatible primero47 segundo44)
    (incompatible primero48 segundo8)
    (incompatible primero48 segundo10)
    (incompatible primero48 segundo25)
    (incompatible primero48 segundo28)
    (incompatible primero48 segundo29)
    (incompatible primero48 segundo36)
    (incompatible primero48 segundo39)
    (incompatible primero49 segundo3)
    (incompatible primero49 segundo6)
    (incompatible primero49 segundo8)
    (incompatible primero49 segundo13)
    (incompatible primero49 segundo20)
    (incompatible primero49 segundo25)
    (incompatible primero49 segundo49)
    ; EXTENSION 2
    ; Tipos de los platos
    (es_de_tipo primero0 tipo2)
    (es_de_tipo primero1 tipo5)
    (es_de_tipo primero2 tipo5)
    (es_de_tipo primero3 tipo4)
    (es_de_tipo primero4 tipo4)
    (es_de_tipo primero5 tipo3)
    (es_de_tipo primero6 tipo5)
    (es_de_tipo primero7 tipo1)
    (es_de_tipo primero8 tipo4)
    (es_de_tipo primero9 tipo1)
    (es_de_tipo primero10 tipo1)
    (es_de_tipo primero11 tipo1)
    (es_de_tipo primero12 tipo3)
    (es_de_tipo primero13 tipo0)
    (es_de_tipo primero14 tipo0)
    (es_de_tipo primero15 tipo4)
    (es_de_tipo primero16 tipo3)
    (es_de_tipo primero17 tipo1)
    (es_de_tipo primero18 tipo2)
    (es_de_tipo primero19 tipo0)
    (es_de_tipo primero20 tipo1)
    (es_de_tipo primero21 tipo0)
    (es_de_tipo primero22 tipo1)
    (es_de_tipo primero23 tipo2)
    (es_de_tipo primero24 tipo1)
    (es_de_tipo primero25 tipo4)
    (es_de_tipo primero26 tipo3)
    (es_de_tipo primero27 tipo0)
    (es_de_tipo primero28 tipo3)
    (es_de_tipo primero29 tipo5)
    (es_de_tipo primero30 tipo3)
    (es_de_tipo primero31 tipo4)
    (es_de_tipo primero32 tipo2)
    (es_de_tipo primero33 tipo2)
    (es_de_tipo primero34 tipo0)
    (es_de_tipo primero35 tipo4)
    (es_de_tipo primero36 tipo4)
    (es_de_tipo primero37 tipo5)
    (es_de_tipo primero38 tipo5)
    (es_de_tipo primero39 tipo2)
    (es_de_tipo primero40 tipo4)
    (es_de_tipo primero41 tipo4)
    (es_de_tipo primero42 tipo1)
    (es_de_tipo primero43 tipo2)
    (es_de_tipo primero44 tipo4)
    (es_de_tipo primero45 tipo5)
    (es_de_tipo primero46 tipo4)
    (es_de_tipo primero47 tipo0)
    (es_de_tipo primero48 tipo0)
    (es_de_tipo primero49 tipo0)
    (es_de_tipo segundo0 tipo0)
    (es_de_tipo segundo1 tipo5)
    (es_de_tipo segundo2 tipo0)
    (es_de_tipo segundo3 tipo1)
    (es_de_tipo segundo4 tipo1)
    (es_de_tipo segundo5 tipo2)
    (es_de_tipo segundo6 tipo5)
    (es_de_tipo segundo7 tipo5)
    (es_de_tipo segundo8 tipo0)
    (es_de_tipo segundo9 tipo1)
    (es_de_tipo segundo10 tipo2)
    (es_de_tipo segundo11 tipo4)
    (es_de_tipo segundo12 tipo5)
    (es_de_tipo segundo13 tipo5)
    (es_de_tipo segundo14 tipo4)
    (es_de_tipo segundo15 tipo5)
    (es_de_tipo segundo16 tipo3)
    (es_de_tipo segundo17 tipo2)
    (es_de_tipo segundo18 tipo3)
    (es_de_tipo segundo19 tipo1)
    (es_de_tipo segundo20 tipo4)
    (es_de_tipo segundo21 tipo5)
    (es_de_tipo segundo22 tipo5)
    (es_de_tipo segundo23 tipo3)
    (es_de_tipo segundo24 tipo5)
    (es_de_tipo segundo25 tipo2)
    (es_de_tipo segundo26 tipo2)
    (es_de_tipo segundo27 tipo3)
    (es_de_tipo segundo28 tipo2)
    (es_de_tipo segundo29 tipo1)
    (es_de_tipo segundo30 tipo2)
    (es_de_tipo segundo31 tipo2)
    (es_de_tipo segundo32 tipo0)
    (es_de_tipo segundo33 tipo2)
    (es_de_tipo segundo34 tipo3)
    (es_de_tipo segundo35 tipo2)
    (es_de_tipo segundo36 tipo2)
    (es_de_tipo segundo37 tipo0)
    (es_de_tipo segundo38 tipo5)
    (es_de_tipo segundo39 tipo3)
    (es_de_tipo segundo40 tipo1)
    (es_de_tipo segundo41 tipo1)
    (es_de_tipo segundo42 tipo5)
    (es_de_tipo segundo43 tipo4)
    (es_de_tipo segundo44 tipo4)
    (es_de_tipo segundo45 tipo3)
    (es_de_tipo segundo46 tipo2)
    (es_de_tipo segundo47 tipo0)
    (es_de_tipo segundo48 tipo4)
    (es_de_tipo segundo49 tipo5)
	; EXTENSION 3
    ; Esto se debe hacer por cada plato que deseemos fijar a un dia
    ; en este caso obligaremos a hacer un primero y un segundo un dia de la semana
    (servido_primero miercoles)
    (menu_primero miercoles primero4)
    (tipo_dia_primero miercoles tipo4)
    (preparado primero4)
    (servido_segundo jueves)
    (menu_segundo jueves segundo0)
    (tipo_dia_segundo jueves tipo0)
    (preparado segundo0)
	; EXTENSION 4
    ; Calorias de los primeros platos
    (= (calorias primero0) 1223)
    (= (calorias primero1) 619)
    (= (calorias primero2) 1292)
    (= (calorias primero3) 594)
    (= (calorias primero4) 800)
    (= (calorias primero5) 731)
    (= (calorias primero6) 878)
    (= (calorias primero7) 1448)
    (= (calorias primero8) 612)
    (= (calorias primero9) 827)
    (= (calorias primero10) 1185)
    (= (calorias primero11) 979)
    (= (calorias primero12) 818)
    (= (calorias primero13) 1467)
    (= (calorias primero14) 969)
    (= (calorias primero15) 1112)
    (= (calorias primero16) 999)
    (= (calorias primero17) 1148)
    (= (calorias primero18) 709)
    (= (calorias primero19) 1099)
    (= (calorias primero20) 566)
    (= (calorias primero21) 1122)
    (= (calorias primero22) 1211)
    (= (calorias primero23) 761)
    (= (calorias primero24) 824)
    (= (calorias primero25) 541)
    (= (calorias primero26) 667)
    (= (calorias primero27) 1267)
    (= (calorias primero28) 1080)
    (= (calorias primero29) 1332)
    (= (calorias primero30) 782)
    (= (calorias primero31) 1493)
    (= (calorias primero32) 1451)
    (= (calorias primero33) 1264)
    (= (calorias primero34) 586)
    (= (calorias primero35) 751)
    (= (calorias primero36) 1496)
    (= (calorias primero37) 655)
    (= (calorias primero38) 1389)
    (= (calorias primero39) 1298)
    (= (calorias primero40) 982)
    (= (calorias primero41) 1074)
    (= (calorias primero42) 776)
    (= (calorias primero43) 990)
    (= (calorias primero44) 1040)
    (= (calorias primero45) 1245)
    (= (calorias primero46) 602)
    (= (calorias primero47) 538)
    (= (calorias primero48) 582)
    (= (calorias primero49) 811)

    ; Calorias de los segundos platos
    (= (calorias segundo0) 828)
    (= (calorias segundo1) 649)
    (= (calorias segundo2) 1124)
    (= (calorias segundo3) 1229)
    (= (calorias segundo4) 600)
    (= (calorias segundo5) 1448)
    (= (calorias segundo6) 1270)
    (= (calorias segundo7) 767)
    (= (calorias segundo8) 1214)
    (= (calorias segundo9) 539)
    (= (calorias segundo10) 598)
    (= (calorias segundo11) 1186)
    (= (calorias segundo12) 531)
    (= (calorias segundo13) 1239)
    (= (calorias segundo14) 950)
    (= (calorias segundo15) 1309)
    (= (calorias segundo16) 1490)
    (= (calorias segundo17) 635)
    (= (calorias segundo18) 1464)
    (= (calorias segundo19) 1069)
    (= (calorias segundo20) 1433)
    (= (calorias segundo21) 945)
    (= (calorias segundo22) 642)
    (= (calorias segundo23) 709)
    (= (calorias segundo24) 1436)
    (= (calorias segundo25) 1182)
    (= (calorias segundo26) 1144)
    (= (calorias segundo27) 1228)
    (= (calorias segundo28) 911)
    (= (calorias segundo29) 1227)
    (= (calorias segundo30) 538)
    (= (calorias segundo31) 1239)
    (= (calorias segundo32) 1066)
    (= (calorias segundo33) 1162)
    (= (calorias segundo34) 967)
    (= (calorias segundo35) 1166)
    (= (calorias segundo36) 799)
    (= (calorias segundo37) 1427)
    (= (calorias segundo38) 1123)
    (= (calorias segundo39) 1203)
    (= (calorias segundo40) 1156)
    (= (calorias segundo41) 911)
    (= (calorias segundo42) 889)
    (= (calorias segundo43) 877)
    (= (calorias segundo44) 649)
    (= (calorias segundo45) 1029)
    (= (calorias segundo46) 685)
    (= (calorias segundo47) 1330)
    (= (calorias segundo48) 1164)
    (= (calorias segundo49) 1339)
	; EXTENSION 5
    ; Precios de los primeros platos
    (= (precio_plato primero0) 13)
    (= (precio_plato primero1) 12)
    (= (precio_plato primero2) 5)
    (= (precio_plato primero3) 9)
    (= (precio_plato primero4) 3)
    (= (precio_plato primero5) 2)
    (= (precio_plato primero6) 0)
    (= (precio_plato primero7) 12)
    (= (precio_plato primero8) 8)
    (= (precio_plato primero9) 14)
    (= (precio_plato primero10) 13)
    (= (precio_plato primero11) 9)
    (= (precio_plato primero12) 14)
    (= (precio_plato primero13) 6)
    (= (precio_plato primero14) 6)
    (= (precio_plato primero15) 2)
    (= (precio_plato primero16) 9)
    (= (precio_plato primero17) 13)
    (= (precio_plato primero18) 1)
    (= (precio_plato primero19) 5)
    (= (precio_plato primero20) 10)
    (= (precio_plato primero21) 7)
    (= (precio_plato primero22) 5)
    (= (precio_plato primero23) 1)
    (= (precio_plato primero24) 12)
    (= (precio_plato primero25) 6)
    (= (precio_plato primero26) 10)
    (= (precio_plato primero27) 11)
    (= (precio_plato primero28) 11)
    (= (precio_plato primero29) 10)
    (= (precio_plato primero30) 3)
    (= (precio_plato primero31) 1)
    (= (precio_plato primero32) 7)
    (= (precio_plato primero33) 0)
    (= (precio_plato primero34) 2)
    (= (precio_plato primero35) 3)
    (= (precio_plato primero36) 9)
    (= (precio_plato primero37) 3)
    (= (precio_plato primero38) 0)
    (= (precio_plato primero39) 2)
    (= (precio_plato primero40) 9)
    (= (precio_plato primero41) 5)
    (= (precio_plato primero42) 3)
    (= (precio_plato primero43) 1)
    (= (precio_plato primero44) 11)
    (= (precio_plato primero45) 9)
    (= (precio_plato primero46) 3)
    (= (precio_plato primero47) 5)
    (= (precio_plato primero48) 0)
    (= (precio_plato primero49) 12)
    ; Precios de los primeros platos
    (= (precio_plato segundo0) 2)
    (= (precio_plato segundo1) 10)
    (= (precio_plato segundo2) 4)
    (= (precio_plato segundo3) 14)
    (= (precio_plato segundo4) 11)
    (= (precio_plato segundo5) 1)
    (= (precio_plato segundo6) 5)
    (= (precio_plato segundo7) 13)
    (= (precio_plato segundo8) 5)
    (= (precio_plato segundo9) 9)
    (= (precio_plato segundo10) 0)
    (= (precio_plato segundo11) 0)
    (= (precio_plato segundo12) 2)
    (= (precio_plato segundo13) 7)
    (= (precio_plato segundo14) 7)
    (= (precio_plato segundo15) 5)
    (= (precio_plato segundo16) 10)
    (= (precio_plato segundo17) 1)
    (= (precio_plato segundo18) 8)
    (= (precio_plato segundo19) 2)
    (= (precio_plato segundo20) 10)
    (= (precio_plato segundo21) 9)
    (= (precio_plato segundo22) 14)
    (= (precio_plato segundo23) 13)
    (= (precio_plato segundo24) 10)
    (= (precio_plato segundo25) 10)
    (= (precio_plato segundo26) 8)
    (= (precio_plato segundo27) 6)
    (= (precio_plato segundo28) 7)
    (= (precio_plato segundo29) 8)
    (= (precio_plato segundo30) 3)
    (= (precio_plato segundo31) 1)
    (= (precio_plato segundo32) 10)
    (= (precio_plato segundo33) 7)
    (= (precio_plato segundo34) 0)
    (= (precio_plato segundo35) 13)
    (= (precio_plato segundo36) 1)
    (= (precio_plato segundo37) 13)
    (= (precio_plato segundo38) 3)
    (= (precio_plato segundo39) 13)
    (= (precio_plato segundo40) 7)
    (= (precio_plato segundo41) 3)
    (= (precio_plato segundo42) 13)
    (= (precio_plato segundo43) 9)
    (= (precio_plato segundo44) 10)
    (= (precio_plato segundo45) 12)
    (= (precio_plato segundo46) 6)
    (= (precio_plato segundo47) 13)
    (= (precio_plato segundo48) 13)
    (= (precio_plato segundo49) 6)

    (= (precio_total) 0)


    )

  (:metric 
    minimize (precio_total)
    )

  (:goal (forall (?d - dia)
                 (and (servido_primero ?d)
                      (servido_segundo ?d)
                      )
                 )
         )
  )
