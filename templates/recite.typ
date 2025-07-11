#let conf(doc, answer: true, print: true, printFont: "STFangsong", screenFont: "MiSans VF") = {
  show "·": none  // Compromise as Rust crate regex does not support look around
  set page(numbering: "1", margin: 1.4cm)
  set text(lang: "zh")
  set text(font: printFont) if print
  set text(font: screenFont) if not print
  set par(spacing: 5mm, leading: 4mm)
  show heading.where(level: 1): set block(above: 2em, below: 1em)

  show regex("·.+?·"): it => {
    if answer {
      set text(red)
      it
    } else {
      set text(white)
      // underline(it, offset: 1pt, stroke: black)
      box(it, stroke: (bottom: 0.5pt), outset: (bottom: 2pt))
    }
  }
  doc
}
