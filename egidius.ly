\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
}

global = {
  \key d \minor
  \time 4/4
}

sopMusic = \relative c'' {
a8 a8. a16 a4 r2
a8 a8. a16 a4 r2
a8 a8. a16 a4 r2
a8 a8. a16 a4 r2
}
sopWords = \lyricmode {

}

altoMusic = \relative c' {
a'8 a8. a16 a4 r2
a8 a8. a16 a4 r2
d,8 d8. d16 d4 r2
d8 d8. d16 d4 r2


}
altoWords = \lyricmode {
E -- gi -- di -- us 
E -- gi -- di -- us
E -- gi -- di -- us 
E -- gi -- di -- us
E -- gi -- di -- us 
E -- gi -- di -- us
E -- gi -- di -- us 
E -- gi -- di -- us
waer bestu bleven
Mi lanct na di gheselle mijn
Du coors die doot du liets mi tleven
}

tenorMusic = \relative {
a8 a8. a16 a4 r2
a8 a8. a16 a4 r2
a8 a8. a16 a4 r2
}
tenorWords = \lyricmode {

}

bassMusic = \relative {
a8 a8. a16 a4 r2
f8 f8. f16 f4 r2
d8 d8. d16 d4 r2

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
  \midi {}
  \layout {}
}