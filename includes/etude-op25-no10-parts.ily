%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.1"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . -2.5) (0 . -2.5) (0 . -2) (0 . -2)) \etc
slurShapeB = \shape #'((1 . 1.5) (1 . 1.5) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 1)) \etc
slurShapeE = \shape #'(
                        ()
                        ((0 . 1.25) (0 . 1.25) (0 . 1.5) (0 . 1.5))
                      ) \etc
slurPositionA = \tweak positions #'(-4 . -4) \etc
slurPositionB = \tweak positions #'(-5 . -5) \etc
slurPositionC = \tweak positions #'(-3 . -3) \etc
slurPositionD = \tweak positions #'(5 . 5) \etc
slurPositionE = \tweak positions #'(4 . 4) \etc

fingeringMoveA = \once \override Fingering.extra-offset = #'(0 . 1.75)

%%% Music %%%

cutTime = {
  \time 2/2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

global = {
  \key b \minor
  \cutTime
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \voiceOne
  \slurUp
  \override Staff.Fingering.avoid-slur = #'inside
  \scaleDurations 2/3 {
    <fs fs'>8-4( <es es'>-5 <fs fs'>-4  <g g'>-5 <gs gs'>-4 <a a'>-5
      <gs gs'>-4 <fss fss'>-5 <gs gs'>-4  <a a'> <as as'> <b b'> |
    \revert Staff.Fingering.avoid-slur
    <as as'>8 <gss gss'> <as as'>  <b b'> <bs bs'> <cs cs'>
      <bs bs'> <ass ass'> <bs bs'>  <cs cs'> <d d'> <ds ds'> |
    <css css'>8 <ds ds'> <e e'>_>  <ds ds'> <e e'> <f f'>_>  <e e'> <es es'> 
      <fs fs'>_>  <es es'> <fs fs'> <g g'!>_> |
    <fs fs'>8 <fss fss'> <gs gs'>_>  <fss fss'> <gs gs'> <a a'>_>
      <fss fss'> <gs gs'> <a a'>_>  <gs gs'> <a a'> <as as'>_>) |
    <b b'>8( <as as'> <b b'>  <as as'> <a a'> <gs gs'>)
      <a a'>( <gs gs'> <a a'>  <gs gs'> <g g'> <fs fs'>) |
    <g g'>8( <fs fs'> <g g'>  <fs fs'> <f f'> <e e'>
      <ds ds'> <d d'> <cs cs'> 
  }
  <b fs' b>4_>) |
  \scaleDurations 2/3 {
    <b b'>8-2-5( <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'>) |
    <b b'>8( <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'>) |
      
    \barNumberCheck 9
    <d d'>8-2-5( <cs cs'> <d d'>  <e e'> <f f'> <g g'>  <f f'> <e e'> <d d'>
      <cs cs'> <d d'> <e e'>) |
    <d d'>8( <cs cs'> <d d'>  <e e'> <f f'> <g g'>  <f f'> <e e'> <d d'>
      <cs cs'> <d d'> <e e'>) |
    <e e'>8( <ds ds'> <e e'>  <es es'> <fs fs'> <g g'>
      <fs fs'> <es es'> <fs fs'>  <g g'> <gs gs'> <a a'>) |
    <as as'>8( <b b'> <c c'>  <cs cs'> <d d'> <ds ds'>  \ottava 1
      <e e'> <es es'> <fs fs'>  <g g'> q <fs fs'>) |
    <b b'>8( <as as'> <b b'>  <as as'> <a a'> <gs gs'>)
      <a a'>( < gs gs'> <a a'>  <gs gs'> <g g'> <fs fs'>) |
    \ottava 0 <g g'>8( <fs fs'> <g g'>  <fs fs'> <f f'> <e e'>
      <ds ds'> <d d'> <cs cs'> 
  }
  <b fs' b>4_>) |
  \scaleDurations 2/3 {
    \voiceTwo \slurUp
    \fingeringMoveA <b b'>8^2^5\slurShapeB ( <as as'> <b b'>  <cs cs'>
      <d d'> <e e'> <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'>) |
    \fingeringMoveA <b b'>8^2^5\slurShapeB ( <as as'> <b b'>  <cs cs'> <d d'>
      <e e'> <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'>) |
      
    \barNumberCheck 17
    <b b'>8( <as as'> <b b'>  <c c'> <cs cs'> <d d'>  
      <cs cs'> <c c'> <b b'>  <as as'> <b b'> <cs cs'>) |
    <b b'>8\slurShapeC ( <as as'> <b b'>  <c f g c>^> <cs cs'> <d f g d'>^>
      <cs cs'> <c c'> <b b'>  <as as'> <b b'> <es, b' cs es>^>) |
    <fs fs'>8\slurShapeD ( <g g'> <fs fs'>  <es es'> <fs fs'> <g g'>  
      <fs fs'> <es es'> <fs fs'>  <g g'> <fs fs'> <es es'>) |
    \oneVoice
    <fs fs'>8->( <g g'> <fs fs'>  <es es'> <fs fs'> <g g'>
      <fs fs'> <es es'> <fs fs'>  <g g'> <fs fs'> <g g'> |
    <fs fs'>8 <g g'> <af af'>->  <g g'> <gs gs'> <a a'>->
      <gs gs'> <a a'> <bf bf'>->  <a a'> <as as'> <b b'>-> |
    <as as'>8 <b b'> <c c'>  <cs cs'> <d d'> <ef ef'>  <e e'> <f f'> <fs fs'>
      <g g'> <gs gs'> <as as'> |
    \ottava 1 <b d f gs b>8)\noBeam <b b'>( <c c'>  <cs cs'> <d d'> <b b'>
      <af af'> <f f'!> <fs fs'>  <g g'> <af af'> <f f'> |
    \ottava 0 <d d'>8 <b b'> <c c'>  <cs cs'> <d d'> <b b'>
      <g g'>-> <af af'> <f f'>  <cs cs'>-> <d d'> <b b'>)~ |
      
    \barNumberCheck 25
    <b b'>8^( <fs fs'> <as as'>  <cs cs'> <as as'> <d d'>
      <as as'> <b b'> <e e'!>  <cs cs'> <d d'> <g g'>) |
    <es es'>8( <fs fs'> <as as'>  <cs cs'> <as as'> <d d'>  
      <as as'> <b b'> <e e'>  <cs cs'> <d d'> <g g'>) |
    \ottava 1 <es es'>8 <fs fs'> <as as'>  <cs cs'> <as as'> <d d'>
  }
  \ottava 0 <b,, d g b>2 |
  \tuplet 3/2 { <c g' c>8( <ds a'> <as cs~ as'> } <fs cs' e fs>) r r2\fermata |
  
  \bar "||"
  \break
  \set Score.tempoHideNote = ##t
  \tempo "Lento" 4 = 60
  \key b \major
  \time 3/4
  e''2.~( |
  e4 fs cs) |
  \slurUp
  \override Staff.Fingering.avoid-slur = #'inside
  <ds, ds'>8( <e e'>-5 <ds ds'>-4 <cs cs'>-3 <ds ds'>-4 <e e'>-5 |
  <ds ds'>-4 <cs cs'>-3 <b b'>-5 <cs cs'>-4 <ds ds'>-5 <b b'>-4) |
  
  \barNumberCheck 33
  \stemUp
  <ds ds'>8-3( <e e'>-4 <es es'>-5 <fs fs'>-3 <as as'>-5 <gs gs'>-4 |
  \stemNeutral
  <fs fs'>8-3 <e e'>-5 <ds ds'>-4 <cs cs'>-3 <ds ds'> b') |
  \voiceOne \stemDown
  \override TextScript.outside-staff-priority = ##f
  <cs, cs'>8-3\slurShapeE ( <ds ds'>-5 <cs cs'>-3 <gs' gs'>\offset Y-offset 1 
    ^\fiveToThree <b b'>\offset Y-offset 2 ^\fiveToFour <ds ds'>-5 |
  <cs cs'>8 <ds ds'> <cs cs'>\offset Y-offset 2.5 ^\fourToFive 
    <as as'>\offset Y-offset 1.5 ^\fourToFive <gs gs'> 
    <as as'> |
  <gs gs'>8\offset Y-offset 1 ^\fourToFive <fs fs'>\offset Y-offset 0.5 
    ^\fourToFive <ds ds'>-4 <fs fs'>-5 <ds ds'>^\fourToFive <cs cs'>
    ^\fourToFive |
  \stemUp
  \revert TextScript.outside-staff-priority
  <gs gs'>4 \voiceThree fs'4 e) |
  \oneVoice \slurUp
  <ds fs>8( <as as'> <b b'> <cs cs'> <ds ds'> \acciaccatura { <fs fs'> } 
    <e e'> |
  <ds ds'>8 <cs cs'> <b b'> <cs cs'> <ds ds'> <b b'>) |
  
  \barNumberCheck 41
  <ds ds'>8( <e e'> <es es'> <fs fs'> <as as'> <gs gs'> |
  <fs fs'>8 <e e'> <ds ds'> <cs cs'> <ds ds'> b') |
  <css, css'>8( <ds ds'> <e e'> <ds ds'> <fs fs'> <e e'> |
  <es es'>8 <fs fs'> <gs gs'> <fs fs'> <a a'> <gs gs'> |
  <fss fss'>8[ <gs gs'> <as as'> <gs gs'> <b b'>8. <as as'>16] |
  <as as'>8[ <gs gs'> <fss fss'> <gs gs'>] <b b'>8.) r16\fermata |
  \acciaccatura { ds8 } <ds ds'>8( <cs cs'> <b b'> <as as'> <b b'> <gs gs'> |
  <as as'>8 <gs gs'> <fs fs'> <es es'> <fs fs'> <ds ds'!> |
  
  \barNumberCheck 49
  <gs gs'>8 <fs fs'> <e e'> <ds ds'> <e e'> <cs cs'> |
  <as e' as>4 <b ds b'>8) r <bs bs'>4->( |
  <cs cs'>4\prall \voiceOne <bs bs'>8 <cs cs'> <e e'> <ds ds'> |
  <cs cs'>8 <bs bs'>-2-5 <as as'> <bs bs'> <cs cs'> <ds ds'>) |
  <e e'>8( <fs fs'> <ds ds'> <e e'> <gs gs'> <fs fs'> |
  <e e'>-2-5 <ds ds'>-2-4 <cs cs'>-3 <ds ds'> <e e'> <fs fs'>) |
  <gs gs'>8( <fss fss'> <as as'> <gs gs'> q <fss fss'> |
  <g g'>8 <fs fs'> <a a'> <g g'> q <fs fs'> |
  
  \barNumberCheck 57
  <fs fs'> <f f'> q4-5-3-1 q8 <e e'> |
  <e e'>4-5-3-1 q8[ <ds ds'!>] \acciaccatura { e'8 } <ds, ds'>8 <css css'>) |
  \revert Staff.Fingering.avoid-slur
  <ds ds'>8-2-4( <e e'> <ds ds'>-4 <cs cs'>-3 <ds ds'> <e e'> |
  <ds ds'> <cs cs'> <b b'> <cs cs'> ds' <b, b'> |
  <ds ds'>8 <e e'> <es es'> <fs fs'> <as as'> <gs gs'> |
  <fs fs'> <e e'> <ds ds'> <cs cs'> <ds ds'> <b b'>) |
  \oneVoice
  <css css'>8( <ds ds'> <e e'> <ds ds'> <fs fs'> <e e'> |
  <es es'>8 <fs fs'> <gs gs'> <fs fs'> <a a'> <gs gs'> |
  
  \barNumberCheck 65
  <fss fss'>8[ <gs gs'> <as as'> <gs gs'> <b b'>8. <as as'>16] |
  <as as'>8[ <gs gs'> <fss fss'> <gs gs'>] <b b'>8.) r16\fermata |
  <ds ds'>8( <cs cs'> <b b'> <as as'> <b b'> <gs gs'> |
  <as as'>8 <gs gs'> <fs fs'> <es es'> <fs fs'> <ds ds'!> |
  <gs gs'>8 <fs fs'> <e e'> <ds ds'> <e e'> <cs cs'> |
  \override Staff.Fingering.avoid-slur = #'inside
  <as e' as>4 <b ds b'>8) r <bs bs'>4->^( |
  <cs cs'>4\prall \voiceOne <bs bs'>8 <cs cs'> <e e'>-2-5 <ds ds'>-4 |
  <cs cs'>8-3 <bs bs'>-2-5 <as as'> <bs bs'> <cs cs'> <ds ds'>) |
  
  \barNumberCheck 73
  <e e'>8( <fs fs'> <ds ds'> <e e'> <gs gs'> <fs fs'> |
  <e e'> <ds ds'> <cs cs'> <ds ds'> <e e'> <fs fs'>) |
  <gs gs'>8(-2-5 <fss fss'> <as as'> <gs gs'> q-3-5 <fss fss'> |
  <g g'>8-2-5 <fs fs'> <a a'> <gs gs'> q-3-5 <fs fs'>-4 |
  <fs fs'> <f f'> q4 q8 <e e'> |
  <e e'>4 q8[ <ds ds'>] \acciaccatura { e'8 } <ds, ds'>8 <css css'>) |
  \revert Staff.Fingering.avoid-slur
  <ds ds'>8-2-4( <e e'> <ds ds'>-4 <cs cs'>-3 <ds ds'> <e e'> |
  <ds ds'> <cs cs'> <b b'> <cs cs'> ds' b |
  
  \barNumberCheck 81
  <ds, ds'>8-3 <e e'> <es es'> <fs fs'>-3 <as as'> <gs gs'> |
  <fs fs'> <e e'> <ds ds'> <cs cs'> <ds ds'> <b b'>) |
  \oneVoice
  <css css'>8( <ds ds'> <e e'> <ds ds'> <fs fs'> <e e'> |
  <es es'>8 <fs fs'> <gs gs'> <fs fs'> <a a'> <gs gs'> |
  <fss fss'>8[ <gs gs'> <as as'> <gs gs'> <b b'>8. <as as'>16] |
  <as as'>8[ <gs gs'> <fss fss'> <gs gs'>] <b b'>8.) r16\fermata |
  <ds ds'>8( <cs cs'> <b b'> <as as'> <b b'> <gs gs'> |
  <as as'>8 <gs gs'> <fs fs'> <es es'> <fs fs'> <ds ds'> |
  
  \barNumberCheck 89
  <gs gs'>8 <fs fs'> <e e'> <ds ds'> <e e'> <cs cs'>) |
  <as as'>2.~^( |
  <as as'>2.~ |
  <as as'>2. |
  <b b'>2 <cs cs'>4 |
  <cs as'cs>2~ q8. <d b' d>16 |
  <cs as'cs>2. |
  \slashedGrace { as8 } <as e' as cs>2. |
  
  \barNumberCheck 97
  << \new Voice { \voiceOne d'2 e4 } { \voiceThree as,2. } >> |
  s2. |
  cs'2.~ |
  cs4) \oneVoice r4 r |
  R2. | % 4 = 60
  \tempo "" 4 = 84
  <g, g'>8^( <fs fs'> <e e'> <ds ds'> <e e'> <cs cs'> |
  \tempo "" 4 = 108
  <g' g'>8 <fs fs'> <e e'> <ds ds'> <e e'> <cs cs'>) |
  
  \bar "||"
  \break
  \key b \minor
  \cutTime
  \tempo "Tempo I" 2 = 72
  
  \scaleDurations 2/3 {
    \voiceOne
    <g' g'>8(_> <fs fs'> <e e'>  <ds ds'> <e e'> <cs cs'>) 
      <gs' gs'>8(_> <fs fs'> <e e'>  <ds ds'> <e e'> <cs cs'>) |
      
    \barNumberCheck 105
    <a' a'>8( <gs gs'> <g g'>  <fs fs'> <g g'> <ds ds'>
      <e e'> <es es'> <fs fs'>_>  <es es'> <fs fs'> <fss fss'>_> |
    <es es'>8 <fs fs'> <fss fss'>_>  <fs fs'> <fss fss'> <gs gs'>_>
      <fss fss'> <gs gs'> <a a'>_>  <gs gs'> <a a'> <as as'>_> |
    <b b'>8 <as as'> <b b'>  <as as'> <a a'> <gs gs'>
      <a a'> <gs gs'> <a a'>  <gs gs'> <g g'> <fs fs'> |
    <g g'>8 <fs fs'> <g g'>  <fs fs'> <f f'> <e e'>
      <ds ds'> <d d'> <cs cs'> 
  }
  <b fs' b>4_>) |
  \scaleDurations 2/3 {
    \revert Staff.Fingering.avoid-slur
    <b b'>8-2-5( <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'>) |
    <b b'>8-2-5( <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'>) |
    <d d'>8-2-5( <cs cs'> <d d'>  <e e'> <f f'> <g g'>  <f f'> <e e'> <d d'>
      <cs cs'> <d d'> <e e'>) |
    <d d'>8( <cs cs'> <d d'>  <e e'> <f f'> <g g'>  <f f'> <e e'> <d d'>)
      <f f'>( <g g'> <bf bf'> |
      
    \barNumberCheck 113
    <af af'>8 <g g'> <f f'>  <gs gs'> <as as'> <cs cs'>
      <b b'> <as as'> <gs gs'>  <b b'> <cs cs'> <e e'> |
    <d d'!>8 <cs cs'> <b b'>  <as css es as> <b b'> <d d'>
      \ottava 1 <es es'> \once \omit Accidental <as as'> <b b'>  q q q |
    <b b'>8 <as as'> <b b'>  <as as'> <a a'> <gs gs'>
      <a a'> <gs gs'> <a a'>  <af af'> <g g'> <fs fs'> |
    <g g'> <fs fs'> <g g'>  <gf gf'> <f f'> <e e'>
      <f f'> <e e'> <f f'>  <ff ff'> <ef ef'> <d d'> |
    <e e'> <ds ds'> <e e'>  <ds ds'> <d d'> <cs cs'>
      \ottava 0 <d d'> <cs cs'> <d d'>  <cs cs'> <c c'> <b b'> |
  }
  \oneVoice
  <b cs fs b>2 <as cs fs as> |
  <b d fs b>1)\fermata
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo 
  s1 * 4 |
  d''2-> d-> |
  b4-> b-> fs-> s |
  g2_>\slurPositionA ( fs4) s
  g2_>\slurPositionA ( fs4) s
  
  \barNumberCheck 9
  bf2->\slurPositionC ( a4) s |
  bf2->\slurPositionC ( a4) s |
  <bf cs>4-> s <c ds>-> s |
  <e g>4-> <g as>-> <bf cs>-> <cs e>-> |
  d2-> d-> |
  b4\tweak Y-offset -1 -> b\tweak Y-offset -1 -> fs-> s |
  \voiceOne
  g2->\slurPositionD ( fs4) s |
  g2->\slurPositionD ( fs4) s |
  
  \barNumberCheck 17
  <f g>2-> q4-> q-> |
  <f g>4-> s q-> s |
  <b, cs>2-> q4-> q-> |
  s1 * 5 |
  
  \barNumberCheck 25
  s1 * 4 |
  
  \time 3/4
  s2. * 4 |
  
  \barNumberCheck 33
  s2. * 5
  s4
  << 
    \new Voice { \voiceOne as2->^\ten } 
    \new Voice { \voiceTwo as,2 } 
  >> |
  s2. * 2 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 2 |
  \voiceTwo
  s2 a'4~ |
  a8 gs s2 |
  s2 c4~ |
  c8 b s2 |
  css2 ds4 |
  cs2 d4 |
  
  \barNumberCheck 57
  c4 c8 b^2 b4 |
  b8 as^2 as4 as4( |
  b4 as gs |
  gs4. fs8 ds4) |
  s2. * 4 |
  
  \barNumberCheck 65
  s2. * 6 |
  s2 a'4~ |
  a8 gs s2 |
  
  \barNumberCheck 73
  s2 c4~ |
  c8 b s2 |
  css2 ds4 |
  cs2 d4 |
  c4 c8 b b4 |
  b8 as as4 as4( |
  b4 as gs |
  gs4. fs8 ds4) |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. |
  \voiceOne
  e2.~ |
  e2.~ |
  e2.~ |
  \voiceTwo
  e2. |
  s2. * 3 |
  
  \barNumberCheck 97
  e8 fs4. g4 |
  \voiceOne 
  \slashedGrace { cs,8 } <cs as' e'>2. ~ |
  \voiceTwo
  <as' e'>2.~ |
  <as e'>4 s2 |
  s2. * 3 |
  
  \key b \minor
  \cutTime
  s1 |
  
  \barNumberCheck 105
  s1 * 2 |
  d2-> d-> |
  b4-> b-> fs-> s |
  g2->\slurPositionA ( fs4) s |
  g2->\slurPositionA ( fs4) s |
  bf2\slurPositionC (-> a4) s |
  bf2\slurPositionC (-> a4) df-> |
  
  \barNumberCheck 113
  c4-> e-> ds-> g-> |
  fs4 s2. |
  <d' fs>4-> s e-> s |
  <bf df>2-> 
    << 
      { 
        \override NoteColumn.force-hshift = -0.9 bf2->
      } 
      \new Voice { 
        \voiceThree \override NoteColumn.force-hshift = -0.9 
          \once \omit Accidental df4 s 
      } 
    >> |
  <<
    { 
      \override NoteColumn.force-hshift = -0.9 as2->
    }
    \new Voice { 
      \voiceThree \override NoteColumn.force-hshift = -0.9 c4 s
    }
  >> 
    <es, gs>2-> |
}

