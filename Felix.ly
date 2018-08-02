
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #18
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #10
}

#(set-global-staff-size 15.0)

\header {
  title = "Felix virgo / Inviolata genitrix / Ad te clamamus gementes et flentes"
  subtitle = "Motet 21"
  meter = "Performing Edition"
  composer = "Guillaume de Machault"
  arranger = "Thomas F. P. Batelaan (2018)"
}

global = {
  \key a \minor
  \time 6/8

}


sopMusic = { \relative { 
d'2.~d2. \melisma  \[f4. e\] e4 d8 d4 cis8 d2.
r4. e4 f8 \[ g4. d \] r4. g d a'4 g8 f4 e8 f4 d8 \melismaEnd
cis2. ~ cis2.

}
}

sopWords = \lyricmode { 
Fe -- lix vir -- go

}


altoMusic = \transpose des d 
{\relative {
  

}
}
altoWords = \lyricmode {


}

tenorMusic = \transpose des d 
{\relative {   \clef "G_8"
 
  
  }

}
tenorWords = \lyricmode { 

}

bassMusic =
\relative {   \clef bass


}
bassWords = \lyricmode { 

}

ficta = { \once \set suggestAccidentals = ##t }
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
      \new Lyrics \lyricsto "alto" \altoWords
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenorMusic
      >>
      \new Lyrics \lyricsto "tenor" \tenorWords
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
 \midi {    \tempo 2 = 81}    
}

