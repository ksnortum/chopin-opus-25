%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.1"

\include "global-variables.ily"

%%% Positions and shapes %%%

arpLengthA = \once \override Staff.Arpeggio.positions = #'(0 . 4.5)
arpLengthB = \once \override Staff.Arpeggio.positions = #'(-1 . 4)
arpLengthC = \once \override Staff.Arpeggio.positions = #'(-3 . 2)
arpLengthD = \once \override Staff.Arpeggio.positions = #'(-2.5 . 2.5)
arpLengthE = \once \override Staff.Arpeggio.positions = #'(-2 . 4)
arpLengthF = \once \override Staff.Arpeggio.positions = #'(-2 . 4)

arpMoveA = \tweak X-offset -1 \etc
arpMoveB = \tweak X-offset -1 \etc

pedalMoveA = \override SustainPedal.Y-offset = 2
pedalMoveB = \override SustainPedal.Y-offset = 2
pedalMoveC = \override SustainPedal.Y-offset = 2
pedalMoveD = \override SustainPedal.Y-offset = 1
pedalMoveE = \override SustainPedal.Y-offset = 2
pedalMoveF = \override SustainPedal.Y-offset = 2
pedalMoveG = \override SustainPedal.Y-offset = 2
pedalMoveH = \override SustainPedal.Y-offset = 2
pedalMoveI = \override SustainPedal.Y-offset = 3
pedalMoveJ = \override SustainPedal.Y-offset = 3
pedalMoveK = \override SustainPedal.Y-offset = 1
pedalMoveL = \override SustainPedal.Y-offset = 2
pedalMoveM = \override SustainPedal.Y-offset = 2
pedalMoveN = \override SustainPedal.Y-offset = 2
pedalMoveO = \override SustainPedal.Y-offset = 2
pedalMoveOff = \revert SustainPedal.Y-offset
shiftRightA = \once \override NoteColumn.force-hshift = 0.5

tempoMoveA = {
  \once \override Score.MetronomeMark.X-offset = -4
  \once \override Score.MetronomeMark.Y-offset = 8
}

markupMoveA = 
  \tweak X-offset -9
  \tweak Y-offset 0
  \etc
  
markupMoveB = 
  \tweak X-offset 0.25
  \tweak Y-offset -0.5
  \etc
  
ottavaMoveA = \offset Y-offset 0.25 \etc

trillSpanUp = 
  \tweak TrillSpanner.outside-staff-priority ##f
  \tweak TrillSpanner.X-offset -2
  \tweak TrillSpanner.Y-offset 0.5
  \etc

beamPositionsA = \tweak positions#'(3.5 . 3) \etc

slurPositionsA = \tweak positions #'(1 . 1) \etc
slurPositionsB = \tweak positions #'(2 . 2) \etc
slurPositionsC = \tweak positions #'(3 . 3) \etc
slurPositionsD = \tweak positions #'(3 . 3) \etc

slurShapeA = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeB = \shape #'((0 . -1) (0 . 0.75) (0 . 0.75) (0 . -3)) \etc
slurShapeC = \shape #'(
                        ((0 . 1) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 1) (0 . 1.5) (0 . -4))
                      ) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . -3) (-1.5 . 4)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . -4) (-1.5 . 5)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 1)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 1) (0 . 0.5) (0 . 0)) \etc

