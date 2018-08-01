
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
}

\header {
  title = "Es ist nun aus mit meinem Leben"
  meter = "Urtext"
  composer = "Johann Christoph Bach (1642 â 1703)"
  poet = "Magnus Daniel Omeis (1673)"
  arranger = "Thomas F. P. Batelaan (2017)"
}

global = {
  \key des \major
  \time 3/4
}

sopMusic = \relative {
  as'8 f des as'8 as8 bes (c) des des8 c8 | 
  des f, des as'8 as8 bes(c) des c8\trill des8\fermata | 
  f es des es8 as,8 as8\trill g8 as8. 
   as8 as as as (bes) c des (bes) as as8\trill g8\fermata
   as as as as (bes) c des (bes) as g8\trill f8\fermata
   f' des des es8 as,8 des8 des8(c) c8. 
   des8 c bes a8 bes8 c (f,) f f8.
   f8 des'8. c8 c8. f,8\p des'8. c8 c8.
   des8 c,8. des8  des \melisma es8 f ges as bes c des8 \melismaEnd
   des c,8. des8 des8.

}
sopWords = \lyricmode { 
Es ist nun aus mit mei -- nem Le -- ben, 
Gott nimmt es hin, der es __ ge -- ge -- ben. 
Kein Tröpf -- lein mehr ist in dem Fass, 
es will kein Fünk -- lein mehr __ ver -- fan -- gen,
des Le -- bens Licht __ ist aus -- ge -- gan -- gen.
Kein Körn -- lein läuft __ mehr in __ dem __ Glas,
es ist nun aus, est ist voll -- bracht,
Welt gu -- te Nacht, Welt, gu -- te Nacht,
Welt gu -- te Nacht, __ Welt, gu -- te Nacht.


}


altoMusic = \relative {
  des'8 des des es8 des8 des(es) des8(es) f8 f8 | 
  f des des es8 des8 des(c) bes es8 f8 | 
  des es f es (c) c des8 des8 c8.
  c8 des es des (c8 bes) as8 f'8 f8 f8 e8
  f f ges f8 es8 des8 (es f8) f e8 f8
  as as f es (c) c f (es) es es8.

}
altoWords = \lyricmode {
Es ist nun aus mit mei -- nem Le -- ben, 
Gott nimmt es hin, der es __ ge -- ge -- ben. 
Kein Tröpf -- lein mehr ist in dem Fass, 
es will kein Fünk -- lein mehr __ ver -- fan -- gen,
des Le -- bens Licht __ ist aus -- ge -- gan -- gen.
Kein Körn -- lein läuft __ mehr in __ dem __ Glas,
}

tenorMusic = \relative {   \clef "G_8"
  f8 as f es (f8 ges)  f8 f (g8 a)  bes8 bes8 a8 | 
  as as f es(f8 ges) f8 ges8 f8 as8 as8 | 
  as as as as8 as8 bes8 bes8 (es,) es8.
  es8 es es f (g) as bes8 (c des8) c c8 c8 
  c c c des f,8 (g as8) bes8 (c des8) c c8 a8
  des as as as8 as8 as8 g8 as8.

}
tenorWords = \lyricmode { 
Es ist nun aus mit mei -- nem Le -- ben, 
Gott nimmt es hin, der es __ ge -- ge -- ben. 
Kein Tröpf -- lein mehr ist in dem Fass, 
es will kein Fünk -- lein mehr __ ver -- fan -- gen,
des Le -- bens Licht __ ist aus -- ge -- gan -- gen.
Kein Körn -- lein läuft __ mehr in __ dem __ Glas,

}

bassMusic = \relative {   \clef bass
  des8 des des des(c) des des(c) bes f'(f,) f' | 
  des des des des(c) des ges,(as) bes as8 des8 | 
  des c bes c (f) f bes, (es) es as,8.
  as8 bes c des8 c8 bes8 f'8 c8 
  c8f, f' es des8 c8 bes8 f'8 c8 f,8
  des' f des c (f) f bes, (es) es, as8.

}
bassWords = \lyricmode { 
Es ist nun aus mit mei -- nem Le -- ben, 
Gott nimmt es hin, der es __ ge -- ge -- ben. 
Kein Tröpf -- lein mehr ist in dem Fass, 
es will kein Fünk -- lein mehr __ ver -- fan -- gen,
des Le -- bens Licht __ ist aus -- ge -- gan -- gen.
Kein Körn -- lein läuft __ mehr in __ dem __ Glas,

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
 \layout { }
 \midi {    \tempo 2 = 81}    
}
