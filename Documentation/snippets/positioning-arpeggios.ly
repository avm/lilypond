%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.2"

\header {
  lsrtags = "expressive-marks, tweaks-and-overrides"

%% Translation of GIT committish: b482c3e5b56c3841a88d957e0ca12964bd3e64fa
  texidoces = "
Si necesitamos alargar o acortar un símbolo de arpegio, podemos
modificar independientemente los extremos superior e inferior.

"
  doctitlees = "Posicionar símbolos de arpegio"



%% Translation of GIT committish: 28097cf54698db364afeb75658e4c8e0e0ccd716
  texidocfr = "
L'ajustement de la taille d'une indication d'arpeggio s'effectue au
travers du positionnement de ses extrémités haute ou basse.

"
  doctitlefr = "Positionnement des arpeggios"

  texidoc = "
If you need to extend or shorten an arpeggio, you can modify the upper
and lower start positions independently.

"
  doctitle = "Positioning arpeggios"
} % begin verbatim


\relative c' {
  <c e g b>1\arpeggio
  \once \override Arpeggio #'positions = #'(-5 . 0)
  <c e g b>1\arpeggio
  \once \override Arpeggio #'positions = #'(0 . 5)
  <c e g b>1\arpeggio
  \once \override Arpeggio #'positions = #'(-5 . 5)
  <c e g b>1\arpeggio
}
