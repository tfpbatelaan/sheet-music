
\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #10
  system-system-spacing.basic-distance = #10
  last-bottom-spacing.basic-distance = #10
}

#(set-global-staff-size 14.0)

\header {
  title = "Es ist nun aus mit meinem Leben"
  meter = "Performing Edition"
  composer = "Johann Christoph Bach (1642-1703)"
  poet = "Magnus Daniel Omeis (1673)"
  arranger = "Thomas F. P. Batelaan (2018)"
}

global = {
  \key d \minor
  \time 3/2
}


sopMusic = \relative
{
\relative c' {
d'1 r2  bes1 r2 g1 r2
}
}

sopWords = \lyricmode { 
Herr, Herr, Herr : es ist Zeit. Der Som -- mer war sehr groß.
Leg deinen Schat -- ten auf die Son--nen--uh--ren,
und auf den Flu--ren laß die Win--de los.

Be--fiehl den letz--ten Früch--ten voll zu sein;
gieb ih--nen noch zwei süd--lich--e--re Ta--ge,
drän--ge sie zur Voll--en--dung hin und ja--ge
die letz--te Sü--ße in den schwe--ren Wein.

Wer jetzt kein Haus hat, baut sich keines mehr.
Wer jetzt allein ist, wird es lange bleiben,
wird wachen, lesen, lange Briefe schreiben
und wird in den Alleen hin und her
unruhig wandern, wenn die Blätter treiben.

}


altoMusic = 
{\relative {
 

}
}


tenorMusic = 
{\relative {   \clef "G_8"
a1 r2 
  }

}


bassMusic = 
{ \relative {   \clef bass
d1 r2 f1 r2 bes1 r2
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
 \midi {    \tempo 2 = 100}    
}

