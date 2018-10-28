global= {
  \time 4/4
  \key a \minor
}

#(set-global-staff-size 15.0)

\header {
  title = "Ach wie flüchtig, ach wie nichtig"
  composer = "Thomas F. P. Batelaan"
  poet = "Johann Sebastian Bach"
}


violinOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Violin 1 "

a4\ppp (b c2~c4) c8(d e4) e\fermata
f e d c b2 a2
}


}

violinTwo = \new Voice \relative c' {
  \set Staff.instrumentName = #"Violin 2 "

e2\glissando\ppp a8 gis a4~a2 gis8 (a b\fermata gis)
a

}

viola = \new Voice \relative c' {
  \set Staff.instrumentName = #"Viola "
  \clef "G_8"
c4\ppp (d e4. dis8) e4. (d8 c4. b8\fermata)



}

cello = \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello "
  \clef "bass"

a1 a8 (g) f4 e e\fermata
d e f8 (g) a4 e2 a,

}

\score {
  \new StaffGroup <<
    \new Staff << \global \violinOne >>
        \set Staff.midiInstrument = #"violin"

    \new Staff << \global \violinTwo >>
            \set Staff.midiInstrument = #"violin"

    \new Staff << \global \viola >>
            \set Staff.midiInstrument = #"viola"

    \new Staff << \global \cello >>
            \set Staff.midiInstrument = #"cello"

  >>
  \layout { }
  \midi { }
}