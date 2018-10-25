\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \key a \minor
  \time 4/4
  \tempo 4 = 81

}

sopMusic = \relative c'' {
a4 b c4 c c c8(d) e4 e
f e d c b2 a2}
sopWords = \lyricmode {
}

altoMusic = \relative c' { 

e4 e a8 (gis) a4 a4 a4 gis8 (a) b (gis)
a }

altoWords = \lyricmode {
Ach wie flüch -- tig, ach wie nich -- tig
ist des Men -- schen Le -- ben.
}

tenorMusic = \relative c'' {
c,4 b e4 e8 (dis) e4 d c b
}
tenorWords = \lyricmode {
}

bassMusic = \relative c' {
a4 gis a a a8 (g) f4 e e
d e f8 (g) a4 e2 a,
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
  \midi{}
  \layout{}
}