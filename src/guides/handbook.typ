#set document(author: "hola")
#set page(paper: "a4", numbering: "1")
#set text(lang: "es", region: "bo")

#show title: set align(center)

#include "overview.html.typ"

#{
  heading(level: 1)[Cómo escribir tu tesis con Typst]
  set heading(offset: 1)
  include "typst.html.typ"
}

#bibliography("ref.hay.yaml", full: true)