rightHand = <<
  \clef treble
  \global
  \tempo "Allegro con fuoco" 2 = 72
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHandUpper = \relative {
  \voiceOne
  \scaleDurations 2/3 {
    <fs,, fs'>8 <es es'> <fs fs'>  <g g'> <gs gs'> <a a'>
      <gs gs'> <fss fss'> <gs gs'>  <a a'> <as as'> <b b'> |
    <as as'>8 <gss gss'> <as as'>  <b b'> <bs bs'> <cs cs'>
      <bs bs'> <ass ass'> <bs bs'>  <cs cs'> <d d'> <ds ds'> |
    <css css'>8 <ds ds'> <e e'>_>  <ds ds'> <e e'> <f f'>_>
      <e e'> <es es'> <fs fs'>_>  <es es'> <fs fs'> <g g'>_> |
    <fs fs'>8 <fss fss'> <gs gs'>_>  <fss fss'> <gs gs'> <a a'>_>
      <fss fss'> <gs gs'> <a a'>_>  <gs gs'> <a a'> <as as'>_> |
    <b b'>8 <as as'> <b b'>  <as as'> <a a'> <gs gs'>
      <a a'> <gs gs'> <a a'>  <gs gs'> <g g'> <fs fs'> |
    <g g'>8( <fs fs'> <g g'>  <fs fs'> <f f'> <e e'>
      <ds ds'> <d d'> <cs cs'> 
  }
  <b fs' b>4_>) |
  \scaleDurations 2/3 {
    <b b'>8 <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'> |
    <b b'>8 <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'> |
      
    \barNumberCheck 9
    <d d'>8 <cs cs'> <d d'>  <e e'> <f f'> <g g'>  <f f'> <e e'> <d d'>
      <cs cs'> <d d'> <e e'> |
    <d d'>8 <cs cs'> <d d'>  <e e'> <f f'> <g g'>  <f f'> <e e'> <d d'>
      <cs cs'> <d d'> <e e'> |
    <g g'>8 <fs fs'> <g g'>  <gs gs'> <a a'> <bf bf'>  <a a'> <gs gs'> <a a'>
      <as as'> <b b'> <c c'> |
    <cs cs'>8 <d d'> <ds ds'>  <e e'> <es es'> <fs fs'>  \clef treble 
      \voiceThree
      <g g'> <gs gs'> <a a'>  <as as'> <b b'> <cs cs'> |
    <b b'>8 <as as'> <b b'>  <as as'> <a a'> <gs gs'>
      <a a'> < gs gs'> <a a'>  <gs gs'> <g g'> <fs fs'> |
    \clef bass \voiceFour <g g'>8 <fs fs'> <g g'>  <fs fs'> <f f'> <e e'>
      <ds ds'> <d d'> <cs cs'> 
  }
  <b fs' b>4^> |
  \scaleDurations 2/3 {
    <b b'>8 <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'> |
    <b b'>8 <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'> |
    
    \barNumberCheck 17
    <b b'>8 <as as'> <b b'>  <c c'> <cs cs'> <d d'>  
      <cs cs'> <c c'> <b b'>  <as as'> <b b'> <cs cs'> |
    <b b'>8 <as as'> <b b'>  <c f g c>^> <cs cs'> <d f g d'>^>
      <cs cs'> <c c'> <b b'>  <as as'> <b b'> <gs b cs gs'>^> |
    <fs fs'>8 <es es'> <fs fs'>  <g g'> <fs fs'> <es es'>  
      <fs fs'> <g g'> <fs fs'>  <es es'> <fs fs'> <g g'> |
    \oneVoice
    <fs fs'>8-> <b b'> <as as'>  <a a'> <as as'> <b b'>
      <bs bs'> <cs cs'> <d d'>  <ds ds'> <e e'> <ef ef'> |
    <e e'>8 <ef ef'> <d d'>->  <ef ef'> <d d'> <cs cs'>->
      <d d'> <cs cs'> <c c'>->  <cs cs'> <c c'> <b b'>-> |
    <c c'>8 <b b'> <bf bf'>  <a a'> <af af'> <g g'>  <gf gf'> <f f'> <e e'>
      <ef ef'> <d d'> <cs cs'> |
    <b f' gs b>8\noBeam \clef treble <gs''' gs'> <g g'>  <fs fs'> <es es'>
      <gs gs'>  <f f'> <d d'> <cs cs'!>  <c c'> <b b'!> <d d'> |
    <b b'>8 <gs gs'> <g g'>  <fs fs'> <es es'> <gs gs'>  \clef bass
      <c, c'>-> <b b'> <d d'>  <fss, fss'>-> <es es'> <gs gs'> |
  
    \barNumberCheck 25
    <fs,! fs'>4 <as as'>8 <cs! cs'> <as as'> <d d'>  <as as'> <b b'> <e e'>
      <cs cs'> <d d'> <g g'> |
    <es es'>8 <fs fs'> <as as'>  <cs cs'> <as as'> <d d'>  
      <as as'> <b b'> <e e'>  <cs cs'> <d d'> <g g'> |
    <es es'>8 <fs fs'> <as as'>  \clef treble <cs cs'> <as as'> <d d'>
  }
  \clef bass <f,,, f'>2 |
  \tuplet 3/2 { <e e'>8( <f f'> <fs fs'> } <as as'>) r r2\fermata |
  
  \key b \major
  \time 3/4
  e'''2.~( |
  e4 fs cs) |
  <b, fs'>2( \stemDown <e, gs'>4 |
  <fs e' as>4 \voiceThree fs'2) |
  
  \barNumberCheck 33
  \oneVoice 
  r4 \voiceThree b2*1/2-1( \oneVoice <e, cs'>4-2_5) |
  r4 \once \stemDown <fs, e' as> <b ds b'~> |
  <gs es' b'>4 cs, <b'' es> |
  <fs as fs'>4 <as, fs' cs'> <b fs' ds'> |
  r4 b'( <cs, as'> |
  \voiceThree es4) g\rest fs~ |
  \voiceFour
  <b, fs'>4 r <e, gs'>^( |
  <fs e' as>4 \voiceThree fs'2) |
  
  \barNumberCheck 41
  \oneVoice r4 \voiceThree b2*1/2( \voiceFour <e, cs'>4) |
  \oneVoice r4 \voiceFour <fs, e' as>^( <b ds b'> |
  \voiceThree <fs' a>4 gs) r |
  <a c>4( b) r |
  <b d>4( cs8[ b ds8. cs16] |
  cs8[ b as b] d8.) \oneVoice r16\fermata |
  s2. * 2 |
  
  \barNumberCheck 49
  \voiceThree
  gs,2 s4 |
  \override Staff.Fingering.avoid-slur = #'inside
  fs2.~( |
  fs2 a4~ |
  a8 gs-1 g-1 fs-2 e4) |
  a2-1( c4~-1 |
  c8 b as a gs-2 a-1) |
  b8-2 as-3 cs-1 b4-2 as8-3 |
  ds8 a-2 c-1 bf4-2( a8-2) |
  
  \barNumberCheck 57
  d8-1[ af-3] af-2 g-3 g4-1 |
  g4-1 fs2~^\twoToOne |
  fs2 s4 |
  s4 fs2 |
  \oneVoice r4 \voiceThree b2*1/2( \voiceFour <e, cs'>4) |
  \oneVoice r4 \voiceFour <fs, e' as>^( <b ds b'> |
  \voiceThree <fs' a>4 gs) r |
  <a c>4( b) r |
  
  \barNumberCheck 65
  <b d>4( cs8[ b d8. cs16] |
  cs8[ b as b] d8.) \oneVoice r16\fermata |
  s2. * 2 |
  \voiceThree
  gs,2 s4 |
  fs2.~\( |
  fs2 a4~ |
  a8 gs-1( g-1) fs e4\) |
  
  \barNumberCheck 73
  a2( c4~ |
  c8 b as a gs a) |
  b8 as cs b4 as8 |
  ds8 a c bf4( a8) |
  d8[ af] af g g4 |
  g4 fs2~ |
  fs2 <e, gs'>4 |
  as'4 fs2 |
  
  \barNumberCheck 81
  \oneVoice
  r4 \voiceThree b4( bs8 cs) |
  \oneVoice
  r4 <fs,, e' as> <b ds b'> |
  \voiceThree <fs' a>4( gs) r |
  <a c>4( b) r |
  <b d>4( cs8[ b d8. cs16] |
  cs8[ b as b] d8.) \oneVoice r16\fermata |
  s2. * 2 |
  
  \barNumberCheck 89
  \voiceThree
  gs,2 g4~ |
  g8-1 fs-2 e-1 ds e cs-3 |
  g'8-1 fs e ds e cs |
  \repeat unfold 5 { g'8 fs e ds e cs | }
  
  \barNumberCheck 97
  \repeat unfold 3 { g'8 fs e ds e cs | }
  \oneVoice
  <g g'>8( <fs fs'> <e e'> <ds ds'> <e e'> <cs cs'> |
  <g' g'>8 <fs fs'> <e e'> <ds ds'> <e e'> <cs cs'>) |
  <g' g'>8( <fs fs'> <e e'> <ds ds'> <e e'> <cs cs'> |
  <g' g'>8 <fs fs'> <e e'> <ds ds'> <e e'> <cs cs'>) |
  
  \key b \minor
  \cutTime
  \scaleDurations 2/3 {
    \voiceThree
    <g' g'>8(_> <fs fs'> <e e'>  <ds ds'> <e e'> <cs cs'>) 
      <gs' gs'>8(_> <fs fs'> <e e'>  <ds ds'> <e e'> <cs cs'>) |
      
    \barNumberCheck 105
    <a' a'>8 <gs gs'> <g g'>  <fs fs'> <g g'> <ds ds'>
      <e e'> <es es'> <fs fs'>_>  <es es'> <fs fs'> <fss fss'>_> |
    <es es'>8 <fs fs'> <fss fss'>_>  <fs fs'> <fss fss'> <gs gs'>_>
      <fss fss'> <gs gs'> <a a'>_>  <gs gs'> <a a'> <as as'>_> |
    <b b'>8 <as as'> <b b'>  <as as'> <a a'> <gs gs'>
      <a a'> <gs gs'> <a a'>  <gs gs'> <g g'> <fs fs'> |
    <g g'>8 <fs fs'> <g g'>  <fs fs'> <f f'> <e e'>
      <ds ds'> <d d'> <cs cs'> 
  }
  <b fs' b>4_> |
  \scaleDurations 2/3 {
    <b b'>8 <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'> |
    <b b'>8 <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'> |
    <d d'>8 <cs cs'> <d d'>  <e e'> <f f'> <g g'>  <f f'> <e e'> <d d'>
      <cs cs'> <d d'> <e e'> |
    <d d'>8 <cs cs'> <d d'>  <e e'> <f f'> <g g'>  <f f'> <e e'> <d d'>
      <f f'> <g g'> <bf bf'> | 
      
    \barNumberCheck 113
    <af af'>8 <g g'> <f f'>  <gs gs'> <as as'> <cs cs'>
      <b b'> <as as'> <gs gs'>  <b b'> <cs cs'> <e e'> |
    <d d'!> <cs cs'> <b b'>  <as as'> <gs gs'> <es es'>
      <d d'> <cs cs'> <b b'>  <a a'> <gs gs'> <g g'> |
    <fs fs'> <as as'> <b b'>  <bs bs'> <cs cs'>  <d d'>
      <cs cs'> <bs bs'> <cs cs'> <d d'> <ef ef'> <e e'> |
    <ef ef'> <d d'> <ef ef'>  <e e'> <f f'> <gf gf'>
      <f f'> <e e'> <f f'>  <gf gf'> <g g'> <af af'> |
    \oneVoice
    <g g'> <fs fs'> <g g'>  <gs gs'> <a a'> <as as'>
      <b b'> <as as'> <b b'>  <bs bs'> <cs cs'> <d d'> |
  }
  <fs cs' fs>2 <fs, cs' fs> |
  <b fs' b>1\fermata |
}

leftHandLower = \relative {
  s1 * 4 |
  \voiceFour
  d2_> d_> |
  b4-> b-> fs-> s |
  g2->\slurPositionB ( fs4) s | 
  g2->\slurPositionB ( fs4) s |
  
  \barNumberCheck 9
  bf2->\slurShapeA ( a4) s |
  bf2->\slurShapeA ( a4) s |
  s1 * 2 |
  \voiceFour
  d'2 d |
  \voiceThree
  b4\offset Y-offset 0.75 -> b-> fs-> s |
  g2->\slurPositionE ( fs4) s |
  g2->\slurPositionE ( fs4) s |
  
  \barNumberCheck 17
  <f g>2-> q4-> q-> |  
  <f g>4-> s q-> s |
  <b, cs>2-> q4-> q-> |
  s1 * 5 |
  
  \barNumberCheck 25
  s1 * 4
  
  \time 3/4
  \voiceFour
  s2. * 3
  s4 r b |
  
  \barNumberCheck 33
  s4 ds-5 s |
  s2. * 4 |
  cs4 <fs, cs'>2 |
  s2. |
  s4 r b |
  
  \barNumberCheck 41
  s4 ds s |
  s2. |
  bs2 cs4( |
  ds2) e4 |
  es2.~ |
  es2~ es8. s16 |
  <e' g>4^1^2( <ds fs>8^1^3 <css es> <ds fs> <b d>^2^4 |
  <cs e>4^1^3 <as cs>8^2^3 <gss bs>^2^4 <ass cs>^1^3 <fs a> |
  
  \barNumberCheck 49
  <bs, ds'>4 <cs cs'> <e g> |
  fs,4 b8) r r4 |
  a2 fs4 |
  gs2 cs4^1^3 |
  c4-4 a2-5 |
  b2 e4-4 |
  e2-5( ds4~ |
  ds4 ef d |
  
  \barNumberCheck 57
  d2~ d8 cs~ |
  cs8 r r4 fs,4) |
  b2 <e, gs'>4 |
  <fs e' as>4 r4 b |
  s4 ds s |
  s2. |
  bs2 cs4( |
  ds2) e4( |
  
  \barNumberCheck 65
  es2.~ |
  es2~ es8.) s16 |
  <e' g>4^1^2( <ds fs>8^1^3 <css es> <ds fs> <b d>^2^4 |
  <cs e>4^1^3 <as cs>8^2^3 <gss bs>^2^4 <ass cs>^1^3 <fs a> |
  <bs, ds'>4 <cs cs'> <e g> |
  fs,4 b8) r r4 |
  a2 fs4 |
  gs2 cs4^1^3 |
  
  \barNumberCheck 73
  c4 a2 |
  b2 e4 |
  e2( ds4~ |
  ds4 ef d |
  d2~ d8 cs~ |
  cs8 r r4 fs,4 |
  b2) s4 |
  <fs e'>4 r b |
  
  \barNumberCheck 81
  s4 css8 ds e4 |
  s2.
  bs2 b8( cs |
  css8 ds) r4 ds8( e |
  es2.~ |
  es2~ es8.) s16 |
  <e' g>4( <ds fs>8 <css es> <ds fs> <b d> |
  <cs e>4 <as cs>8 <gss bs> <ass cs> <fs a> |
  
  \barNumberCheck 89
  <bs, ds'>4 <cs cs'> e) |
  fs,2.~_\sottoVoce |
  \repeat unfold 6 { fs2.~ | }
  
  \barNumberCheck 97
  fs2.~ |
  fs2.~ |
  fs2. |
  s2. * 4 |
  
  \key b \minor
  \cutTime
  s1 |
  
  \barNumberCheck 105
  s1 * 2 |
  d'2-> d-> |
  b4-> b-> fs-> s |
  g2->\slurPositionB ( fs4) s |
  g2->\slurPositionB ( fs4) s |
  bf2\slurShapeA (-> a4) s |
  bf2\slurShapeA (-> a4) df-> |
  
  \barNumberCheck 113
  c4-> e-> ds-> g-> |
  fs4 s2. |
}

leftHand = <<
  \clef bass
  \global
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \cutTime
  \override TextScript.Y-offset = -0.5
  \pocoAPocoCresc s1\startTextSpan |
  s1 * 2 |
  s2... s16\stopTextSpan |
  s1\f |
  s1 * 3 |
  
  \barNumberCheck 9
  s1 * 2 |
  s1\cresc |
  s1 |
  s1\ff |
  s1 * 3 |
  
  \barNumberCheck 17
  s1 * 3 |
  s2...\< s16\! |
  s1 | 
  s2...\< s16\! |
  s1\ff |
  s1 |
  
  \barNumberCheck 25
  s1\cresc |
  s1 |
  s2 s\fff |
  s1 |
  
  \time 3/4
  s2.\p |
  s2. |
  s2.^\benLegato |
  s2. |
  
  \barNumberCheck 33
  s2. * 2 |
  s2\< s8 s\! |
  s2\> s8 s\! |
  s2. * 2 |
  \tag layout { s2.^\sempreP | }
  \tag midi   { s2.\pp | }
  s2. |
  
  \barNumberCheck 41
  s2. * 2 |
  s2.\cresc |
  s2. * 2 |
  s2 s8.\! s16 |
  s2.\dim |
  s2. |
  
  \barNumberCheck 49
  s2 s8 s\! |
  s2. |
  s4 s2\cresc |
  s2. * 3 |
  s2 s8 s\! |
  s2.\dim |
  
  \barNumberCheck 57
  s2. |
  s2 s8 s\! |
  s2. * 4 |
  s2.\cresc
  s2. |
  
  \barNumberCheck 65
  s2. |
  s2 s8 s\! |
  s2.\dim |
  s2. * 2 |
  s2 s8 s\! |
  s2.\cresc |
  s2. |
  
  \barNumberCheck 73
  s2. * 2 |
  s2 s8 s\! |
  s2.\dim |
  s2. |
  s2 s8 s\! |
  s2. * 2 |
  
  \barNumberCheck 81
  s2. * 2
  s2.\cresc |
  s2. * 2 |
  s2 s8 s\! |
  s2.\dim |
  s2 s8 s\! |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 3 |
  s2.\cresc |
  s2 s8s \! |
  s2.^\accelerando |
  s2. |
  
  \cutTime
  s1\f |
  
  \barNumberCheck 105
  s2. s4\cresc |
  s1 |
  s1\ff |
  s1 * 4 |
  \override DynamicTextSpanner.style = #'none
  s2. s4\cresc |
  
  \barNumberCheck 113
  s1 |
  s2 s4..\< s16\! |
  \tag layout { s1^\piuFPossibile | }
  \tag midi   { s1\ff | }
}

pedal = {
  \cutTime
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 4 |
  
  \time 3/4
  s2. * 2 |
  s2 s8\sd s\su |
  s4\sd s\su s |
  
  \barNumberCheck 33
  s2. |
  s4 s\sd s\su |
  s4 s\sd s\su |
  s2. * 3 |
  s2 s8\sd s\su |
  s4\sd s\su s |
  
  \barNumberCheck 41
  s2. |
  s4 s\sd s\su |
  s2. * 6 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 2 |
  s2 s8\sd s\su |
  s4\sd s\su s |
  s2. |
  s4 s\sd s\su |
  s2. * 2 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 6 |
  s2 s8\sd s\su |
  s2. |
  
  \barNumberCheck 81
  s2. |
  s4.\sd s8\su s4 |
}

forceBreaks = {
  \cutTime
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\noBreak s1\pageBreak
  
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  \time 3/4
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  \cutTime
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\noBreak s1\pageBreak
}

etudeTenMusic = \score {
  \header {
    opus = "Opus 25, No 10"
  }
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 10" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeTenMidi = \book {
  \bookOutputName "etude-op25-no10"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
