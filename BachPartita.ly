\header {
  title = "CHACONNE"
  subtitle = \markup { "Partita nr. 2 voor viool solo" }
  arranger = "arr. Thomas Batelaan."
  composer = "Johann Sebastian Bach."
}
global = {
  \key d \minor
  \time 3/4
  \dynamicUp
}
sopranonotes = \relative c'' {
\partial2 a2 e'4 e2 f4 (d4.) c8 bes4 (a) g ~ g4
a2 e'4 e2 f4 (d4.) d8 bes'4 a8. g32 f g8. e16 
f4 r2 e4 e2 
e4 d8. f16 e8. d16 cis4 r4 r8. a'16
f4 r2 e4 e2 
e4 d8. f16 e8.
cis16 d8. e16 d4 cis8. d16 
d8. ( e16 f8. g32 a bes8.) 
f16 e8. bes'16 a8. g16 a8. fis16 g8. f16 e8. d32 cis d8. e16 f8. g16 e8.f16 g8. e16
f8. ( e16 f8. g32 a bes8.) 
f16 e8. bes'16 a8. g16 a8. fis16 g8. f16 e8. d32 cis d8. e16 f8. g16 e8.f16 g8. e16

}
sopranowords = \lyricmode { 
Christ lag in To -- des -- ban -- den,}
altonotes = \relative c' {
f2 bes4 a4 (g) f f (e) d2 ~ d8 cis8 ~ cis4
f2 bes4 (a2 ) a4  ( bes c d ) cis2 
d,8 ( e f2 ) g2. f2. (e f) g f ~ f4 e2 d
}
altowords = \lyricmode { 
Christ lag in To -- des -- ban -- den,
Hal -- le -- lu -- ja!
Den Tod nie -- mand zwin -- gen kunnt.
}
tenornotes = {\relative c { 
  \clef "G_8"
d2 ~ d4 g2 d4 f2 g4 f (e) d4
a'2 (g2.) f e 
d8. ( e16 f8. g32 a bes8. a16) g8. f16 g8. bes16 a8. g16 
f8. e16 f8. a16 g8. f16 e8. d16 e8. g16 f8. e16
d8. ( e16 f8. g32 a bes8. a16) g8. f16 g8. bes16 a8. g16 
f8. e16 f8. a16 g8. f16 e8. d16 e8. g16 f8. e16
}
}
tenorwords = \lyricmode { 
Christ lag in To -- des -- ban -- den,
Hal -- le -- lu -- ja!
}
bassnotes = { \relative c {  \clef bass
d2 ~ d4 cis2 d4 bes2 g4 a2 d,4 
d'2 ~ d4 cis2 d4 bes2 g4 a2 
d4 r2 d4 cis2 d4 bes4 r8. g16 a2 r8. a16
d2. d4 cis2 d4 bes4 r8. bes16 a8. g16 a2

}
}
basswords = \lyricmode { 
Christ lag in To -- des -- ban -- den,

}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
      \lyricsto "soprano" \new Lyrics \sopranowords
    >>
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
      \lyricsto "alto" \new Lyrics \altowords
    >>
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
      \lyricsto "tenor" \new Lyrics \tenorwords
    >>
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
      \lyricsto "bass" \new Lyrics \basswords
>>
    \new PianoStaff <<
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \sopranonotes >>
        << \global \altonotes >>
      >>
      \new Staff <<
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \tenornotes >>
        << \global \bassnotes >>
      >>
>>
>>
      \midi{}
    \layout{}
}