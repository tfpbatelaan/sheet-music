\header {
  title = "Shir hama'alot"
  composer = "TFP Batelaan"
}

global = {
  \key a \minor
  \time 4/4
  \tempo 2 = 60
  \dynamicUp
}
sopranonotes = \relative c' {
r1 r1 r1 r1 r1 r1 f'2 e2 c1
}
sopranowords = \lyricmode { 

}
altonotes = \relative c' {
r1 r1 r1 r1 r1 r1 bes'4 a gis2 e1
  }

altowords = \lyricmode { }
tenornotes = \relative c' {
  \clef "G_8"
a2 (e'4) e d e8 (f) e4. e8 d4 (c8 b c4) d e2 e
a,2 e'4 e d (f8 a) e4. e8 d4 a8 b c4 (b) a1
}
tenorwords = \lyricmode {Shir ha -- ma -- a' -- lot, b' -- shuv A -- do -- nai
Et shi -- vat Tzi -- yon ha -- yi -- nu k' -- chol' -- mim}
bassnotes = \relative c{
  \clef bass
r1 r1 r1 r1 
a1 d2 a d e a,1
}
basswords = \lyricmode { }

\score {
\midi{}
\layout{}
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
}