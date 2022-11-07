%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\include "global-variables.ily"

%%% Positions and shapes %%%

lengthenTieA = \tweak minimum-length 4 \etc
lengthenArp = 
  \tweak positions #'(-3 . 1) 
  \tweak extra-spacing-width #'(-1 . 0)
  \tweak X-offset -1
  \tweak vertical-skylines ##f
  \etc

%%% Music %%%

global = {
  \time 4/4
  \key a \minor
  \accidentalStyle piano
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

rightHandUpper = \relative {
  \voiceOne
  \partial 4 s4
  s1 * 8 |
  
  \barNumberCheck 9
  s4. a''2->( gs8) |
  s4. c2->( b8~ |
  b8 a) s8 e'4( d e8~ |
  e8 c4 b a4.) |
  s8 b4( a e a8) |
  s8 b4( a e a8) |
  s8 b4( c g fs8~ |
  fs8 e2..) |
  
  \barNumberCheck 17
  s8 b'4( c g fs8) |
  s8 e2( f4.) |
  s1 * 3 |
  s2 s8 ef4( df8~ |
  df8 c4 bf af ef'8-\lengthenTieA ~ |
  ef8 df4 bf df c8~ |
  
  \barNumberCheck 25
  c8) ef4( df c f8~ |
  f8 ef4 c ef d8~ |
  d8) af'4 g <bf, c> f'8 |
  s1 * 2 |
  s8 c2..*6/7->( \hideNotes af8) \unHideNotes | 
  s2.. d8->~ |
  d8 c2..-> |
  
  \barNumberCheck 33
  s1 |
  s2.. b8~( |
  b8 c4 df c d8~ |
  d8 c4 df c d8~ |
  d8 c4 d c df8-\lengthenTieA ~ |
  df8 c4 d ds e8~ |
  e8) e4( a2-> gs8) |
  s4. c2->( b8~ |
  
  \barNumberCheck 41
  b8 a) s2. |
  s1 * 5 |
  s4. a2( gs8~ |
  gs8 a4) c2( b8~ |
  
  \barNumberCheck 49
  b8 a4) e'( d e8~ |
  e8 c4 b a4.) |
  s8 b4( a e a8~ |
  a8 b4 a e g8->) |
  s8 gf4->( f-> d-> b8->) |
  s8 a2..->(~ |
  a4. e'4 d b8~ |
  b8 a2..~ |
  
  \barNumberCheck 57
  a4.) e'4( a gs8-\lengthenTieA ~ |
  gs8 g4 fs f b,8~ |
  b8 a4) f( <bf d> b8~ |
  b8 <c, a'>4) <e a e'>( <f bf d> <d gs>8->~
  gs8 a2) c4( bf8~ |
  bf8 a2)^\rall c4( bf8) |
  \tempo "Lento"
  \acciaccatura { d,8-\lengthenArp \arpeggio } bf'1(~ |
  bf2 d4 cs |
  
  \barNumberCheck 65
  <cs, e a>1)\arpeggio \fermata |
  \bar "|."
}

