\version "2.24.2"
#(define (override-color-for-all-grobs color)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'color color)
      (loop (cdr x)))))))

#(define-markup-command (on-color layout props color arg) (color? markup?)
   (let* ((stencil (interpret-markup layout props arg))
          (X-ext (ly:stencil-extent stencil X))
          (Y-ext (ly:stencil-extent stencil Y)))

     (ly:stencil-add 
       (stencil-with-color
         (ly:round-filled-box X-ext Y-ext 0)
         color)
       stencil)))

\relative c' {
    \applyContext #(override-color-for-all-grobs (x11-color 'white))
\omit Score.TimeSignature
\omit Score.BarLine
\omit Score.Stem
\clef treble
\override TextScript.staff-padding = #'()
\override TextScript.outside-staff-priority = ##f
  c^\markup { 
    \with-color #white \on-color #(rgb-color 0.0666666 0.0666666 0.0666666) \pad-markup #0.2 "1"
  }
  d^\markup { 
    \with-color #white \on-color #(rgb-color 0.0666666 0.0666666 0.0666666) \pad-markup #0.2 "2" 
  }
  e^\markup { 
    \with-color #white \on-color #(rgb-color 0.0666666 0.0666666 0.0666666) \pad-markup #0.2 "3" 
  }
}
