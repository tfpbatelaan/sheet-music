
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #18
  system-system-spacing.basic-distance = #18
  last-bottom-spacing.basic-distance = #10
}

#(set-global-staff-size 15.0)

\header {
  title = "Es ist nun aus mit meinem Leben"
  meter = "Performing Edition"
  composer = "Johann Christoph Bach (1642-1703)"
  poet = "Magnus Daniel Omeis (1673)"
  arranger = "Thomas F. P. Batelaan (2018)"
}

global = {
  \key d \major
  \time 3/2
}


sopMusic =    \transpose des d 
{
\relative {
  as'2 f des as'1 as2 bes (c) des des1 c2 | 
  des f, des as'1 as2 bes(c) des c1\trill des2\fermata | 
  f es des es1 as,2 as1\trill g2 as2 r1 
   as2 as as as (bes) c des (bes) as as1\trill g2\fermata
   as as as as (bes) c des (bes) as g1\trill f2\fermata
   f' des des es1 as,2 des1 des4(c) c2 r1
   des2 c bes a1 bes2 c (f,) f f2 r1
   f2 des'2. c4 c2 r1 f,2\p des'2. c4 c2 r1
   des2 c,2. des4  des \melisma es8 f ges as bes c des2 \melismaEnd
   des c,2. des4 des2 r1
}
}

sopWords = \lyricmode { 
Es ist nun aus mit mei -- nem Le -- ben, 
Gott nimmt es hin, der es __ ge -- ge -- ben. 
Kein TrÃ¶pf -- lein mehr ist in dem Fass, 
es will kein FÃ¼nk -- lein mehr __ ver -- fan -- gen,
des Le -- bens Licht __ ist aus -- ge -- gan -- gen.
Kein KÃ¶rn -- lein lÃ¤uft __ mehr in __ dem __ Glas,
es ist nun aus, es ist voll -- bracht,
Welt gu -- te Nacht, Welt, gu -- te Nacht,
Welt gu -- te Nacht, __ Welt, gu -- te Nacht.


}


altoMusic = \transpose des d 
{\relative {
  des'2 des des es1 des2 des(es) des4(es) f1 f2 | 
  f des des es1 des2 des(c) bes es1 f2 | 
  des es f es (c) c des1 des2 c2 r1
  c2 des es des (c4 bes) as2 f'1 f2 f1 e2
  f f ges f1 es2 des4 (es f2) f e1 f2
  as as f es (c) c f (es) es es2 r1
  f2 es es es1 des2 es1 des2 c2 r1
  des2 f2. f4 f2 r1 des2\p f es es2 r1
  as,2 as2. as4 des2 r1 bes2 as2. as4 as2 r1


}
}
altoWords = \lyricmode {
Komm, To -- des -- tag, du Le -- bens -- son -- ne,
du brin -- gest mir mehr Lust und Won -- ne,
als mein Ge -- burts -- tag brin -- gen kann,
du machst ein En -- de mei -- nem Lei -- den,
das sich schon mit den Kind -- taufs -- freu -- den
vor je -- nen hat ge -- fan -- gen an,
nun ist es aus, es ist voll -- bracht,
Welt gu -- te Nacht, Welt, gu -- te Nacht.
Welt gu -- te Nacht, Welt, gu -- te Nacht.

}

tenorMusic = \transpose des d 
{\relative {   \clef "G_8"
  f2 as f es (f4 ges)  f2 f (g4 a)  bes2 bes1 a2 | 
  as as f es(f4 ges) f2 ges1 f2 as1 as2 | 
  as as as as1 as2 bes1 bes4 (es,) es2 r1
  es2 es es f (g) as bes4 (c des2) c c1 c2 
  c c c des f,4 (g as2) bes4 (c des2) c c1 a2
  des as as as1 as2 as1 g2 as2 r1
  as2 ges bes c1 f,2 f1 bes2 a2 r1
  as2 bes2. bes4 bes2 r1 bes2\p bes2. g4 as2 r1 
  f2 es2. ges4 f2 r1 es2 es2. es4 f2 r1
  
  }

}
tenorWords = \lyricmode { 
Welt, gu -- te Nacht! Be -- halt das Dei -- ne
und lass mir Je -- sum als das Mei -- ne,
denn ich lass mei -- nen Je -- sum nicht!
Be -- hÃ¼t euch Gott, ihr, mei -- ne Lie -- ben,
lasst mei -- nen Tod euch nicht
be -- trÃ¼ -- ben,
durch wel -- chen mir so wohl ge -- schieht;
mein Leid ist aus, es ist voll -- bracht,
Welt gu -- te Nacht, Welt, gu -- te Nacht.
Welt gu -- te Nacht, Welt, gu -- te Nacht.

}

bassMusic = \transpose des d 
{ \relative {   \clef bass
  des2 des des des(c) des des(c) bes f'(f,) f' | 
  des des des des(c) des ges,(as) bes as1 des2 | 
  des c bes c (f) f bes, (es) es as,2 r1
  as2 bes c des1 c2 bes1 f'2 c1 
  c2f, f' es des1 c2 bes1 f'2 c1 f,2
  des' f des c (f) f bes, (es) es, as2 r1
  des2 es f c1 des2 a1 bes2 f2 r1
  des'2 des bes f'2 r1 bes2\p bes, es as,2 r1 
  des2 as' as, bes r1 ges2 as2. as4 des,2 r1 }

}
bassWords = \lyricmode { 
Was wol -- let ihr euch nach mir seh -- nen?
Ei, stil -- let, stil -- let eu -- re TrÃ¤ -- nen,
weil mei -- ne schon ge -- stil -- let sind,
mir wischt sie Je -- sus von den Au -- gen,
was sol -- len denn die eu -- ren tau -- gen,
und la -- chet mit mir als ein Kind.
Was Je -- sus macht, ist wohl -- ge -- macht!
Welt gu -- te Nacht, Welt, gu -- te Nacht.
Welt gu -- te Nacht, Welt, gu -- te Nacht.
Welt gu -- te Nacht, Welt, gu -- te Nacht.
Welt gu -- te Nacht, Welt, gu -- te Nacht.
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
 \layout { }
 \midi {    \tempo 2 = 81}    
}