rightHandLower = \relative {
  \oneVoice
  \stemDown
  \partial 4 r4
  r8 <e' a e'>-. r <a e' a>-. r <a d a'>-. r <gs e' gs>-. |
  r8 <a e'>-. r <c e c'>-. r <c f c'>-. r <b f' b>-. |
  r8 <a f' a>-. r <e' a e'>-. r <d a' d>-. r <e gs e'>-. |
  r8 <c e c'>-. r <gs e' gs>-. r <a e' a>-. r <c e c'>-. |
  r8 <b e b'>-. r <a e' a>-. r <e b' e>-. r <a e' a>-. |
  r8 <b e b'>-. r <a e' a>-. r <e b' e>-. r <a e' a>-. |
  r8 <b e b'>-. r <c e c'>-. r <g b g'>-. r <a b fs'>-. |
  r8 <gs b e>-. r <a c fs>-. r <g b f' g>-. r <gs d' e gs>-. |
  
  \barNumberCheck 9
  r8 <a c e a>-. r \voiceTwo <a e'>-. b\rest^\legato <a d>-. b\rest <gs e'>-. |
  b8\rest <a e'>-. b\rest <c e>-. b\rest  <c f>-. b\rest <b f'>-. |
  b8\rest <a f'>-. b\rest <e a>-. b\rest <d a'>-. b\rest <e gs>-. |
  b8\rest <c e>-. b\rest <b e>-. b\rest <a e'>-. b\rest <c e>-. |
  b8\rest <b e>-. b\rest <a e'>-. b\rest <e, b'>-. b'\rest <a e'>-. |
  b8\rest <b e>-. b\rest <a e'>-. b\rest <e, b'>-. b'\rest <a e'>-. |
  b8\rest <b e>-. b\rest <c e>-. b\rest <g b>-. b\rest <a b>-. |
  g8\rest <g b>-. g\rest <a c>-. g\rest <g b>-. g\rest <a c>-. |
  
  \barNumberCheck 17
  b8\rest <b e>-. b\rest <c e>-. g\rest <g b>-. g\rest <a b>-. |
  g8\rest <g b>-. g\rest <g b>-. g\rest <gs b>-. g\rest <gs b>-. |
  \oneVoice
  r8 <a c a'>4->( <af b af'>-> <g bf g'>8->) r <e bf' c>^> |
  r8 <g bf g'>-> r <e bf' c>^> r <g bf g'>-> r <a f'>-> |
  r8 <f af f'>4->( <ff g ff'>-> <ef gf ef'>8^>) r <c gf' af>^> |
  r8 <gf' af ef'>-> r <c, gf' af>^> r \voiceTwo <gf' af> g\rest <f af> |
  g8\rest <ef af> g\rest <df af'> g\rest c, g'\rest <gf af> |
  g8\rest <f af> g\rest <df af'> g\rest <f af> g\rest <ef af> |
  
  \barNumberCheck 25
  g8\rest <gf af> g\rest <f af> g\rest <ef af> g\rest <gf c> |
  g8\rest <gf c> g\rest <ef gf> g\rest <gf bf> g\rest <f bf> |
  g8\rest <af d> b\rest <g d'> b\rest e,4 <f af>8 |
  \oneVoice
  r8 <af d af'>-> r <g d' g>-> r <e bf' c>^> r <f af f'>-> |
  r8 <g c g'>-. r <af c af'>-. r <ef g ef'>-. r <f g d'>-. |
  \voiceTwo
  b8\rest <ef, g> g\rest <f af> g\rest <ef g> g\rest <f af> |
  \oneVoice
  r8 <g c g'>4->( <af c af'>-> <ef g ef'>^> \voiceTwo <f g>8 |
  g8\rest <e g> g\rest <f af> g\rest <e g> g\rest <f af>) |
  
  \barNumberCheck 33
  \oneVoice
  r8 <g c g'>4-> <af c af'>-> <c f c'>-> <d g b>8-> |
  r8 <bf e bf'>4-> <af f' af>-> <g ef' g>8-> r \voiceTwo <f g> |
  \repeat unfold 3 {
    e8\rest <e g>  e\rest <f af> e\rest <e g> e\rest <f af> |
  }
  g8\rest <e g> g\rest <f gs> g\rest <fs a> g\rest <e g> |
  g8\rest <e a> g\rest <a e'> g\rest <a d> g\rest <gs e'> |
  b8\rest <a e'>^. b\rest <c e> b\rest <c f> b\rest <b f'> |
  
  \barNumberCheck 41
  g8\rest <a f'> \oneVoice r <e' a e'>-^ r <d a' d>-^ r <e gs e'>-^ |
  r8 <c e c'>-^ r <gs e' gs>-^ r <a e' a>-^ r <c e c'>-^ |
  r8 <b e b'>-^ r <a e' a>-^ r <e b' e>^^ r <a e' a>-^ |
  r8 <b e b'>-^ r <a e' a>-^ r <e b' e>^^ r <a e' a>-^ |
  r8 <b e b'>-^ r <c e c'>-^ r <g b g'>-^ r <a b fs'>-^ |
  r8 <gs b e>-^ r <a c fs>-^ r <g b f' g>-^ r <gs d' e gs>-^ |
  r8 <a c e a>-^ r \voiceTwo <a e'> b\rest <a d> b\rest <gs e'> |
  b8\rest <a e'> b\rest <c e> b\rest <c f> b\rest <b f'> |
  
  \barNumberCheck 49
  b8\rest <a f'> b\rest <e a> b\rest <d a'> b\rest <e gs> |
  b8\rest <c e> b\rest <b e> b\rest <a e'> b\rest <c e> |
  b8\rest <b e> b\rest <a e'> b\rest <e, b'> b'\rest <a e'> |
  b8\rest <b e> b\rest <a e'> b\rest <e, b'> b'\rest <g bf> |
  b8\rest <gf bf> b\rest <f bf> b\rest <f bf> b\rest <d, gs> |
  b'8\rest c, e\rest <d f> e\rest <c e> e\rest <d f> |
  e8\rest <c e>4 <e a> <f bf> <d gs>8~ |
  q8 c e\rest <d f> e\rest <c e> e\rest <d f> |
  
  \barNumberCheck 57
  c8\rest <c e> e\rest <e a> b'\rest <a ds> b\rest <gs e'> |
  g8\rest <g cs> g\rest <fs d'> g\rest <f bf> g\rest <d gs> |
  e8\rest <c e> e\rest d2 <d gs>8~ |
  q8 s s2 s8 \hideNotes d~ \unHideNotes |
  d8 c c\rest <d f> c\rest <c e> c\rest <d f> |
  c8\rest <c e> c\rest <d f> c\rest <c e> c\rest <d f> |
  <d f>1~ |
  q1 |
  
  \barNumberCheck 65
  s1 |
}

