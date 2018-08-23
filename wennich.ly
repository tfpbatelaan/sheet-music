
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #10
  system-system-spacing.basic-distance = #10
  last-bottom-spacing.basic-distance = #10
}

#(set-global-staff-size 15.0)

\header {
  title = "Wenn ich einmal soll sterben"
  composer = "Thomas Batelaan"
  poet = "Rainer Maria Rilke"
}

global = {
  \key a \minor
  \time 4/4
}


sopMusic = 
\relative c' {
\partial 4 e a g f e d2 e4 b' c c b b a2.
e4 a g f e d2 e4 b' c c b b a2.
c4 b g a b c2 c4
g4 a g f f e2.
c'4 b d c b a2 b4
e, f e d g e
}


sopWords = \lyricmode { 
Du ed -- les An -- ge -- sich -- te,
da -- vor sonst schrickt und scheut
das gro -- ße Welt -- ge -- wich -- te,
wie bist du so be -- speit,
wie bist du so er -- blei -- chet!
Wer hat dein Au -- gen -- licht,
dem sonst kein Licht nicht glei -- chet,
so schänd -- lich zu -- ge -- richt't?
}


altoMusic = 
{\relative {
}
}


tenorMusic = 
{\relative c {   \clef "G_8"
  }

}


bassMusic = 
{ \relative {   \clef bass
a f g a b a c a


}

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
      \new Lyrics \lyricsto "alto" \sopWords
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenorMusic
      >>
      \new Lyrics \lyricsto "tenor" \sopWords
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassMusic
      >>
      \new Lyrics \lyricsto "bass" \sopWords
 >>

  >>
 \layout { }
 \midi {    \tempo 4 = 80}    
}

