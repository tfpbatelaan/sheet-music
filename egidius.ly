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
d,1 d d d
d'4. d,8 d4 d 
d d d d
d'4. d,8 d4 d 
d d d d


}
sopWords = \lyricmode {

}

altoMusic = \relative c' {
d1
bes1
b1
c1
d4 d d d
bes4 bes bes bes
b4 b b b
c4 c c c



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
d1
d1
g1
f1
d4 d d d
d4 d d d
g4 g g g
f4 f f f

}
tenorWords = \lyricmode {

}

bassMusic = \relative {
d1
d1
d1
d1
d4 d d d
d4 d d d
d4 d d d
d4 d d d


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