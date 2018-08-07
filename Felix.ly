
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #18
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #10
}

#(set-global-staff-size 15.0)

\header {
  title = "Felix virgo / Inviolata genitrix / Ad te suspiramus gementes et flentes"
  subtitle = "Motet 21"
  meter = "Performing Edition"
  composer = "Guillaume de Machault"
  arranger = "Thomas F. P. Batelaan (2018)"
}

global = {
  \key a \minor

}

ficta = { \once \set suggestAccidentals = ##t }

sopMusic = { 
\relative {   \time 6/8

d'2.~d2. \melisma  f4. e e4 d8 d4 \ficta cis8 d2.
r4. e4 f8 g4. d r4. g d a'4 g8 f4 e8 f4 d8 \melismaEnd
cis2. ~ cis2.  gis' \melisma r4. a4. g4 a8 g4 a8 f4 g8 a4 g8
b4 a8 g4 f8 e2. r4. f e4 f8 e4 d8 \melismaEnd g4 (f8) e4 (d8) c4. d e2.~e
a2. ~ a d,4 c4 (d8) d4 (e8) f4 (e8 f4 g8 ) a4 (g8 a4 f8 ) f8 (e f ) e4 (d8) cis2. ~ cis ~ cis

}
}

sopWords = \lyricmode { 
Fe -- lix vir -- go,  ma -- ter Chri -- sti,
Que gau -- di -- um mun -- do tri -- sti
}


altoMusic = 
{\relative { \clef "G_8"   \time 6/8
r2. r2. r2. r2. r2. r2.r2. r2. r2.r2. 
e'2. ~ e f2. e4. d e2. f4. e a,2.
cis (d) \ficta cis4. d e f g4 (f8) e4 (d8) cis2.~cis
d ~ d f4 (e8 f4 g8) a4. d,
d4 ( e8 f4 g8 ) a (g f e4 d8 ) e2. ~ e ~ e
}
}
altoWords = \lyricmode {
In -- vi -- o -- la -- ta ge -- ni -- trix
Su -- per -- bi -- e gra -- ta vic -- trix
Ex -- pers __ pa -- ris, Ce -- le -- stis
}

tenorMusic = 
{\relative {   \clef bass   \time 12/8
 r1. r r r r r r r r r r r
 \time 8/4
a1. ~ a2. a e
  
  }

}
tenorWords = \lyricmode { 
Ad te sus -- pi -- ra -- mus
}

bassMusic =
\relative {   \clef bass   \time 12/8
 r1. r r r r r r r r r r r

 \time 8/4

d1. ~ d2. d g
}
bassWords = \lyricmode { 
Ad te sus -- pi -- ra -- mus
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopMusic
      >>
      \new Lyrics \lyricsto "soprano" \sopWords
    >>
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altoMusic
      >>
      \new Lyrics \lyricsto "alto" \altoWords
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenorMusic
      >>
      \new Lyrics \lyricsto "tenor" \tenorWords
    >>
    \new Staff <<
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

