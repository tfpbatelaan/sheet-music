
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #18
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #10
}

#(set-global-staff-size 16.0)

\header {
  title = "Felix virgo / Inviolata genitrix / Ad te suspiramus gementes et flentes"
  subtitle = "Motet 21"
  composer = "Tekst en Muziek: Guillaume de Machaut"
  arranger = "Red. Thomas F. P. Batelaan (2018)"
}

global = {
  \key a \minor

}

ficta = { \once \set suggestAccidentals = ##t }
 mb = \melisma
 me = \melismaEnd

sopMusic = { 
\relative {   \time 6/8

d'2.~d2. \melisma  f4. e e4 d8 d4 \ficta cis8 d2.
r4. e4 f8 g4. d r4. g \break d a'4 g8 f4 e8 f4 d8 \melismaEnd
cis2. ~ cis2.  gis' \melisma r4. a4. g4 a8 g4 a8 f4 g8 a4 g8
b4 a8 g4 f8 e2. r4. f e4 f8 e4 d8 \melismaEnd g4 \mb f8 \me e4 \mb d8 \me c4. d e2.~e
a2. ~ a d,4 \mb c8 \me d4 \mb e8 \me f4 \mb e8 f4 g8 \me a4 \mb g8 a4 f8 \me f8 \mb e f \me e4 \mb d8 \me cis2. ~ cis ~ cis
d4. a' g4 \mb a8 g4 f8 \me e4 \mb f8 \me d4 \mb e8 \me f8 \mb g4 a8 f4 \me gis2. ~ gis a2. ~ a ~ a \break
a4. ~ ( a4 g8)\mb  a8 g a f4 e8 \me d4. \mb e4 \ficta fis8 \me  g4 \mb a8 \ficta fis4 g8 \me e2. ~ e \break
g4. a g2. f8 \mb e f \me d4 \mb e8 \me f4 \mb e8 \me d4 \mb c8 \me d2. r \break
c4 \mb d8 e4 f8 e4. d \me a'2. f4 \mb e8 f4 g8 \me e2. ~ e
}
}

sopWords = \lyricmode { 
Fe -- lix vir -- go,  ma -- ter Chri -- sti,
Que gau -- di -- um mun -- do tri -- sti
Or -- tu tu -- i con -- tu -- li -- sti,
Dul -- cis -- si -- ma;
Sic he -- re -- ses per -- e -- mi -- sti,
Dum __ an -- ge -- lo cre -- di -- di -- sti
}


altoMusic = 
{\relative { \clef "G_8"   \time 6/8
r2. r2. r2. r2. r2. r2.r2. r2. r2.r2. 
e'2. ~ e f2. e4. d e2. f4. e a,2.
cis \mb d \me \ficta cis4. d e f g4 \mb f8 \me e4 \mb d8 \me cis2.~cis \break
d ~ d f4 \mb e8 f4 g8 \me a4. d,
d4 \mb e8 f4 g8 \me a \mb g f e4 d8 \me e2. ~ e ~ e \break
f4 \mb e8 d4 c8 d4 e8 c4 d8 \me b4 \mb c8 a4 b8 \me c4 \mb b8 c4 a8 \me cis2. ~ cis d2. ~ d ~ d
e2. \mb d2. \me b4. \mb a4 b8 \me c4 \mb b8 a4 b8 \me g2. ~ g
e'2. ~ e d4  \mb e8 f4 e8 d2. \me g4. \mb d4 e8 f4 e8 f4 d8 \me \break
e2. r d \mb a4 b8 c4 a8 \me b2. ~ b \break
}
}
altoWords = \lyricmode {
In -- vi -- o -- la -- ta ge -- ni -- trix
Su -- per -- bi -- e gra -- ta vic -- trix
Ex -- pers __ pa -- ris, Ce -- le -- stis
au -- le ja -- ni -- trix,
Mi -- se -- ro -- rum ex -- au -- di -- trix,
Stel -- la



}

tenorMusic = 
{\relative {   \clef bass   \time 12/8
\compoundMeter #'((6 6 8))

 r1. r r r r r r r r r r r
\compoundMeter #'((6 6 6 8))

a1. ~ a2. a1. ~ a2. e1. ~ e2. d2. g1. a2. \ficta gis1. a1. ~ a2. \bar "|"
  \compoundMeter #'((6 6 8))
a1.  r c g1. bes bes
r2. a2. d, f e1.

\compoundMeter #'((6 6 6 8))

  }

}
tenorWords = \lyricmode { 

}

bassMusic =
\relative {   \clef bass   \time 12/8
\compoundMeter #'((6 6 8))
 r1. r r r r r r r r r r r

\compoundMeter #'((6 6 6 8))
d1. ~ d2. d1. ~ d2. g1. ~ g2. a2. e1. f2. e1. d1. ~ d2.
r2. d1. c1. ~ c2.
r1. ~ r2. f2. g1.
a1. ~ a2. c2. g1.

\compoundMeter #'((6 6 8))


}
bassWords = \lyricmode { 

}

\score {
  \new ChoirStaff <<
    \new Staff \with {
  instrumentName = #"Triplum "
  shortInstrumentName = #"Tr. "
}<<
      \new Voice = "soprano" <<
        \global
        \sopMusic
      >>
      \new Lyrics \lyricsto "soprano" \sopWords
    >>
    \new Staff \with {
  instrumentName = #"Motetus "
  shortInstrumentName = #"Mt. "
}<<
      \new Voice = "alto" <<
        \global
        \altoMusic
      >>
      \new Lyrics \lyricsto "alto" \altoWords
    >>
    \new Staff \with {
  instrumentName = #"Contratenor "
  shortInstrumentName = #"cT. "
}<<
      \new Voice = "tenor" <<
        \global
        \tenorMusic
      >>
      \new Lyrics \lyricsto "tenor" \tenorWords
    >>
    \new Staff \with {
  instrumentName = #"Tenor "
  shortInstrumentName = #"T. "
}<<
      \new Voice = "bass" <<
        \global
        \bassMusic
      >>
      \new Lyrics \lyricsto "bass" \bassWords


 >>
 
  >>
 \layout {\context {
    \Score
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
  }
  \context {
    \Staff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
  } }
 \midi {    \tempo 2 = 81}    
}

