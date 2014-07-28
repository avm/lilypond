%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
  lsrtags = "rhythms, syntax-and-expressions"

  texidoc = "
The property @code{tupletSpannerDuration} sets how long each of the
tuplets contained within the brackets after @code{\\times} should last.
Many consecutive tuplets can then be placed within a single
@code{\\times} expression, thus saving typing.

There are several ways to set @code{tupletSpannerDuration}.  The
command @code{\\tupletSpan} sets it to a given duration, and clears it
when instead of a duration @code{\\default} is specified.  Another way
is to use an optional argument with @code{\\tuplet}.

"
  doctitle = "Entering several tuplets using only one \\tuplet command"
} % begin verbatim

\relative c' {
  \time 2/4
  \tupletSpan 4
  \tuplet 3/2 { c8^"\\tupletSpan 4" c c c c c }
  \tupletSpan \default
  \tuplet 3/2 { c8^"\\tupletSpan \\default" c c c c c }
  \tuplet 3/2 4 { c8^"\\tuplet 3/2 4 {...}" c c c c c }
}
