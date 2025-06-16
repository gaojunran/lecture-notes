#let conf(doc, answer: true, print: true) = {
  show "·": none  // Compromise as Rust crate regex does not support look around
  set page(numbering: "1")
  set text(lang: "zh")
  set text(font: "FangSong_GB2312") if print
  set text(font: "MiSans VF") if not print
  set par(spacing: 5mm, leading: 4mm)
  show heading.where(level: 1): set block(spacing: 1em)
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
