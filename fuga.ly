\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \key d \minor
  \time 4/4
}

sopMusic = 
\relative c' {
r2. d8 g bes4 bes bes bes a8 f c2. a8 b cis d e4 e f8 e d4 a'4. g8 f e d4 bes'4. g8 f4 a a, cis 
d a2.
}

sopWords = \lyricmode {
}

altoMusic = \relative c' {

}
altoWords = \lyricmode {
}

tenorMusic = \relative c' {

}
tenorWords = \lyricmode {
}

bassMusic = \relative c {
d4 cis d  a'8 bes g4. f8 d4 cis d4 (f) f4. f8 a4 e cis a' d2
}
bassWords = \lyricmode {
}

\score {
  \new ChoirStaff <<
    \new Lyrics = "sopranos" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "women" <<
      \new Voice = "sopranos" {
        \voiceOne
        << \global \sopMusic >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Lyrics = "altos"
    \new Lyrics = "tenors" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "men" <<
      \clef bass
      \new Voice = "tenors" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    \new Lyrics = "basses"
    \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
    \context Lyrics = "altos" \lyricsto "altos" \altoWords
    \context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
    \context Lyrics = "basses" \lyricsto "basses" \bassWords
  >>
  \layout{}
  \midi{    \tempo 4 = 110
}
}