#let conf(doc, answer: true, print: true) = {
  show "·": none  // Compromise as Rust crate regex does not support look around
  set text(font: "FangSong_GB2312") if print
  set text(font: "MiSans VF") if not print
  
  show regex("·.+?·"): it => {
    if answer {
      set text(red)
      it
    } else {
      set text(white)
      underline(offset: 1pt, stroke: black)(it)
    }
  }
  
  doc
}
