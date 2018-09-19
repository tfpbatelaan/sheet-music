global = {
  \key d \minor
  \time 3/4
  \dynamicUp
}
sopranonotes = \relative c'' {
\partial2 a4. a8 e'4 e4. e8 f4 d4. c8 bes4 a g16 f e f g e f d a'4.
}
sopranowords = \lyricmode { }
altonotes = \relative c'' {
 
}
altowords = \lyricmode { }
tenornotes = {
  \clef "G_8"

}
tenorwords = \lyricmode { }
bassnotes = {
  \clef bass
d'2 d4 cis2 d4 bes,2 g,4 a, cis d8 d2
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