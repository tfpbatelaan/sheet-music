global = {
  \key c \minor
  \time 4/4
  \dynamicUp
  \tempo 4 = 120
}
sopranonotes = \relative c' {
 c2 (g'4) g f g8 (as) g4 r8 g8 f4 (es8 d es4) f g2 g
    c,2 g'4 g f (as8 c) g4 r8 g8 f4 c8 d es4 (d) c2
    }
words = \lyricmode { 
Shir Ha -- ma -- 'a -- lot. Be -- shuv A -- do -- she 
et shi -- vat Tzi -- yon ha -- yi -- nu k' -- chol' -- mim.
}
altonotes = \relative c' {
 c2 (g'4) g f g8 (as) g4 r8 g8 f4 (es8 d es4) f g2 g
    c,2 g'4 g f (as8 c) g4 r8 g8 f4 c8 d es4 (d) c2
    }
tenornotes = \relative c{
  \clef "G_8"
  c2 (g'4) g f g8 (as) g4 r8 g8 f4 (es8 d es4) f g2 g
    c,2 (g'4) g f as8 (c) g4 r8 g8 f4 c8 d es4 (d) c2
    }
bassnotes = \relative c{
  \clef bass
 c2 (g'4) g f g8 (as) g4 r8 g8 f4 (es8 d es4) f g2 g
    c,2 g'4 g f (as8 c) g4 r8 g8 f4 c8 d es4 (d) c2
    }

\score {
  \midi{}
  \layout{}
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
      \lyricsto "soprano" \new Lyrics \words
    >>
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
      \lyricsto "alto" \new Lyrics \words
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
      \lyricsto "tenor" \new Lyrics \words
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
      \lyricsto "bass" \new Lyrics \words
    >>
  >>

}