tieShapeA = \shape #'((0 . -0.25) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1
  \key e \minor
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \oneVoice
  \partial 4 b'4
  <ds, b'>16(_2 e8.)_1 <fs e'>16( g8.) <as g'>16(_2 b8.)_1 |
  <b g'>16(_2 a8.)_1 <gs fs'>16(_2 a8.)_1 <c a'>16( b8.) |
  <b g'!>16( a8.) <gs fs'>16( a8.) <b g'>16( a8.) |
  <a fs'>16( g8.) <fs e'>16( g8.) <gs d'>16( a8.) |
  <fs d'>16( g8.) <as g'>16( b8.) <cs b'>16( d8.) |
  <d b'>16( c8.) <b a'>16(_2 c8.)_1 <e c'>16( d8.) |
  <b a'>16(_\fg.2_\muDash_\fg.1 c8.)_\fg.1_\muDash_\fg.2 <cs b'>16( d8.) 
    <as g'>16( b8.) |
  <b a'>16(_\fg.2_\muDash_\fg.1 c8.)_\fg.1_\muDash_\fg.2 <gs fs'>16(_2 a8.)_1
    <b g'>16( a8.) |
  
  \barNumberCheck 9
  <ds, b'>16( e8.) <fs e'>16( g8.) <as g'>16( b8.) |
  <b g'>16( a8.) <gs fs'>16( a8.) <c a'>16( b8.) |
  <b g'>16( a8.) <gs fs'>16( a8.) <b g'>16( a8.) |
  <a fs'>16( g8.) <fs e'>16( g8.) <e d'>16(_2 f8.)_1 |
  <as f'>16( b8.) <cs b'>16( d8.) <e d'>16(_2 f8.)_1 |
  <e d'>16( f8.) <ds c'>16( e8.) <cs b'>16( d8.) |
  <cs b'>16( d8.) <b a'>16( c8.) <gs d'>16( a8.) |
  <gs d'>16( a8.) <cs b'>16( d8.) <b a'>16( c8.) |
  
  \barNumberCheck 17
  <as g'>16( b8.) <cs b'>16( d8.) <cs b'>16( d8.) |
  <cs b'>16( d8.) <e d'>16( f8.) <ds c'>16( e8.) |
  <cs b'>16( d8.) <b a'>16( c8.) <gs d'>16( a8.) |
  <gs d'>16( a8.) <as d>16( b8.) <gs d'>16( a8.) |
  <fs b>8( g) <as d>( b) <cs b'>( d) |
  <cs b'>8( d) <e d'>( f) <ds c'>( e) |
  <cs b'>8( d) <b a'>( c) <gs d'>( a) |
  <gs d'>8( a) <as d>( b) <gs d'>( a) |
  
  \barNumberCheck 25
  <fs b>8( g) <as d>( b) <cs g'>( d) |
  <fs b>8( g) <as d>( b) <cs g'>( d) |
  \ottava 1 <fs b>8( g) <cs, g'>( d) <as d>( b) |
  \ottava 0 <fs b>8( g) <cs, g'>( d) <as d>( b) |
  \voiceOne
  b4 e g |
  g4 fs a |
  g4 fs g |
  fs4 e d |
  
  \barNumberCheck 33
  d4 g b |
  b4 a c |
  a4 b g |
  a4 fs g |
  \oneVoice \stemDown
  <ds, b'>8[( e <fs e'> g <as g'> b] |
  <b g'>8[ a <gs fs'> a <c a'> b] |
  <b g'>8[ a <gs fs'> a <b g'> a] |
  <a fs'>8[ g <fs e'> g <e d'> f] |
  
  \barNumberCheck 41
  <as f'>8[ b <cs b'> d <e d'> f]) |
  \acciaccatura { <e g c>8 } \ottava 1 e''4-. \ottava 0 r r |
  \acciaccatura { <b,, e b'>8 } b''4-. r r\fermata |
  \acciaccatura { <b,, ds b'>8 } b''4-. r r\fermata |
  \bar "||"
  \key e \major
  \set Score.tempoHideNote = ##t
  \tempoMoveA \tempo "Più lento" 4 = 168
  \voiceOne
  \mergeDifferentlyHeadedOn
  \tuplet 3/2 4 { 
    \staffDown \tweak duration-log 1 b,,,8[-\slurShapeA ( \staffUp <e b'>
      -\markupMoveA ^\leggiero gs] \stemNeutral b-1 <e b'> gs  b-1 <e b'> gs |
  }
  \scaleDurations 2/3 {
    b,8 <ds b'> fs  b,-1 <ds, b'>-5-2 fs  b,-1 <ds, b'>-5-2 fs) |
    gs,8(-1 <cs gs'> e  gs-1 <cs gs'> e  a-1 <cs a'> e |
    a,8-1 <bs a'> ds  a-1 <bs, a'>-5 ds  a-1 <bs, gs'>-5-2 ds)-3 |
    
    \barNumberCheck 49
    gs,8-1( <a e'>-5-2 cs-4  e <a e'> cs  e <a e'> cs |
    \ottava 1 e8 <gs e'> b  e,-1 <e b'>-5-2 gs  b,-1 <b gs'> e |
    \ottava 0 gs,8 <gs ds'> b  ds, <ds b'> gs  fss, <as fss'> ds |
    gs,8 <b gs'> ds  ds, <gs ds'> b  b, <ds b'> fs) |
    b,8( <e b'> gs  b <e b'> gs  b <e b'> gs |
    b,8 <ds b'> fs  b, <ds, b'> fs  b, <ds, b'> fs) |
    gs,8( <cs gs'> e  gs <cs gs'> e  a <cs a'> e |
    a,8 <bs a'> ds  a <bs, a'> ds  a <bs, gs'> ds) |
    
    \barNumberCheck 57
    gs,8-1( <gs cs>-2-4 as  e' <gs e'> as  e' <gs e'> as |
    ds,8 <gs ds'> b  ds, <gs, ds'> b  ds, <e cs'> as |
    cs,8 <ds cs'> gs  b, <ds b'> gs  as, <cs as'> fss |
    as,8 <cs as'> ds  as <b gs'> ds  gs, <b gs'> ds |
    \clef bass e,8-1 <fs ds'>-2-5 cs'-4 \clef treble e-1 <fs ds'> cs'
      e <fs ds'> cs' |
    e,8 <gs cs>-2-4 b-3  e,-1 <gs, cs> b  e, <gs e'>-2-5 cs-4 |
    e,8-1 <e b'>-2-5 gs-4  \clef bass cs, <e, b'> gs  b, <ds b'> a' |
    b,8-1 <e a> gs  \clef treble b-1 <e a> gs  b-1 <e a> gs) |
    
    \barNumberCheck 65
    b,8-1-\slurShapeB ( <fs ds'>-2-5 cs'  e-1 <fs ds'>-2-5 cs'  
      \ottava 1 e-1 <fs ds'> cs' |
    e,8 <gs cs>-2-4 b  \ottava 0 e, <gs, cs> b  e,-1 <gs e'>-2-5 cs-4 |
    e,8-1 <e b'>-2-5 gs  cs,-1 <e, b'>-2-5 gs  b, <ds b'> a' |
    b,8 <e a>-2-5 gs-4  b-1 <e a> gs  b, <e, a> gs) |
    c,8(^\cresc <e gs>-2-4 fs-3  b, <e gs> fs  a, <e' gs> fs) |
    c'8( <e gs> fs  b, <e gs> fs  a, <e' gs> fs)\! |
    as,8-1-\slurShapeC ( <e' gs>-2-4 fs-3  \ottava 1 \once \omit Accidental 
      as-1 <e' gs> fs  as, <e' cs'> fs |
    b,8-1 <ds b'> fs  \ottava 0 b, <ds, b'> fs  b, <ds, b'> fs |
    
    \barNumberCheck 73
    gs,8 <d' b'> f  gs'-> <d' b'> f  g,-> <cs as'> e |
    g,8-1 <cs as'>-2-5 e  g,-1 <cs, as'>-2-5 e-3  fs,-1 <c' a'> ds) |
    fs,8( <c' a'> ds  fs-> <c' a'> ds  f,-> <b gs'> d |
    f,8 <b gs'> d  f, <b, gs'> d  e, <b' g'> cs) |
    \stemDown
    e,8( <b' e> cs  fs, <b fs'> cs  g <b g'> cs |
    g8 <b g'> cs  fs, <b fs'> cs  e, <b' e> cs |
    \stemUp
    e, <b' e> cs  e, <as e'> cs  e, <as e'> c |
    e,8 <a e'> c  ds, <a' ds> gs  b, <ds b'> a') |
  }
  
  \barNumberCheck 81
  \oneVoice
  b,16( <e b'> gs-3 b-1  <e b'> gs b-1 <e b'>  gs b,-1 <e b'> gs |
  b,16 <ds b'> fs b,-1  <ds, b'>-2-5 fs b,-1 <ds, b'>-2-5
    fs b, <ds b'> fs) |
  gs,16-1( <cs gs'> e-3 gs-1  <cs gs'> e-3 gs-1 <cs gs'>  e a, <cs a'> e |
  a,16 <bs a'> ds a  <bs, a'> ds a <bs, a'>  ds gs,-1 <bs gs'> ds) |
  gs,16-1-\slurShapeF ( <a e'>-2-5 cs-4 e-1  <a e'> cs e-1 <a e'>
    \ottavaMoveA \ottava 1 cs e-1 <a e'> cs |
  e,16 <gs e'> b e,  <e b'> gs b, <b gs'>  e gs, <gs e'> b \ottava 0 |
  << 
    { \voiceOne s4 s8. gs8.[ fss16] s } 
    \new Voice { \voiceOne s2 ds8.-\beamPositionsA [ ds16] } 
  >> |
  << 
    \new Voice { \voiceOne s4 s8. b8.[ b16] s } 
    { \voiceOne s2 gs8.[ fs16]) } 
  >> |
  
  \barNumberCheck 89
  \oneVoice
  b,16( <e b'> gs b  <e b'> gs b <e b'>  gs b, <e b'> gs |
  b,16 <ds b'> fs b,  <ds, b'> fs b, <ds, b'>  fs b, <ds b'> fs) |
  gs,16( <cs gs'> e gs  <cs gs'> e gs <cs gs'>  e a, <cs a'> e |
  a,16 <bs a'> ds a  <bs, a'> ds a <bs, a'>  ds gs, <bs gs'> ds) |
  gs,16-\slurShapeG ( <a e'> cs e  <a e'> cs e <a e'>  \ottava 1 cs e <a e'> cs |
  e,16 <gs e'> b e,  <e b'> gs b,-1 <b gs'>  e gs, <gs e'> b \ottava 0 |
  e,16 <e b'>-5 gs b,  <b gs'> e gs, <gs e'>  b e, <e b'> gs |
  b,16 <e b'> gs b,  <e b'> gs b, <e b'>  gs b, <e b'> gs |
  
  \barNumberCheck 97
  b,16 <e b'> gs b,  <e b'> gs b, <e b'>  gs b, <e b'> gs) |
  \bar "||"
  \key e \minor
  \tempo "Tempo I."
  <ds g b>16( e8.) <fs b e>16( g8.) <as e' g>16( b8.) |
  <b c g'>16( a8.) <gs c fs>16( a8.) <c fs a>16( b8.) |
  <b ds g>16( a8.) <gs ds' fs>16( a8.) <b ds g>16( a8.) |
  <a b fs'>16( g8.) <fs b e>16( g8.) <gs c d>16( a8.) |
  <fs b d>16( g8.) <as d g>16( b8.) <cs g' b>16( d8.) |
  <d e b'>16( c8.) <b e a>16( c8.) <e a c>16( d8.) |
  <b fs' a>16( c8.) <cs fs b>16( d8.) <as e' g>16( b8.) |
  
  \barNumberCheck 105
  <b e a>16( c8.) <gs e' fs>16( a8.) <b ds g>16( a8.) |
  <ds, g b>16( e8.) <fs b e>16( g8.) <as e' g>16( b8.) |
  <b c g'>16( a8.) <gs c fs>16( a8.) <c fs a>16( b8.) |
  <b ds g>16( a8.) <gs ds' fs>16( a8.) <b ds g>16( a8.) |
  <a b fs'>16( g8.) <fs b e>16( g8.) <e b' d>8( f) |
  <as d f>8( b) <cs f b>( d) <e b' d>( f) |
  <e b' d>8( f) <ds a' c>( e) <ds g b>( e) |
  <ds g b>8( e) <ds fs a>( e) <ds g b>( e) |
  
  \barNumberCheck 113
  <ds a' d!>( e) <ds a' c>( e) <gs, b ds>( a) |
  <fs b e>16( g8.) <as e' g>16( b8.) <as e' g>16( b8.) |
  <as e' g>16( b8.) <b e a>16( c8.) <as e' g>16( b8.) |
  <as g'>16( b8.) <gs b fs'>16( a8.) <es a b>16( fs8.) |
  <es a b>16( fs8.) <fs a b>16( g8.) <es a b>16( fs8.) |
  <ds g b>8( e) <fs b e>( g) <as e' g>( b) |
  <as e' g>8( b) <b e a>( c) <as e' g>( b) |
  <as g'>8( b) <gs b fs'>( a) <es a b>( fs) |
  
  \barNumberCheck 121
  <es a b>8( fs) <fs a b>( g) <es a b>( fs) |
  <ds g b>8([-> e <fs b e>-> g <as e' g>-> b] |
  <ds g b>8[-> e <fs b e>-> g <as e' g>-> b]) |
  \ottava 1 \acciaccatura { <fs cs' fs>8 } e''4-. \ottava 0 r r |
  R2. |
  \acciaccatura { <b,, e b'>8 } b''4-. \ottava 0 r r |
  R2. |
  \acciaccatura { <b,, e b'>8 } b''4-. \ottava 0 r r |
  
  \barNumberCheck 129
  R2. |
  \voiceOne \tieNeutral
  <e,,, e'>2.~ |
  q2.~ |
  q2.~ |
  q2.~ |
  \shiftRightA q2.~ |
  q2.~ |
  q2.~ |
  
  \barNumberCheck 137
  q2.-\tieShapeA ~ \grace {  } |
  q2.\fermata \cadenzaOn s2. * 5 s2
}

rightHandLower = \relative {
  \voiceTwo
  \partial 4 s4
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 4 |
  \acciaccatura { ds'8 } e4 \acciaccatura { fs8 } g4 
    \acciaccatura { as8 } b4 |
  \acciaccatura { b8 } a4 \acciaccatura { gs8 } a4 \acciaccatura { c8 } b4 |
  \acciaccatura { b8 } a4 \acciaccatura { gs8 } a4 \acciaccatura { b8 } a4 |
  \acciaccatura { a8 } g4 \acciaccatura { fs8 } g4 \acciaccatura { gs8 } a4 |
  
  \barNumberCheck 33
  \acciaccatura { fs8 } g4 \acciaccatura { as8 } b4 \acciaccatura { cs8 } d4 |
  \acciaccatura { d8 } c4 \acciaccatura { b8 } c4 \acciaccatura { e8 } d4 |
  \acciaccatura { b8 } c4 \acciaccatura { cs8 } d4 \acciaccatura { as8 } b4 |
  \acciaccatura { b8 } c4 \acciaccatura { gs8 } a4 \acciaccatura { b8 } a4 |
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 6 |
  gs,4 s2 |
  s2. |
  
  \barNumberCheck 49
  s2. * 6 |
  gs4 s2 |
  s2. |
  
  \barNumberCheck 57
  s2. |
  \scaleDurations 2/3 {
    s4. s4. s8 e'4 |
    s8 ds4 s8 ds4 s8 cs4 |
    s8 cs4 s8 b4 s8 b4 |
  }
  s2. * 4 |
  
  \barNumberCheck 65
  s2. * 4 |
  \scaleDurations 2/3 {
    c4 s8 b4 s8 a4 s8 |
    \stemUp
    c'4 s8 b4 s8 a4 s8 |
  }
  s2. * 2 |
    
  \barNumberCheck 73
  s2. * 4 |
  \scaleDurations 2/3 {
    e4 s8 fs4 s8 g4 s8 |
    g4 s8 fs4 s8 e4 s8 |
    \stemDown
    e4 s8 e4 s8 e4 s8 |
    e4 s8 ds4 s8 b4 s8 |
  }
  
  \barNumberCheck 81
  s2. |
  s2 s16 b8-> s16 |
  gs4 s2 |
  s2 s16 gs8 s16 |
  s2. * 2 |
  ds''16 <gs ds'> b ds,  <ds b'> gs b, b  ds fss, as ds |
  gs,16 <b gs'> ds gs,  <gs ds'> b ds, ds  gs b, ds fs |
  
  \barNumberCheck 89
  s2. |
  s2 s16 b,8-> s16 |
  gs4 s2 |
  s2 s16 gs8-> s16 |
  s2. * 4 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. |
  \acciaccatura { a'8 } gs2. |
  \acciaccatura { a8 } gs2. |
  \acciaccatura { a8 } gs4 \acciaccatura { a8 } gs2 |
  \acciaccatura { a8 } gs4 \acciaccatura { a8 } gs2 |
  \acciaccatura { a8 } gs2.-\trillSpanUp\startTrillSpan |
  gs2. |
  gs2. |
  
  \barNumberCheck 137
  \afterGrace gs2. { fs8*1/4[\stopTrillSpan gs b a gs] } |
  gs2. \cadenzaOn
}

rightHand = <<
  \clef treble
  \global
  \override Staff.Fingering.avoid-slur = #'inside
  \override Staff.OttavaBracket.avoid-slur = #'inside
  \override Staff.OttavaBracket.outside-staff-priority = ##f
  \mergeDifferentlyDottedOn
  \tempo "Vivace" 4 = 184
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHandUpper = \relative {
  \oneVoice
  \partial 4 r4
  <e, b' g'>4\arpeggio r <g e' b'>\arpeggio |
  <a e' c'>4\arpeggio r <c a' e'>\arpeggio |
  <b a' ds>4\arpeggio r <b, ds'>\arpeggio |
  <e b' g'>4\arpeggio r <fs d' a'>\arpeggio |
  <g d' b'>4\arpeggio r <b g' d'>\arpeggio |
  <c g' e'>4\arpeggio r <e c' g'>\arpeggio |
  <d a' fs'>4\arpeggio <g, d' b'>\arpeggio <c g' e'>\arpeggio |
  <fs, c' a'>4\arpeggio r <b a' ds>\arpeggio |
  
  \barNumberCheck 9
  \stemDown
  e,16-\slurPositionsA ([ g'8. e16 g8. b,16 e,8.)] |
  a16-\slurPositionsB ([ c'8. fs,16 c'8. fs,16 a,8.)] |
  b16-\slurPositionsC ([ ds'8. fs,16 ds'8. a16 b,8.)] |
  e16-\slurPositionsD ([ e'8. b16 e8. gs,,16 b'8.)] |
  b,16 d'8. d,16 f'8. f,16 gs'8. |
  <c,, gs' b gs'>4\arpeggio <c a' c a'>\arpeggio r |
  \voiceThree
  r4 d'2->~ |
  d4 s2 |
  
  \barNumberCheck 17
  \repeat unfold 4 {  s4 d2-> | }
  \slurDown
  \repeat unfold 4 {  s4 \acciaccatura { e8 } d2-> | }
  
  \barNumberCheck 25
  \oneVoice
  g,,4-. \clef treble <b' d> <d g> |
  <g b>4 <b d> <d g> |
  <g b>4 r r |
  R2. \clef bass |
  \grace { s8 } <e,,, b' g'>4\arpeggio r <g e' b'>\arpeggio |
  <a e' c'>4\arpeggio r <c a' e'>\arpeggio |
  <b a' ds>4\arpeggio r <b, ds'>\arpeggio |
  <e b' g'>4\arpeggio r <fs d' a'>\arpeggio |
  
  \barNumberCheck 33
  <g d' b'>4\arpeggio r <b g' d'>\arpeggio |
  <c g' e'>4\arpeggio r <e c' g'>\arpeggio |
  \voiceThree
  fs'4-> s e-> |
  \oneVoice
  <fs,, c' a'>4\arpeggio r <b fs' ds'>\arpeggio |
  e,8[ g' e g b, e,] |
  a8[ c' fs, c' fs, a,] |
  b8[ ds' fs, ds' a b,] |
  e8[ e' b e] gs,,[ b'] |
  
  \barNumberCheck 41
  d,8[ f' f, gs' gs, b'] |
  \acciaccatura { <bf, c g'>8 } bf,4-. r r |
  \acciaccatura { <b g' e'>8 } b,4-. r r\fermata |
  \acciaccatura { <b' g' ds'>8 } b,4-. r r\fermata |
  \key e \major
  \voiceThree
  \shiftOff b''2( cs4 |
  cs2 b4) |
  cs,2.*1/3( gs'4 a |
  a2 gs4) |
  
  \barNumberCheck 49
  e4( ds cs | 
  b4 e gs |
  b4 ds cs |
  b4 as a) |
  gs4( b4. cs8 |
  cs2 b4) |
  cs,2.*1/3( gs'4. a8 |
  a2 gs4) |
  
  \barNumberCheck 57
  e4( ds cs |
  <b, b'>2 <cs cs'>4 |
  <ds ds'>2 <ds, ds'>4 |
  <gs gs'>2.) |
  \oneVoice
  <a a'>2.( |
  <gs gs'>4. <a a'>8 <gs gs'>4 |
  <fs fs'>2 gs4 |
  <e e'>2) r4 |
  
  \barNumberCheck 65
  <a' a'>2.( |
  <gs gs'>4. <a a'>8 <gs gs'>4 |
  <fs fs'>2 b4 |
  <e, e'>2) r4 |
  <a, a'>4(^\> <b b'> <c c'>)\! |
  <a' a'>4(^\> <b b'> <c c'>\! |
  <cs cs'>2 <fs, fs'>4 |
  <b b'>2) r4 |
  
  \barNumberCheck 73
  <gs, gs'>4 \clef treble <gs'' d' f b>\arpeggio( <g cs e as>\arpeggio) |
  \clef bass b,4-. <g' cs e>( <fs c' ds>) |
  <b,, b'>4-. \clef treble <fs'' c' ds a'>\arpeggio( <f b d gs>\arpeggio) |
  \clef bass b,4-. <f' b d>( <e b' cs>) |
  \voiceThree
  g4( fs e |
  e4 b'4. e,8 |
  g2.-> |
  fs2) \oneVoice r4 |
  
  \barNumberCheck 81
  \voiceThree
  e2.*1/3-\slurShapeD ( b'4 cs |
  cs2 s16 \once \hideNotes cs8.) |
  cs,2.*1/3->-\slurShapeE ( gs'4 b8. a16 |
  a2 s16 \once \hideNotes a8.) |
  e4( ds cs | 
  b4 e gs |
  b4 ds cs |
  b4 as a) |
  
  \barNumberCheck 89
  gs4( b ds8. cs16 |
  cs2 s16 \once \hideNotes cs8.) |
  cs,2.*1/3( gs'4 b8. a16 |
  a2) d,4\rest |
  e4( ds cs |
  b4 e gs |
  \oneVoice
  b2 a8. gs16 |
  gs2.~ |
  
  \barNumberCheck 97
  gs2.) |
  \key e \minor
  <e, b' g'>4\arpeggio r <g e' b'>\arpeggio |
  <a e' c'>4\arpeggio r <c a' e'>\arpeggio |
  <b a' ds>4\arpeggio r <b, ds'>\arpeggio |
  <e b' g'>4\arpeggio r <fs d' a'>\arpeggio |
  <g d' b'>4\arpeggio r <b g' d'>\arpeggio |
  <c g' e'>4\arpeggio r <e c' g'>\arpeggio |
  <d c' fs>4\arpeggio <g, d' b'>\arpeggio <c g' e'>\arpeggio |
  
  \barNumberCheck 105
  <fs, c' a'>4\arpeggio r <b a' ds>\arpeggio |
  \stemDown
  e,16-\slurPositionsA ([ g'8. e16 g8. b,16 e,8.)] |
  a16-\slurPositionsB ([ c'8. fs,16 c'8. fs,16 a,8.)] |
  b16-\slurPositionsC ([ ds'8. fs,16 ds'8. a16 b,8.)] |
  e16([ e'8. b16 e8.)] gs,,8( b') |
  d,8([ f') f,( gs') \clef treble gs,( b')] |
  \stemNeutral
  <gs, d' f b>4( <a c e a> <b e g> |
  <b e g>4 <c e fs> <b e g> |
  
  \barNumberCheck 113
  <a c e fs>4) r \clef bass <b, b'> |
  \voiceThree
  s4 b'2-> |
  s4 b2-> |
  s4 b2-> |
  s4 b2-> |
  s4 \acciaccatura { c8 } b2-> |
  s4 \acciaccatura { c8 } b2-> |
  s4 \acciaccatura { c8 } b2-> |
  
  \barNumberCheck 121
  s4 \acciaccatura { c8 } b2-> |
  \oneVoice
  e,,4( <e' g e'> <ds g e'> |
  <d g e'>4 <c g' e'> <b g' e'>) |
  \acciaccatura { <as fs' e'>8 } as,4-. r r |
  R2. |
  \voiceThree
  \arpLengthE <g'' e'>4 \arpeggio s2 |
  s2. |
  e'2.( |
  
  \barNumberCheck 129
  ds2) d,4\rest |
  \acciaccatura { cs8_\f } b2. |
  \acciaccatura { cs8 } b2. |
  \acciaccatura { cs8 } b4 \acciaccatura { cs8 } b2 |
  \acciaccatura { cs8 } b4 \acciaccatura { cs8 } b2 |
  \acciaccatura { cs8 } b2.\startTrillSpan |
  b2. |
  b2. |
  
  \barNumberCheck 137
  \afterGrace b2. { a8*1/4[\stopTrillSpan b ds cs b] } |
  e,,2.\fermata \cadenzaOn
}

leftHandLower = \relative {
  \voiceFour
  \partial 4 s4
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 6 |
  d,4 r d' |
  <fs c'>4 d\rest d\rest |
  
  \barNumberCheck 17
  \slurUp
  g,4^. r d'( |
  gs,4^.) r d'( |
  a4^.) r <d fs c'> |
  d,4^. r <d' fs c'> |
  g,4^. r d'( |
  gs,4^.) r d'( |
  a4^.) r <d fs c'> |
  d,4^. r <d' fs c'> |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 2 |
  \arpLengthA <d c'>4 \arpeggio <g, d' b'>\arpeggio 
    \arpLengthB <c g'> \arpeggio |
  s2. * 5 |
  
  \barNumberCheck 41
  s2. * 4 |
  e2. |
  <ds fs>2. |
  cs,4 r r |
  bs'2. |
  
  \barNumberCheck 49
  a4 r r |
  e2 r4 |
  ds'2.
  << { \hideNotes <gs, b'>4-\arpMoveA \arpeggio } \\ { gs4 } >> r4 b~ |
  \arpLengthC <e, b'>4\arpeggio r r |
  <ds' fs>2. |
  cs,4 r r |
  bs'2. |
  
  \barNumberCheck 57
  << { \hideNotes <cs, e'>4-\arpMoveB \arpeggio } \\ { cs4 } >> r4 r |
  s2. * 7 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 4 |
  b'2.~ |
  b2. ~ |
  b2. ~ |
  b2 s4 |
  
  \barNumberCheck 81
  e,4 r r |
  <ds' fs>2 d4\rest |
  cs,4 r r |
  bs'2 d4\rest |
  a4 r r |
  e2 r4 |
  ds'2.~ |
  \arpLengthD <gs, ds'>4\arpeggio r b~ |
  
  \barNumberCheck 89
  <e, b'>4 r r |
  <ds' fs>2 d4\rest |
  cs,4 r r |
  bs'2 s4 |
  a4 r r |
  e2 r4 |
  s2. * 2 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. | 
  \voiceFour
  \stemUp e4-. r \stemDown b'( |
  \stemUp b,4-.) r \stemDown b'( |
  \stemUp ds,4) r \stemDown b'( |
  \stemUp b,4) r \stemDown b'( |
  \stemUp e,4) r \stemDown b'( |
  \stemUp b,4-.) r \stemDown b'( |
  \stemUp ds,4-.) r \stemDown b'( |
  
  \barNumberCheck 121
  \stemUp b,4-.) r \stemDown b' |
  s2. * 4 |
  b2 \stemUp <a, a'>4^\p ( |
  <g g'>2 <c c'>4) |
  \stemDown
  \arpLengthF <b' fs'>2.\arpeggio |
  
  \barNumberCheck 129
  s2. |
  e,2.~ |
  e2.~ |
  e2.~ |
  e2.~ |
  e2.~ |
  e2.~ |
  e2.~ |
  
  \barNumberCheck 137
  e2. |
  \cadenzaOn s2. 
  \magnifyMusic #2/3 { 
    e4^( b' e gs b \staffUp e fs gs b e fs gs b e fs gs2)^\fermata 
  }
  \bar "|."
}

leftHand = <<
  \clef bass
  \global
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 \tag layout { s4^\pScherzando } \tag midi { s4\p }
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 4 |
  s2\< s8. s16\! |
  s4 s2\f |
  s2. * 2 |
  
  \barNumberCheck 17
  s4^\dolce s16 s8.\< s4 |
  s8. s16\! s2 |
  s2. * 6 |
  
  \barNumberCheck 25
  s2 s4\<
  s2 s8 s\! |
  s4 s2\> |
  s2 s8 s\! |
  s2. * 4 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. |
  s2.\fz |
  s2. * 2
  s2.-\tweak X-offset 2 ^\sostMarkup
  s2. * 3 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2.\f |
  s2. * 3 |
  s2\< s8. s16\! |
  s2. * 3 |
  
  \barNumberCheck 81
  s2.^\leggierissimo
  s2. * 4 |
  s2.\p |
  s2. * 2 |
  
  \barNumberCheck 89
  s2. * 7 |
  s2 s4^\smorz |
  
  \barNumberCheck 97
  s2.^\pocoRiten
  % Tempo I
  s2.\p |
  s2. * 6 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 2 |
  s2.\cresc |
  s2.\ff |
  s2. * 4 |
  
  \barNumberCheck 129
  s2. |
  \grace { s8\> } s2 s4\! |
  s2. * 3 |
  s2.\< |
  s2. * 2 |
  
  \barNumberCheck 137
  s4. s8\! s4-\markupMoveB^\conForza |
  s2.-\tweak X-offset 2 \fff 
}

pedal = {
  \partial 4 s4
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 5 |
  s4\sd s4.\su\sd s8\su |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 17
  \repeat unfold 7 { s2\sd s8 s\su | }
  s2\sd s8 \pedalMoveA s\su |
  
  \barNumberCheck 25
  s2.\sd |
  s2. |
  s2 s8 s\su \pedalMoveOff |
  s2. * 5 |
  
  \barNumberCheck 33
  s2. * 2 |
  s4.\sd s\su |
  s4\sd s\su s8.\sd s16\su |
  s2. * 4 |
  
  \barNumberCheck 41
  s2. |
  \repeat unfold 3 { \grace { s8\sd } s2 s4\su | }
  \pedalMoveB s4.\sd s16 s\su s4 |
  s4.\sd s16 s\su \pedalMoveOff s4 |
  s4.\sd s16 \pedalMoveC s\su s4 |
  s4.\sd s16 s\su \pedalMoveOff s4 |
  
  \barNumberCheck 49
  s2. |
  s2\sd s8. \pedalMoveD s16\su |
  s4\sd s8. s16\su \pedalMoveOff s4 |
  s2. |
  s2\sd s8. \pedalMoveE s16\su |
  s2\sd s8. s16\su \pedalMoveOff |
  s2\sd s8. \pedalMoveF s16\su |
  s4.\sd s16 s\su \pedalMoveOff s4 |
  
  \barNumberCheck 57
  s4\sd s\su s |
  s4\sd s8. s16\su s4 |
  s2. * 2 |
  s2\sd s8. s16\su |
  s2. |
  s2\sd s4\su |
  s2. |
  
  \barNumberCheck 65
  s4 s4.\sd s16 s\su |
  s2. |
  s4\sd s8. s16\su s4 |
  s2. * 3 |
  s4\sd s8. s16\su s4 |
  s2\sd s8. s16\su |
  
  \barNumberCheck 73
  s4\sd s8. s16\su s4 |
  \pedalMoveI s2\sd s8. s16\su \pedalMoveOff |
  s4\sd s8. s16\su s4 |
  \pedalMoveJ s4\sd s8. s16\su \pedalMoveOff s4 |
  s2. * 4 |
  
  \barNumberCheck 81
  s4\sd s8. \pedalMoveG s16\su s4 |
  s4\sd s8. s16\su \pedalMoveOff s4 |
  s4\sd s8. \pedalMoveH s16\su s4 |
  s4\sd s8. s16\su \pedalMoveOff s4 |
  s2\sd s8. s16\su |
  s2\sd s8. \pedalMoveK s16\su |
  s2\sd s8. s16\su \pedalMoveOff |
  s4\sd s\su s8.\sd s16\su |
  
  \barNumberCheck 89
  s2\sd \pedalMoveL s4\su |
  s4\sd s8. s16\su \pedalMoveOff s4 |
  s2\sd s4\su |
  s2\sd s4\su |
  s2. |
  s2.\sd |
  s2. * 2 |
  
  \barNumberCheck 97
  s2 s8. s16\su |
  s2. * 2 |
  s2 s8.\sd s16\su |
  s4\sd s\su s |
  s2. * 3 |
  
  \barNumberCheck 105
  s4\sd s\su s8.\sd s16\su |
  \repeat unfold 3 { s4\sd s16 s8.\su s4 | } 
  s8.\sd s16\su s4 s8.\sd s16\su |
  s4\sd s8.\su\sd s16\su s8.\sd s16\su |
  s4\sd s\su s |
  s2. |
  
  \barNumberCheck 113
  s2. |
  \repeat unfold 3 { s2\sd s8 s\su | }
  s2\sd s8 \pedalMoveO s\su |
  s2\sd s4\su \pedalMoveOff |
  s2\sd s4\su |
  s2\sd s4\su |
  
  \barNumberCheck 121
  s2\sd \pedalMoveM s4\su |
  s2\sd s4\su \pedalMoveOff |
  s2. |
  \grace { s8\sd } s2. |
  s2 s4\su |
  \grace { s8\sd } s2 s4\su |
  s2. |
  \pedalMoveN \grace { s8\sd } s2. |
  
  \barNumberCheck 129
  s2 s4\su \pedalMoveOff |
  s2.\sd |
  s2. * 6 |
  
  \barNumberCheck 137
  s2 s4\su |
  s2.\sd \cadenzaOn s4 * 15 s2\su 
}

forceBreaks = {
  \partial 4 s4 
  s2. * 3 \break
  s2. * 4 \break
  s2.
  
  \barNumberCheck 9
  s2. * 3 \break
  s2. * 4 \break
  s2.
  
  \barNumberCheck 17
  s2. * 3 \pageBreak
  s2. * 4 \break
  s2.
  
  \barNumberCheck 25
  s2. * 4 \break
  \grace { s8 } s2. * 4
  
  \barNumberCheck 33
  s2. * 2 \break
  \grace { s8 } s2. * 5 \break
  s2. 
  
  \barNumberCheck 41
  s2. * 4 \pageBreak
  s2. * 4 \break
  
  \barNumberCheck 49
  s2. * 4 \break
  s2. * 4 \break 
  
  \barNumberCheck 57
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  \barNumberCheck 65
  s2. * 4 \break \noPageBreak
  s2. * 4 \break \noPageBreak
  
  \barNumberCheck 73
  s2. * 4 \break \noPageBreak
  s2. * 4 \break \noPageBreak
  
  \barNumberCheck 81
  s2. * 4 \pageBreak
  s2. \noBreak s2. \noBreak s2. \noBreak s2. \break \noPageBreak
  
  \barNumberCheck 89
  s2. \noBreak s2. \noBreak s2. \break \noPageBreak
  s2. \noBreak s2. \noBreak s2. \break \noPageBreak
  s2. \noBreak s2. \noBreak
  
  \barNumberCheck 97
  s2. \break \noPageBreak % Tempo I
  s2. \noBreak s2. \noBreak s2. \noBreak s2. \break \noPageBreak
  s2. \noBreak s2. \noBreak s2. \noBreak
  
  \barNumberCheck 105
  s2. \pageBreak
  s2. \noBreak s2. \noBreak s2. \noBreak s2. \break \noPageBreak
  s2. \noBreak s2. \noBreak s2. \noBreak
  
  \barNumberCheck 113
  s2. \break \noPageBreak
  s2. * 5 \break \noPageBreak
  s2. * 2
  
  \barNumberCheck 121
  s2. * 3 \break \noPageBreak
  \grace { s8 } s2. * 5
  
  \barNumberCheck 129
  s2. * 4 \break \noPageBreak
  \grace { s8 } s2. *  5
}

etudeFiveMusic = \score {
  \header {
    opus = "Opus 25, No 5"
  }
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 5" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeFiveMidi = \book {
  \bookOutputName "etude-op25-no5"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
