\version "2.24.2"
#(define (override-color-for-all-grobs color)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'color color)
      (loop (cdr x)))))))
\layout { 
  ragged-right = ##f 
}
\relative c' {
    \applyContext #(override-color-for-all-grobs (x11-color 'white))
\omit Score.TimeSignature
\omit Score.BarLine
\omit Score.Stem
  \override TextScript.staff-padding = #4
  \override TextScript.self-alignment-X = #CENTER
  \textLengthOn
\key bes \major
<bes d f a>^"Imaj7"
<c ees g bes>^"II-7"
<d f a c>^"III-7"
<ees g bes d>^"IVmaj7"
<f a c ees>^"V7"
<g bes d f>^"VI-7"
<a c ees g>^"VIIᵒ7"
<bes d f a>^"Imaj7"
}
