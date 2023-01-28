%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

\include "global-variables.ily"

%%% Positions and shapes %%%


%%% Music %%%

global = {
  \time 2/2
  \key b \minor
  \accidentalStyle piano
  % \override Staff.Fingering.avoid-slur = #'inside
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

rightHandUpper = \relative {
  \oneVoice
  \slurUp
  \override Staff.Fingering.avoid-slur = #'inside
  \scaleDurations 2/3 {
    <fs fs'>8-4( <es es'>-5 <fs fs'>-4  <g g'>-5 <gs gs'>-4 <a a'>-5
      <gs gs'>-4 <fss fss'>-5 <gs gs'>-4  <a a'> <as as'> <b b'> |
    \revert Staff.Fingering.avoid-slur
    <as as'>8 <gss gss'> <as as'>  <b b'> <bs bs'> <cs cs'>
      <bs bs'> <ass ass'> <bs bs'>  <cs cs'> <d d'> <ds ds'> |
    <css css'>8 <ds ds'> <e e'>->  <ds ds'> <e e'> <f f'>->  <e e'> <es es'> 
      <fs fs'>->  \stemUp <es es'> <fs fs'> <g g'!>-> |
    <fs fs'>8 <fss fss'> <gs gs'>->  <fss fss'> <gs gs'> <a a'>->
      <fss fss'> <gs gs'> <a a'>->  <gs gs'> <a a'> <as as'>->) |
    \voiceOne
    <b b'>8( <as as'> <b b'>  <as as'> <a a'> <gs gs'>)
      <a a'>( <gs gs'> <a a'>  <gs gs'> <g g'> <fs fs'>) |
    <g g'>8( <fs fs'> <g g'>  <fs fs'> <f f'> <e e'>
      <ds ds'> <d d'> <cs cs'> 
  }
  <b fs' b>4_>) |
  \scaleDurations 2/3 {
    <b b'>8-2-5( <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'>) |
    <b b'>8_>( <as as'> <b b'>  <cs cs'> <d d'> <e e'>
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
    <b b'>8^2^5( <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'>) |
    <b b'>8^2^5( <as as'> <b b'>  <cs cs'> <d d'> <e e'>
      <d d'> <cs cs'> <b b'>  <as as'> <b b'> <cs cs'>) |
      
    \barNumberCheck 17
    <b b'>8( <as as'> <b b'>  <c c'> <cs cs'> <d d'>  
      <cs cs'> <c c'> <b b'>  <as as'> <b b'> <cs cs'>) |
    <b b'>8( <as as'> <b b'>  <c f g c>^> <cs cs'> <d f g d'>^>
      <cs cs'> <c c'> <b b'>  <as as'> <b b'> <es, b' cs es>^>) |
    <fs fs'>8( <g g'> <fs fs'>  <es es'> <fs fs'> <g g'>  
      <fs fs'> <es es'> <fs fs'>  <g g'> <fs fs'> <es es'>) |
    \oneVoice
    <fs fs'>8->( <g g'> <fs fs'>  <es es'> <fs fs'> <g g'>
      <fs fs'> <es es'> <fs fs'>  <g g'> <fs fs'> <g g'> |
    <fs fs'>8 <g g'> <af af'>->  <g g'> <gs gs'> <a a'>->
      <g g'> <a a'> <bf bf'>->  <a a'> <as as'> <b b'>-> |
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
  <fs fs'>8-3 <e e'>-5 <ds ds'>-4 <cs cs'>-3 <d d'> b') |
  \voiceThree \stemDown
  \override TextScript.outside-staff-priority = ##f
  <cs, cs'>8-3( <ds ds'>-5 <cs cs'>-3 <gs' gs'>\offset Y-offset 1 ^\fiveToThree
    <b b'>\offset Y-offset 2 ^\fiveToFour <ds ds'>-5 |
  % adjust slur so this can be 2.5 ---------->v
  <cs cs'>8 <ds ds'> <cs cs'>\offset Y-offset 2 ^\fourToFive 
    <as as'>\offset Y-offset 1.5 ^\fourToFive <gs gs'> 
    <as as'> |
  <gs gs'>8\offset Y-offset 1 ^\fourToFive <fs fs'>\offset Y-offset 0.5 
    ^\fourToFive <ds ds'>-4 <fs fs'>-5 <ds ds'>^\fourToFive <cs cs'>
    ^\fourToFive |
  \stemUp
  <gs gs'>4 
    << 
      { fs'4 e) } 
      \new Voice { \voiceOne as2->^\ten } 
      \new Voice { \voiceTwo as,2 } 
    >> |
}

rightHandLower = \relative {
  \voiceTwo 
  s1 * 4 |
  d''2-> d-> |
  b4-> b-> fs-> s |
  g2_>( fs4) s
  g2_>( fs4) s
  
  \barNumberCheck 9
  bf2->( a4) s |
  bf2->( a4) s |
  <bf cs>4-> s <c ds>-> s |
  <e g>4-> <g a>-> <bf cs>-> <cs e>-> |
  d2-> d-> |
  b4-> b-> fs-> s |
  \voiceOne
  g2->( fs4) s |
  g2->( fs4) s |
  
  \barNumberCheck 17
  <f g>2-> q4-> q-> |
  <f g>4-> s q-> s |
  <b, cs>2-> q4-> q-> |
}

