\header {
  title = "BAD IDEA"
  composer = "Ariana Grande, Max Martin"
}

global = {
  \key dis \minor
  \time 4/4
  \tempo 4 = 132
  \dynamicUp
}
sopranonotes = \relative c' {
}
sopranowords = \lyricmode { 

}
altonotes = \relative c'' {
r4 ais8 ais fis fis gis gis gis gis   }

altowords = \lyricmode { }
tenornotes = \relative c' {

}
tenorwords = \lyricmode {}
bassnotes = \relative c{
  \clef bass
dis8 dis r4 r2 b8 b r4 cis8 cis r4 
dis8 dis r4 r2 b8 b r4 cis8 cis r4 
dis8 dis r4 r2 b8 b r4 cis8 cis r4 


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