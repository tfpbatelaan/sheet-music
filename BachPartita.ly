global = {
  \key d \minor
  \time 3/4
  \dynamicUp
}
sopranonotes = \relative c'' {
\partial2 a2 e'4 e2 f4 (d4.) c8 bes4 (a) g ~ g4
a2 e'4 e2 f4 (d4.) c8
}
sopranowords = \lyricmode { 
Christ lag in To -- des -- ban -- den,}
altonotes = \relative c' {
f2 bes4 a4 (g) f f (e) d2 ~ d8 cis8 ~ cis4
a'2 (g2.) f e d
}
altowords = \lyricmode { 
Christ lag in To -- des -- ban -- den,
Hal -- le -- lu -- ja!
}
tenornotes = {\relative c { 
  \clef "G_8"
d2 ~ d4 g2 d4 f2 g4 f (e) d4
f2 bes4 a2
}
}
tenorwords = \lyricmode { 
Christ lag in To -- des -- ban -- den,

}
bassnotes = { \relative c {  \clef bass
d2 ~ d4 cis2 d4 bes2 g4 a2 d,4 
d'2 ~ d4 cis2 d4 bes2
}
}
basswords = \lyricmode { 
Christ lag in To -- des -- ban -- den,

}

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
    \new PianoStaff <<
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \sopranonotes >>
        << \global \altonotes >>
      >>
      \new Staff <<
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \tenornotes >>
        << \global \bassnotes >>
      >>
>>
>>
      \midi{}
    \layout{}
}