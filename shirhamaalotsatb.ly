global = {
  \key c \minor
  \time 4/4
  \dynamicUp
}
\tempo 4 = 120
sopranonotes = \relative c'' {
  c2 (g'4) g f g8 (as) g4 r8 g8 f4 es8 d es4 f g2 g
    c,2 (g'4) g f as8 (c) g4 r8 g8 f4 c8 d es4 d c2}
sopranowords = \lyricmode { Shir ha -- ma -- 'a -- lot. Be -- shuv A -- do -- nai }
altonotes = \relative c'' {
  c2 (g'4) g f g8 (as) g4 r8 g8 f4 es8 d es4 f g2 g
    c,2 (g'4) g f as8 (c) g4 r8 g8 f4 c8 d es4 d c2}
altowords = sopranowords
tenornotes = {
  \clef "G_8"
  c2 (g'4) g f g8 (as) g4 r8 g8 f4 es8 d es4 f g2 g
    c,2 (g'4) g f as8 (c) g4 r8 g8 f4 c8 d es4 d c2}
tenorwords = sopranowords
bassnotes = {
  \clef bass
  c2 (g'4) g f g8 (as) g4 r8 g8 f4 es8 d es4 f g2 g
    c,2 (g'4) g f as8 (c) g4 r8 g8 f4 c8 d es4 d c2}
basswords = sopranowords

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
}