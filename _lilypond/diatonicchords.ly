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
  <c e g b-1> <d f a c-2> <e g b d-3> <f a c e-4> <g b d f-5> <a c e g-6> <b d f a-7> <c e g b-1>
}
