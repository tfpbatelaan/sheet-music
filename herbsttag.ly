
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #10
  system-system-spacing.basic-distance = #10
  last-bottom-spacing.basic-distance = #10
}

#(set-global-staff-size 15.0)

\header {
  title = "Herbsttag"
  composer = "Thomas Batelaan"
  poet = "Rainer Maria Rilke"
}

global = {
  \key d \minor
  \time 3/2
}


sopMusic = 
\relative c' {
f'4 (e f2) e4 d e2 r e d cis d e f e e2 f4 e d2
}
}

sopWords = \lyricmode { 
Herr, es ist Zeit.

}


altoMusic = 
{\relative {
a'2 a1 c4 bes a g f e f2 f1 a4 b cis d e f d2 v d2
}
}


tenorMusic = 
{\relative c {   \clef "G_8"
  }
  d4 e f g a4 b c'2 c'1 d4 e f g a bes g2 g1 a2 a1

}


bassMusic = 
{ \relative {   \clef bass
d2 d d c1 c2 bes1 bes2 a1 a2 
d1 d2 c1 c2 bes1 bes2 a1 a2 
d1 d2 c1 c2 bes1 bes2 a1 a2 
d1 d2 c1 c2 bes1 bes2 a1 a2 


}

}
 bassWords = 
 \lyricmode {Herr: es ist Zeit. Der Som -- mer war sehr groÃÂÃÂ.
Leg dei -- nen Schat -- ten auf die Son -- nen -- uh -- ren,
und auf den Flu -- ren laÃÂÃÂ die Win -- de los.

Be -- fiehl den letz -- ten FrÃÂÃÂ¼ch -- ten voll zu sein;
gieb ih -- nen noch zwei sÃÂÃÂ¼d -- lich -- e-- re Ta -- ge,
drÃÂÃÂÃÂÃÂ¤n--ge sie zur Voll--en--dung hin und ja--ge
die letz--te SÃÂÃÂÃÂÃÂ¼--ÃÂÃÂÃÂÃÂe in den schwe--ren Wein.

Wer jetzt kein Haus hat, baut sich keines mehr.
Wer jetzt allein ist, wird es lange bleiben,
wird wachen, lesen, lange Briefe schreiben
und wird in den Alleen hin und her
unruhig wandern, wenn die BlÃÂÃÂÃÂÃÂ¤tter treiben.}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopMusic
      >>
      \new Lyrics \lyricsto "soprano" \sopWords
    >>
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altoMusic
      >>
      \new Lyrics \lyricsto "alto" \sopWords
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenorMusic
      >>
      \new Lyrics \lyricsto "tenor" \sopWords
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassMusic
      >>
      \new Lyrics \lyricsto "bass" \bassWords
 >>

  >>
 \layout { }
 \midi {    \tempo 2 = 100}    
}

