global= {
  \time 4/4
  \key a \minor
}

#(set-global-staff-size 15.0)

\header {
  title =  "ACH WIE FLÃÂCHTIG, ACH WIE NICHTIG"
  composer = "Thomas F. P. Batelaan"
  poet = "Johann Sebastian Bach"
}


violinOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Violin 1 "

a4\ppp (b c c) c c8(d e4) e\fermata
f e d c b2 a2
}




violinTwo = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Violin 2 "
a1\ppp a4 (b c b)\fermata
d c a a 


}

viola = \new Voice \relative c' {
  \set Staff.instrumentName = #"Viola "
  \clef "G_8"
a2.\ppp (b4 c2.) b4\fermata


}

cello = \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello "
  \clef "bass"

a2\ppp f c a2\fermata
d4 e f8 (g) a4 e2 a,

}

\score {
  \new StaffGroup <<
    \new Staff \with {midiInstrument = #"string ensemble 1"} << \global \violinOne >>

    \new Staff  \with {midiInstrument = #"string ensemble 1"} << \global \violinTwo >>

    \new Staff  \with {midiInstrument = #"string ensemble 1"} << \global \viola >>

    \new Staff \with {midiInstrument = #"string ensemble 1"} << \global \cello >>

  >>
  \layout { }
  \midi { }
}