rightHand = <<
  \clef treble
  \global
  \tempo "Allegro con fuoco" 2 = 72
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHandUpper = \relative {
  \oneVoice
  \scaleDurations 2/3 {
    <fs,, fs'>8 <es es'> <fs fs'>  <g g'> <gs gs'> <a a'>
      <gs gs'> <fss fss'> <gs gs'>  <a a'> <as as'> <b b'> |
    <as as'>8 <gss gss'> <as as'>  <b b'> <bs bs'> <cs cs'>
      <bs bs'> <ass ass'> <bs bs'>  <cs cs'> <d d'> <ds ds'> |
    <css css'>8 <ds ds'> <e e'>->  <ds ds'> <e e'> <f f'>->
      <e e'> <es es'> <fs fs'>->  <es es'> <fs fs'> <g g'>-> |
    <fs fs'>8 <fss fss'> <gs gs'>->  <fss fss'> <gs gs'> <a a'>->
      <fss fss'> <gs gs'> <a a'>->  \stemUp <gs gs'> <a a'> <as as'>-> |
    \voiceTwo % \voiceFour
    <b b'>8 <as as'> <b b'>  <as as'> <a a'> <gs gs'>
      <a a'> <gs gs'> <a a'>  <gs gs'> <g g'> <fs fs'> |
    <g g'>8( <fs fs'> <g g'>  <fs fs'> <f f'> <e e'>
      <ds ds'> <d d'> <cs cs'> 
  }
  <b fs' b>4^>) |
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
      \voiceOne % \voiceThree
      <g g'> <gs gs'> <a a'>  <as as'> <b b'> <cs cs'> |
    <b b'>8 <as as'> <b b'>  <as as'> <a a'> <gs gs'>
      <a a'> < gs gs'> <a a'>  <gs gs'> <g g'> <fs fs'> |
    \clef bass \voiceTwo %{ \voiceFour %} <g g'>8 <fs fs'> <g g'>  <fs fs'> <f f'> <e e'>
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
    <b b'>8 <as as'> <b b'>  <c f g c>-> <cs cs'> <d f g d'>^>
      <cs cs'> <c c'> <b b'>  <as as'> <b b'> <es, b' cs es>^> |
    <fs fs'>8 <g g'> <fs fs'>  <es es'> <fs fs'> <g g'>  
      <fs fs'> <es es'> <fs fs'>  <g g'> <fs fs'> <es es'> |
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
  <fs e' as>4 << { \voiceThree fs'2) } \new Voice { \voiceFour r4 b, } >> |
  
  \barNumberCheck 33
  \oneVoice 
  r4 << { b'2*1/2-1( \stemDown <e, cs'>4-2_5) } \\ { ds_5 s } >> |
  r4 \once \stemDown <fs, e' as> <b ds b'~> |
  <gs es' b'>4 cs, <b'' es> |
  <fs as fs'>4 <as, fs' cs'> <b fs' ds'> |
  r4 b'( <cs, as'> |
  << { \stemUp es4) s fs~ } \new Voice { \voiceFour cs4 <fs, cs'>2 } >> |
  \stemDown
  <b fs'>4
}

leftHandLower = \relative {
  \voiceTwo % remove
  s1 * 4 |
  \voiceOne % \voiceThree
  d2-> d-> |
  b4-> b-> fs-> s |
  g2->( fs4) s | 
  g2->( fs4) s |
  
  \barNumberCheck 9
  bf2->( a4) s |
  bf2->( a4) s |
  s1 * 2 |
  \voiceTwo % \voiceFour
  d'2 d |
  \voiceOne % \voiceThree
  b4-> b-> fs-> s |
  g2->( fs4) s |
  g2->( fs4) s |
  
  \barNumberCheck 17
  <f g>2-> q4-> q-> |  
  <f g>4-> s q-> s |
  <b, cs>2-> q4-> q-> |
  s1 * 5 |
  
  \barNumberCheck 25
  s1 * 4
  
  \time 3/4
  s2. * 3
  
}

leftHand = <<
  \clef bass
  \global
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  % \override DynamicTextSpanner.style = #'none
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
  
}

pedal = {
  % \override Score.SustainPedal.self-alignment-X = #LEFT
  % \override Dynamics.PianoPedalBracket.shorten-pair = #'(1 . -1)
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
}

% currently not used
forceBreaks = {
  \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 3 { s2\noBreak } s2\pageBreak
  
  \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 3 { s2\noBreak } s2\pageBreak
  
  \repeat unfold 3 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 4 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 4 { s2\noBreak } s2\break\noPageBreak
  \repeat unfold 4 { s2\noBreak } s2\pageBreak
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
    % \new Devnull \forceBreaks
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
