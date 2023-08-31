\version "2.24.2"
#(define (override-color-for-all-grobs color)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'color color)
      (loop (cdr x)))))))
\header {
  tagline = ""
}
\paper {
  #(define fonts
    (set-global-fonts
     #:music "beethoven"
     #:brace "beethoven"
   ))
}

headHalf={
\once \override NoteHead.stencil = #ly:text-interface::print
\once \override NoteHead.text = #(markup #:musicglyph "noteheads.s1" ) }
\relative c' {
  \applyContext #(override-color-for-all-grobs (x11-color 'white))
  \omit Staff.Clef
  \omit Staff.TimeSignature
  \omit Stem
  \omit Staff.BarLine
  \headHalf
  c d e f
  \headHalf
  g a b
  \headHalf
  c
}
