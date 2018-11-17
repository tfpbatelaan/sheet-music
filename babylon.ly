\header {
  title = "Psalm 137"
  composer = "Thomas Batelaan (2018)"
}

global = {
  \key c \major
  \time 4/4
  \dynamicUp
  \tempo 4 = 120
}
sopranonotes = \relative c'' {
r1 r1 d2 f4 g a2 d,4 d c d e2 f d
}
sopranowords = \lyricmode { 
Droef za -- ten wij aan Ba -- by -- lons Ri -- vie -- ren
}
altonotes = \relative c' {
r1 r2 d2 f4 g a4 a a g a b c2 a ~
}
altowords = \lyricmode { 
Droef za -- ten wij aan Ba -- by -- lons Ri -- vie -- ren
 }
tenornotes = \relative c { 
  \clef "G_8" 
d2 f4 g a1 a a g a b c2 a d1
}
tenorwords = \lyricmode { 
Droef za -- ten wij aan Ba -- by -- lons Ri -- vie -- ren }
bassnotes = {
  \clef bass 
r1 d2 f4 g a1 d e2 f d4 c d e f2 d
}
basswords = \lyricmode { }

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" << 
        \global 
        \sopranonotes 
      >>
      \lyricsto "soprano" \new Lyrics \sopranowords
    >>
    \new Staff <<
      \new Voice = "alto" <<
        \global 
        \altonotes 
      >>
      \lyricsto "alto" \new Lyrics \altowords
    >>
    \new Staff <<
      \new Voice = "tenor" << 
        \global 
        \tenornotes 
      >>
      \lyricsto "tenor" \new Lyrics \tenorwords
    >>
    \new Staff <<
      \new Voice = "bass" << 
        \global 
        \bassnotes 
      >>
      \lyricsto "bass" \new Lyrics \basswords
    >>
  >>
  \midi{}
  \layout{}
}


