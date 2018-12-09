\header {
  title = "Psalm 137"
  composer = "Thomas Batelaan (2018)"
}

global = {
  \key d \minor
  \time 4/4
  \dynamicUp
  \tempo 4 = 120
}
sopranonotes = \relative c'' {
a4 g f e d2 cis d
}
sopranowords = \lyricmode { 
Droef za -- ten wij aan Ba -- by -- lons Ri -- vie -- ren
}
altonotes = \relative c'' {
}
altowords = \lyricmode { 
Droef za -- ten wij aan Ba -- by -- lons Ri -- vie -- ren
 }
tenornotes = \relative c { 
  \clef "G_8" 
}
tenorwords = \lyricmode { 
Droef za -- ten wij aan Ba -- by -- lons Ri -- vie -- ren }
bassnotes = \relative c {
  \clef bass 
d1 f2 g a a a g a b c a r
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


