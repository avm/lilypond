\header {

  texidoc = "The whiteout command underlays a white box under a
markup.  "

}
\version "2.19.22"

\paper
{
  ragged-right = ##t
}

\relative {
  \override TextScript.layer = #'2
  \override TextScript.extra-offset = #'(2 . 4)
  c''4-\markup  { \whiteout-box \pad-markup #0.5 foo } c
}
