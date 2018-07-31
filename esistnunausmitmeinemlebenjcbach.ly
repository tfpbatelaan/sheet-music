
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
}

\header {
  title = "Es ist nun aus mit meinem Leben"
  composer = "Johann Christoph Bach"
  poet = "Magnus Daniel Omeis (1673)"
}

global = {
  \key des \major
  \time 3/4
}

sopMusic = \relative {
  as'4 f des as'2 as4 bes (c) des des2 c4 | 
  des f, des as'2 as4 bes(c) des c2 des4 | 
  f es des es2 as,4 as2 g4 as2.
}
sopWords = \lyricmode { 
Es ist nun aus mit mei -- nem Le -- ben, 
Gott nimmt es hin, der es __ ge -- ge -- ben. 
Kein TrÃ¶pf -- lein mehr ist in dem Fass, 


}


altoMusic = \relative {
  des'4 des des es2 des4 des(es) des8(es) f2 f4 | 
  f des des es2 des4 des(c) bes es2 f4 | 
  des es f des (c) c des2 des4 c2.

}
altoWords = \lyricmode {
 Es ist nun aus mit mei -- nem Le -- ben, 
 Gott nimmt es hin, der es __ ge -- ge -- ben. 
 Kein TrÃ¶pf -- lein mehr ist in dem Fass, 
}

tenorMusic = \relative {   \clef "G_8"
  f4 as f es (f8 ges)  f4 f (g8 a)  bes4 bes2 a4 | 
  as as f es(f8 ges) f4 ges2 f4 as2 as4 | 
  as as as as2 as4 bes2 bes8 (es,) es2.

}
tenorWords = \lyricmode { 
Es ist nun aus mit mei -- nem Le -- ben, 
Gott nimmt es hin, der es __ ge -- ge -- ben. 
Kein TrÃ¶pf -- lein mehr ist in dem Fass, 

}

bassMusic = \relative {   \clef bass
  des4 des des des(c) des des(c) bes f'(f,) f' | 
  des des des des(c) des ges,(as) bes as2 des4 | 
  des c bes c (f) f bes, (es) es as,2.
}
bassWords = \lyricmode { 
Es ist nun aus mit mei -- nem Le -- ben,
Gott nimmt es hin, der es __ ge -- ge -- ben. 
Kein TrÃ¶pf -- lein mehr ist in dem Fass, 

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
    \new PianoStaff <<
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \sopMusic >>
        << \global \altoMusic >>
      >>
      \new Staff <<
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \tenorMusic >>
        << \global \bassMusic >>
      >>
    >>
  >>
   \midi {
    \tempo 4 = 72
  }
}