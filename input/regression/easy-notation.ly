\version "2.11.38"

\header {
    texidoc = " Easy-notation (or Ez-notation) prints names in note heads.
You also get ledger lines, of course."
}


\layout {
  ragged-right = ##t
} 

\relative {
  \easyHeadsOn
  f1 e
  f2 e
  f4 e
  
  \override NoteHead #'note-names = ##("U" "V" "W" "X" "Y" "Z" "z")
  c2 d4 e 
}

