%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.2"

\header {
  lsrtags = "expressive-marks, ancient-notation"

%% Translation of GIT committish: d5307870fe0ad47904daba73792c7e17b813737f
  texidocfr = "
On trouve régulièrement, en musique baroque, cette courte ligne
verticale. Sa signification peut varier, mais elle indique le plus
souvent une note plus « appuyée ».  Voici comment générer ce signe
particulier.

"
  doctitlefr = "Articulation baroque en forme de coche"

  texidoc = "
This short vertical line placed above the note is commonly used in
baroque music.  Its meaning can vary, but generally indicates notes
that should be played with more @qq{weight}.  The following example
demonstrates how to achieve such a notation.

"
  doctitle = "Vertical line as a baroque articulation mark"
} % begin verbatim


upline =
#(let ((m (make-articulation "stopped")))
   (set! (ly:music-property m 'tweaks)
         (acons 'font-size 3
                (acons 'stencil (lambda (grob)
                                  (grob-interpret-markup
                                   grob
                                   (make-draw-line-markup '(0 . 1))))
                       (ly:music-property m 'tweaks))))
   m)


\relative c' {
  a'4^\upline a( c d')_\upline
}
