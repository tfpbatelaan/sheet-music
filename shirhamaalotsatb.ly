
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #18
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #10
}

#(set-global-staff-size 15.0)

\header {
  title = "Shir Hama'alot"
  composer = "Minkovsky"
  poet = "Yossele Rosenblatt"
  arranger = "Arr. Thomas F. P. Batelaan (2018)"
}

global = {
  \key c \minor
  \time 4/4
}


sopMusic =
\relative c' { c2 (g'4) g f g8 (as) g4 r8 g8 f4 (es8 d es4) f g2 g
    c,2 g'4 g f (as8 c) g4 r8 g8 f4 c8 d es4 (d) c2
}

sopWords = \lyricmode { 

}


altoMusic = 
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

bassMusic = \transpose des d 
{ \relative {   \clef bass
}

}
bassWords = \lyricmode { 

}

\score {
  \new ChoirStaff 
 \midi {\tempo 2 = 81}    
 \layout {}\with<<
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




