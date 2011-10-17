\version "2.15.15"

\header {
  lsrtags = "rhythms"

%% Translation of GIT committish: 2d548a99cb9dba80f2ff035582009477cd37eceb
  texidoces = "

Los valores predeterminados para las notas de adorno están
almacenados en los identificadores @code{startGraceMusic},
@code{stopGraceMusic}, @code{startAcciaccaturaMusic},
@code{stopAcciaccaturaMusic}, @code{startAppoggiaturaMusic} y
@code{stopAppoggiaturaMusic}, que están definidos en el archivo
@file{ly/grace-init.ly}.  Redefiniéndolos se pueden obtener otros
efectos.

"

  doctitlees = "Redefinición de los valores globales predeterminados para notas de adorno"



%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Die globalen Standardeinstellungen für Verzierungsnoten werden in
den Variablen@code{startGraceMusic}, @code{stopGraceMusic},
@code{startAcciaccaturaMusic}, @code{stopAcciaccaturaMusic},
@code{startAppoggiaturaMusic} und @code{stopAppoggiaturaMusic}
gespeichert, die in der Datei @file{ly/grace-init.ly} definiert
sind.  Wenn man sie umdefiniert, können andere Effekte erreicht
werden.

"
  doctitlede = "Globale Umdefinition von Verzierungsnoten"



%% Translation of GIT committish: 374d57cf9b68ddf32a95409ce08ba75816900f6b
  texidocfr = "
Vous pouvez modifier les valeurs des variables @code{startGraceMusic},
@code{stopGraceMusic}, @code{startAcciaccaturaMusic},
@code{stopAcciaccaturaMusic}, @code{startAppoggiaturaMusic}, et
@code{stopAppoggiaturaMusic} afin d'en personnaliser les effets.  Pour
plus de détails, voir le fichier @file{ly/grace-init.ly}.

"
  doctitlefr = "Redéfinition des réglages de mise en forme par défaut des notes d'ornement"

  texidoc = "
The global defaults for grace notes are stored in the identifiers
@code{startGraceMusic}, @code{stopGraceMusic},
@code{startAcciaccaturaMusic}, @code{stopAcciaccaturaMusic},
@code{startAppoggiaturaMusic} and @code{stopAppoggiaturaMusic}, which
are defined in the file @code{ly/grace-init.ly}.  By redefining them
other effects may be obtained.

"
  doctitle = "Redefining grace note global defaults"
} % begin verbatim

startAcciaccaturaMusic = {
  s1*0(
  \override Flag #'stroke-style = #"grace"
  \slurDashed
}

stopAcciaccaturaMusic = {
  \revert Flag #'stroke-style
  \slurSolid
  s1*0)
}

\relative c'' {
  \acciaccatura d8 c1
}

