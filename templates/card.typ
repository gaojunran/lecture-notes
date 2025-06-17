#let conf(doc, font_size: 7pt, page_size: "a6") = {
  show "·": none
  let answer = true
  show regex("·.+?·"): it => {
    if answer {
      set text(red)
      it
    } else {
      set text(white)
      box(it, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))
    }
  }
  show heading.where(level: 1): set text(size: font_size, fill: rgb(0, 0, 255))
  set text(font: "MiSans VF")
  set text(size: font_size)
  set par(spacing: 2mm)
  set page(paper: page_size, margin: 0.4cm, columns: 2)
  doc
}