rightHand = <<
  \clef treble
  \global
  \tempo "Agitato" 4 = 160
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  \partial 4 e4->( 
  a,8-.) <e' c'>-. c-. <a' e'>-. b,-. <f' d'>-. e-. <b' e>-. |
  c,8-. <a' e'>-. a,-. <a' e'>-. d,-. <a' f'>-. d,-. <gs f'>-. |
  c,8-. <a' f'>-. c,-. <a' e'>-. b,-. <f' d'>-. e,-. <e' b' d>-. |
  a,8-. <e' c'>-. b-. <e d'>-. c-. <e e'>-. a,-. <e' c'>-. |
  e,8-. <e' d'>-. a,-. <e' c'>-. b-. <e gs d'>-. a,-. <e' a c>-. |
  e,8-. <e' gs d'>-. a,-. <e' a c>-.  b-. <e gs d'> a,-. <e' a c>-. |
  g,8-. <g' e'>-. a,-. <a' e'>-. b,-. <b' e>-. b,-. <b' ds>-. |
  e,8-. <b' e>-. ds,-. <c' fs>-. d,-. <b' f'>-. e,,-. <b'' e>-. |
  
  \barNumberCheck 9
  a,8-. <a' e'>-. c,-. <a' e'>-. b,-.^\stacc <f' d'>-. e-. <b' e>-. |
  c,8-. <a' e'>-. a,-. <a' e'>-. d,-. <a' f'>-. d,-. <gs f'>-. |
  c,8-. <a' f'>-. c,-. <a' e'>-. b,-. <f' d'>-. e,-. <e' b' d>-. |
  a,8-. <e' c'>-. b-. <e gs d'>-. c-. <e a e'>-. a,-. <e' c'>-. |
  e,8-. <e' d'>-. a,-. <e' c'>-. b-. <e gs d'>-. a,-. <e'a c>-. |
  e,8-. <e' gs d'>-. a,-. <e' a c>-. b-. <e gs d'>-. a,-. <e' a c>-. |
  g,8-. <g' e'>-. a,-. <a' e'>-. b,-. <b' e>-. b,-. <b' ds>-. |
  e,8-. <b' e>-. a,-. <a' e'>-. e-. <b' e>-. a,-. <a' e'>-.
  
  \barNumberCheck 17
  g,8-. <g' e'>-. a,-. <a' e'>-. b,-. <b' e>-. b,-. <b' ds>-. |
  e,8-. <g b e>-. ds-. <g b e>-. d-. <gs b f'>-. df-. <gs b f'>-. |
  c,8-. <a' f'>-. c,-. <af' f'>-. c, <g' e'>-. c,-. <g' c>-. |
  c,8-. <g' e'>-. c,-. <g' c>-. c,-. <g' e'>-. f-. <a f'>-. |
  af,8-. <f' df'>-. af,-. <ff' df'>-. af,-. <ef' c'>-. af,-. <ef' af>-. |
  af,8-. <ef' c'>-. af,-. <ef' af>-. af,-. <ef' c'>-. af,-. <f' df'> |
  af,8-. <ef' c'>-. af,-. <df bf'>-. af-. <c af'>-. af-. <gf' ef'> |
  af,8-. <f' df'> af,-. <df bf'>-. af-. <f' df'>-. af,-. <ef' c'> |
  
  \barNumberCheck 25
  af,8-. <gf' ef'>-. af,-. <f' df'>-. af,-. <ef' c'>-. a,-. <gf' f'>-. |
  a,8-. <gf' ef'>-. a,-. <gf' c>-. bf,-. <gf' ef'>-. bf,-. <f' d'>-. |
  b,8-. <af' f'>-. b,-. <g' f'>-. c,-. <g' c>-. f,-. <f' c'>-. |
  b,8-. <af' f'>-. b,-. <g' f'>-. c,-. <g' c>-. f,-. <f' c'>-. |
  ef,8-. <ef' c'>-. f,-. <f' c'>-. g,-. <g' c>-. g,-. <g' b!>-. |
  c,8-. <g' c>-. f,-. <f' c'>-. c-. <g' c>-. f,-. <f' c'>-. |
  ef,8-. <ef' c'>-. f,-. <f' c'>-. g,-. <g'c>-. g,-. <g' b>-. |
  c,8-. <g' c>-. f,-. <f' c'>-. c-. <g' c>-. f,-. <f' c'>-. |
  
  \barNumberCheck 33
  ef,8-. <ef' c'>-. f,-. <f' c'>-. af,-. <af' c f>-. g,-. <g' d' g>-. |
  c,8-. <c' g'>-. f,-. <c' f>-. g-. <c ef> g,-. <g' d'>-. |
  c,8-. <g' c>-. b,-. <af' df>-. c,-. <g' c>-. b,-. <af' d>-. |
  c,8-. <g' c>-. b,-. <af' df>-. c,-. <g' c>-. b,-. <af' d>-. |
  c,8-. <g' c>-. b,-. <af' d>-. c,-. <g' c>-. b,-. <af' df>-. |
  c,8-. <g' c>-. b,-. <gs' d'>-. b,-. <a' ds>-. e,-. <e' b' d>-. |
  a,8-. <e' c'>-. c-. <a' e'>-. b,-. <f' d'>-. e-. <b' e>-. |
  c,8-. <a' e'>-. a,-. <a' e'>-. b,-. <f' d'>-. e-. <b' e>-. |
  
  \barNumberCheck 41
  c,8-. <a' f'>-. c,-. <a' e'>-. b,-. <f' d'>-. e,-. <e' b' d>-. |
  a,8-. <e' c'>-. b-. <e d'>-. c-. <e e'>-. a,-. <e' c'>-. |
  e,8-. <e' d'>-. a,-. <e' c'>-. b-. <e gs d'>-. a,-. <e' a c>-. |
  e,8-. <e' d'>-. a,-. <e' a c>-. b-. <e gs d'>-. a,-. <e' a c>-. |
  g,8-. <g' e'>-. a,-. <a' e'>-. b,-. <b' e>-. b,-. <b' ds>-. |
  e,8-. <b' e>-. ds,-. <c' fs>-. d,-. <b' f'>-. e,,-. <b'' e>-. |
  a,8-. <a' e'>-. c,-. <a' e'>-. b,-. <f' d'>-. e-. <b' e>-. |
  c,8-. <a' e'>-. a,-. <a' e'>-. d,-. <a' f'>-. d,-. <gs f'>-. |
  
  \barNumberCheck 49
  c,8-. <a' f'>-. c,-. <a' e'>-. b,-. <f' d'>-. e,-. <e' b' d>-. |
  a,8-. <e' a c>-. b-. <e gs d'>-. c-. <e a e'>-. a,-. <e' a c>-. |
  e,8-. <e' d'>-. a,-. <e' c'>-. b-. <e gs d'>-. a,-. <e' a c>-. |
  e,8-. <e' d'>-. a,-. <e' c'>-. b-. <e d'>-. cs-. <bf' e>-. |
  \stemDown
  d,8-. <bf' d>-. f-. <bf d>-. d,,-. <f' bf>-. e,-. <e' b'>-. |
  a,8-. <e' a>-. d-. <f a>-. a,-. <e' a>-. d-. <f a>-. |
  a,8-. <e' a>-. c,-. <e' a>-. d,-. <f' bf>-. e,-. <e' b'>-. |
  a,8-. <e' a>-. d-. <f a>-. a,-. <e' a>-. d-. <f a>-. |
  
  \barNumberCheck 57
  a,8-. <e' a>-. c-. <e c'>-. b-. <b' fs'>-. e,-. <b' e> |
  a,8-. <a' e'>-. d,-. <a' d>-. d,,-. <f' bf>-. e,-. <e' b'>-. |
  a,8-. <e' a>-. d-. <f a>-. d,-. <f' bf>-. e,-. <e' b'>-. |
  f,8-. <f' a>-. c,-. <c' a'>-. d,-. <d' bf'>-. e,-. <e' b'>-. |
  a,8-. <e' a>-. d-. <f a>-. a,-. <e' a>-. d-. <f a>-. |
  a,8-. <e' a>-. d-. <f a>-. a,-. <e' a>-. a,( <d bf'>) |
  <a~ d f~ bf>1->\arpeggio |
  <a f'>1 |
  
  \barNumberCheck 65
  <a e' a>1\arpeggio \fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 s4
  s1\p |
  s1 * 6 |
  s2.\< s4\! |
  
  \barNumberCheck 9
  s4. s8\> s4. s8\! | 
  s4. s8\> s4. s8\! | 
  s4 s2\< s8 s\! |
  s2\> s8 s4.\! |
  s1 | 
  s2 s8 s\< s4 |
  s4. s8\! s2 |
  s8 s\> s4. s8\! s4 |
  
  \barNumberCheck 17
  s1\pp |
  s8 s\< s2 s8 s\! |
  s1\f |
  s1 * 3 |
  s1\cresc |
  s1 |
  
  \barNumberCheck 25
  s1 |
  s2.. s8\! |
  s1\f |
  s1 * 3 |
  s1^\ppPocoRiten
  s1 |
  
  \barNumberCheck 33
  s2..\f\< s8\! |
  s8 s2\> s4.\! |
  s4\p s2\< s8 s\! |
  s2.\< s4\! |
  s4.\> s8 s2 |
  s2 s8 s\! s4 |
  s4. s8\> s4. s8\! |
  s4. s8\> s4. s8\! |
  
  \barNumberCheck 41
  s4 s2\< s8 s\! |
  s2\> s8 s\! s4 |
  s1 |
  s4. s8\< s2 |
  s8 s\! s s\> s4. s8\! |
  s2..\< s8\! |
  s4. s8\> s4. s8\! |
  s4. s8\> s4. s8\! |
  
  \barNumberCheck 49
  s4. s8\< s4. s8\! |
  s8 s\> s4. s8\! s4 |
  s1 |
  s4 s2\< s8 s\! |
  s4. s8\> s4. s8\! |
  s1\p |
  s4.\pp s8\> s4. s8\! |
  s1 |
  
  \barNumberCheck 57
  s4 s2\f\< s8 s\! |
  s8 s\> s4. s8\! s4 |
  s1 * 2 |
  s4. s8\dim s2 |
  s2.. s8\! |
}

