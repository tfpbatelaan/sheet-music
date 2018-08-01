
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
  \time 3/2
}

sopMusic = \relative {
  as'2 f des as'1 as2 bes (c) des des1 c2 | 
  des f, des as'1 as2 bes(c) des c1 des2 | 
  f es des es1 as,2 as1 g2 as1. 
   as2 as as as (bes) c des (bes) as as1 g2
   as as as as (bes) c des (bes) as g1 f2
   f' des des es1 as,2 des1 des4(c) c1. 
   des2 c bes a1 bes2 c (f,) f f1.
   f2 des'2. c4 c1.

}
sopWords = \lyricmode { 
Es ist nun aus mit mei -- nem Le -- ben, 
Gott nimmt es hin, der es __ ge -- ge -- ben. 
Kein Tröpf -- lein mehr ist in dem Fass, 
es will kein Fünk -- lein mehr __ ver -- fan -- gen,
des Le -- bens Licht __ ist aus -- ge -- gan -- gen.
Kein Körn -- lein läuft __ mehr in __ dem __ Glas,
es ist nun aus, est ist voll -- bracht,
Welt gu -- te Nacht, Welt, gu -- te Nacht


}


altoMusic = \relative {
  des'2 des des es1 des2 des(es) des4(es) f1 f2 | 
  f des des es1 des2 des(c) bes es1 f2 | 
  des es f es (c) c des1 des2 c1.
  c2 des es des (c4 bes) as2 f'1 f2 f1 e2
  f f geses f1 es2 des4 (es f2) f e1 f2
  as as f es (c) c f (es) es es1.

}
altoWords = \lyricmode {
Es ist nun aus mit mei -- nem Le -- ben, 
Gott nimmt es hin, der es __ ge -- ge -- ben. 
Kein Tröpf -- lein mehr ist in dem Fass, 
es will kein Fünk -- lein mehr __ ver -- fan -- gen,
des Le -- bens Licht __ ist aus -- ge -- gan -- gen.
Kein Körn -- lein läuft __ mehr in __ dem __ Glas,
}

tenorMusic = \relative {   \clef "G_4"
  f2 as f es (f4 ges)  f2 f (g4 a)  bes2 bes1 a2 | 
  as as f es(f4 ges) f2 ges1 f2 as1 as2 | 
  as as as as1 as2 bes1 bes4 (es,) es1.
  es2 es es f (g) as bes4 (c des2) c c1 c2 
  c c c des f,4 (g as2) bes4 (c des2) c c1 a2
  des as as as1 as2 as1 g2 as1.

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
  des2 des des des(c) des des(c) bes f'(f,) f' | 
  des des des des(c) des ges,(as) bes as1 des2 | 
  des c bes c (f) f bes, (es) es as,1.
  as2 bes c des1 c2 bes1 f'2 c1 
  c2f, f' es des1 c2 bes1 f'2 c1 f,2
  des' f des c (f) f bes, (es) es, as1.

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
 \midi {    \tempo 2 = 41}    
}
