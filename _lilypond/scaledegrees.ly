\version "2.24.2"
#(define (override-color-for-all-grobs color)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'color color)
      (loop (cdr x)))))))

\relative c' {
    \applyContext #(override-color-for-all-grobs (x11-color 'white))
\omit Score.TimeSignature
\omit Score.BarLine
\omit Score.Stem
  \set fingeringOrientations = #'(down)
  \clef treble
  <c-1> <d-2> <e-3> <f-4> <g-5> <a-6> <b-7> <c-1>
}
