:version 4.0
set autoindent
set shiftwidth=2
set tags=$LILYPOND_SOURCEDIR/flower/tags,$LILYPOND_SOURCEDIR/flower/include/tags,$LILYPOND_SOURCEDIR/lib/tags,$LILYPOND_SOURCEDIR/lib/include/tags,$LILYPOND_SOURCEDIR/lily/tags,$LILYPOND_SOURCEDIR/lily/include/tags
"
" some handy key mappings
"
" F4  save & make and play midi
map <F4> :w:se makeprg=ly2dvi\ -m\ %<:make:!timidity %<.midi
"
" F5  save & make dvi, midi, ps
map <F5> :w:se makeprg=ly2dvi\ -P\ %<:make
"
" F6  view ps
map <F6> :!gv -watch %<.ps &
"
" F7  prev error
map [18~ :cp
"
" F8  next error
map [19~ :cn
"
" F9  make
map [20~ :w:se makeprg=make\ -k:make
"
" F10 run buffer through lily
map [21~ :w:se makeprg=lilypond\ %:t:make
"
" F11 check buffer for quarts
map [23~ :w:se makeprg=lilypond\ -Q\ %:t:make
"
" shift F10: run buffer through lily -M
map [34~ :w:se makeprg=lilypond\ -M\ %:t:make
"
"
" errorformat for lily (with columns) and gcc
" (how to see multiple-line error messages?)
"
se errorformat=%f:%l:%c:\ %m,%f:%l:\ %m,In\ file\ included\ from\ %f:%l:,\^I\^Ifrom\ %f:%l%m