pedal = {
  \partial 4 s4
  s1 * 8 |
  
  \barNumberCheck 9
  \repeat unfold 4 { s4 s\sd s2\su | }
  s4\sd \override SustainPedal.Y-offset = 1 s\su s\sd s\su |
  \revert SustainPedal.Y-offset
  s4\sd \override SustainPedal.Y-offset = 1 s\su s\sd s\su |
  \revert SustainPedal.Y-offset
  s8\sd \override SustainPedal.Y-offset = 1 s\su s\sd s\su s\sd s\su s\sd 
    s\su |
  s4\sd s\su s\sd s\su |
  \revert SustainPedal.Y-offset
  
  \barNumberCheck 17
  s8\sd s\su s\sd s\su s\sd s\su s\sd s\su |
  s1 |
  \override SustainPedal.Y-offset = 1
  s4.\sd s8\su s2\sd |
  s2 s8 s\su s4 |
  \revert SustainPedal.Y-offset
  s4.\sd s8\su s2\sd |
  s2 s8 s\su s4 |
  s4\sd s\su s\sd s8 s\su |
  s2.\sd s4\su |
  
  \barNumberCheck 25
  s4\sd s\su s\sd s\su |
  s2\sd s\su |
  s4\sd s2.\su |
  s4\sd s2.\su |
  \repeat unfold 3 { s8\sd s\su s\sd s\su s\sd s\su s\sd s\su | }
  s4\sd s\su s\sd s\su |
  
  \barNumberCheck 33
  s8\sd s\su s\sd s\su s\sd s\su s\sd 
    \override SustainPedal.Y-offset = 2 s\su |
  s4\sd s2\su \revert SustainPedal.Y-offset s8.\sd 
    \override SustainPedal.Y-offset = 2 s16\su |
  s8\sd s\su s4 s\sd s\su |
  s4\sd s\su s\sd s\su |
  s4\sd s2.\su |
  s8\sd s\su s\sd s\su s\sd s\su \revert SustainPedal.Y-offset s\sd s\su |
  \override SustainPedal.Y-offset = 2
  s8\sd s\su s4\sd s2\su |
  s4 s\sd s\su s |
  
  \barNumberCheck 41
  s4 s\sd s\su s |
  \override SustainPedal.Y-offset = 1
  s8\sd s\su s\sd s\su s\sd s\su s\sd s\su |
  \revert SustainPedal.Y-offset
  s4\sd \override SustainPedal.Y-offset = 1 s\su s\sd s\su |
  \revert SustainPedal.Y-offset
  s4\sd \override SustainPedal.Y-offset = 1 s\su s\sd s\su |
  s8\sd s\su s\sd s\su s\sd s\su s\sd s\su |
  s8\sd s\su s\sd s\su s\sd s\su \revert SustainPedal.Y-offset s\sd 
    \override SustainPedal.Y-offset = 2 s\su |
  s4 s\sd s\su s |
  s4 s\sd s\su s |
  \revert SustainPedal.Y-offset
  
  \barNumberCheck 49
  s1 * 3 |
  s2. s8\sd s\su |
  s2 s8\sd s\su s\sd \override SustainPedal.Y-offset = 2 s\su |
  s8\sd s\su s4 s8\sd s\su s4 |
  s8\sd s\su \revert SustainPedal.Y-offset s\sd s\su s\sd s\su s\sd s\su |
  \override SustainPedal.Y-offset = 2
  s4\sd s\su s\sd s\su |
  
  \barNumberCheck 57
  s2 s8\sd s\su s\sd s\su |
  s8\sd s\su \revert SustainPedal.Y-offset s4 s8\sd s\su s\sd 
    \override SustainPedal.Y-offset = 2 s\su |
  s8\sd s\su \revert SustainPedal.Y-offset s4 s8\sd s\su s\sd s\su |
  s8\sd s\su s\sd s\su s\sd s\su s\sd s\su |
  s4\sd s2.\su |
  s2. s4\sd |
  s1 |
  s2.. s8\su |
  
  \barNumberCheck 65
  s2\sd s2\su |
}

forceBreaks = {
  \partial 4 s4\noBreak
  \repeat unfold 4 { s1\noBreak s1\noBreak s1\noBreak s1\break } \pageBreak
  \barNumberCheck 17
  \repeat unfold 4 { s1\noBreak s1\noBreak s1\noBreak s1\break } \pageBreak
  \barNumberCheck 33
  \repeat unfold 4 { s1\noBreak s1\noBreak s1\noBreak s1\break } \pageBreak
  \barNumberCheck 49
  \repeat unfold 3 { s1\noBreak s1\noBreak s1\noBreak s1\break }
  s1\noBreak s1\noBreak s1\noBreak s1\noBreak s1\pageBreak
}

etudeFourMusic = \score {
  \header {
    opus = "Opus 25, No 4"
  }
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 16" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeFourMidi = \book {
  \bookOutputName "etude-op25-no4"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
