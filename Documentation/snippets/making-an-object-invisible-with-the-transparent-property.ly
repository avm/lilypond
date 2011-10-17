% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.15.15
\version "2.15.15"

\header {
  lsrtags = "rhythms, simultaneous-notes, tweaks-and-overrides"

  texidoc = "
Setting the @code{transparent} property will cause an object to be
printed in @qq{invisible ink}: the object is not printed, but all its
other behavior is retained.  The object still takes up space, it takes
part in collisions, and slurs, ties and beams can be attached to it.


This snippet demonstrates how to connect different voices using ties.
Normally, ties only connect two notes in the same voice.  By
introducing a tie in a different voice, and blanking the first up-stem
in that voice, the tie appears to cross voices.

"
  doctitle = "Making an object invisible with the 'transparent property"
} % begin verbatim

\relative c'' {
  \time 2/4
  <<
    {
      \once \override Stem #'transparent = ##t
      \once \override Stem #'length = #8
      b8 ~ b\noBeam
      \once \override Stem #'transparent = ##t
      \once \override Stem #'length = #8
      g8 ~ g\noBeam
    } % begin verbatim

    \\
    {
      b8 g g e
    }
  >>
}
