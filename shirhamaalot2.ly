\header {
  title = "Shir hama'alot"
  composer = "TFP Batelaan"
}

global = {
  \key d \minor
  \time 4/4
  \tempo 2 = 60
  \dynamicUp
}
sopranonotes = \relative c' {
  d2 (a'4) a g a8 (bes) a4. a8 g4 (f8 e f4) g a2 a2
d,2 a'4 a g (bes8 d) a4. g8 g4 d8 e f4 (e) d1
}
sopranowords = \lyricmode { 
Shir ha -- ma -- a' -- lot, b' -- shuv A -- do -- nai
Et shi -- vat Tzi -- yon ha -- yi -- nu k' -- chol' -- mim
}
altonotes = \relative c' {
  d4 (e) f2 g4 g4 a8 (b cis) cis,8 d4 (d8 cis d4) g cis,8 (d4.) e2
d,2 a'4 a g (bes8 d) a4. g8 g4 d8 e f4 (e) d1}
altowords = \lyricmode { Shir ha -- ma -- a' -- lot, b' -- shuv A -- do -- nai
Et shi -- vat Tzi -- yon ha -- yi -- nu k' -- chol' -- mim }
tenornotes = \relative c {
  \clef "G_8"
  f2 (f8 e) d4 bes' c8 (d) e4. e8 g4 (f8 e f4) g e4. (d8) cis2
d,2 a'4 a g (bes8 d) a4. g8 g4 d8 e f4 (e) d1}
tenorwords = \lyricmode {Shir ha -- ma -- a' -- lot, b' -- shuv A -- do -- nai
Et shi -- vat Tzi -- yon ha -- yi -- nu k' -- chol' -- mim }
bassnotes = \relative c{
  \clef bass
  d2. d4 e8 (f) g4 a,4. a8 g2 (g'4) g4 a2 a2
d,2 a'4 a g (bes8 d) a4. g8 g4 d8 e f4 (e) d1}
basswords = \lyricmode { Shir ha -- ma -- a' -- lot, b' -- shuv A -- do -- nai
Et shi -- vat Tzi -- yon ha -- yi -- nu k' -- chol' -- mim }

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