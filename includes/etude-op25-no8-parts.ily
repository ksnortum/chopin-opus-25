%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.1"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ()
                        ((0 . 0) (0 . -3) (0 . -2) (0 . 2))
                      ) \etc
slurShapeB = \shape #'((-0.75 . 1.25) (0 . 0.75) (0 . 0.25) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key df \major
  \accidentalStyle piano
}

rightHand = \relative {
  \clef treble
  \global
  \tempo "Vivace legato" 2 = 69
  \tuplet 3/2 4 { 
    <gf' ef'>8( <af f'> <gf ef'>  <af f'> <gf ef'> <af f'>  <f df'>8-1-3 
      <gf ef'>-1-4 <g e'>-1-5  <bf gf'>-2-5 <af f'>-1-4 <f df'>-1-3) | 
  }
  \scaleDurations 2/3 {
    <af f'>8( <gf ef'> <af f'>  <gf ef'> <af f'> <gf ef'>  <f df'>-1-3 
      <gf ef'>-1-4 <g e'>-1-5  <bf gf'>-2-5 <af f'> <f df'>-3) |
    <g ef'>8(-1-4 <af f'>-2-5 <a fs'>-1-4  <bf g'>-2-5 <c af'>-1-4 <df bf'>-2-5
      <d b'>-1-4 <ef c'>-2-5 <e cs'>-1-4 <gf ef'>-2-5 <f df'>-1-4 
      <c af'>-1-3) |
    <ef c'>8( <df bf'> <ef c'> <df bf'> <ef c'> <df bf'> <c af'>-1-3 
      <df bf'>-2-5 <bf gf'>-1-4  <c af'>-2-5 <af f'>-1-4 <bf gf'>) |
    <gf ef'>8( <af f'> <gf ef'>  <af f'> <gf ef'> <af f'>  <f df'> <gf ef'>
      <g e'>  <bf gf'> <af f'> <f df'>) |
    <af f'>8( <gf ef'> <af f'>  <gf ef'> <af f'> <gf ef'>  <f df'> <gf ef'>
      <g e'>  <bf gf'> <af f'> <f df'>)-2 |
    <gf ef'>8(-1-3_3_1 <g e'>-1-4_4_1 <af f'>-1-5_5_2  <a fs'>-1-3_4_1
      <bf g'>-1-4_5_2 <b gs'>-1-3_4_1  <c a'>-1-4_4_1 <df bf'>-1-3_5_2
      <d b'>-1-4_4_1  <ef c'>-1-5_5_2 <e cs'>-1-3_3_1 <f d'>-1-4_4_1) |
    <gf ef'>8(-1-3 <df' bf'>-2-5 <b g'>-1-4  <c af'> <a f'> <bf gf'>  <g e'>
      <af f'> <f d'>  <gf ef'> <e c'> <f df'>)-2-5 |
      
    \barNumberCheck 9
    <df bf'>8(-1-3 <gf ef'>-2-5 <e c'>-1-4  <f df'> <df bf'> <f df'>
      <ef c'>-1-4 <f df'>-2-5 <ef c'>-1-4  <df bf'>-2-5 <c a'> <ef c'>) |
    <df bf'>8(-1-4 <ef c'> <df bf'>  <c af'>-2-5 <bf gf'> <df bf'>
      <cf af'>-1-4 <df bf'> <bf g'>-1-4  <cf af'> <af f'>-1-4 <cf af'>) |
    <bf gf'>8(-1-4 <c af'> <bf gf'>  <af f'>-2-5 <gf ef'> <bf gf'>)
      <af f'>-1-4( <bf gf'> <af f'>  <gf ef'>-2-5 <f df'> <af f'>) |
    <g ef'>8(-1-4 <af f'> <g ef'>  <f df'>-2-5 <df bf'>-1-4 <ef c'>-2-5
      <c af'> <df bf'> <c af'>  <df bf'> <c af'> <ef c'>) |
    <df bf'>8^( <ef c'> <df bf'>  <ef c'> <df bf'> <ef c'>  <c af'>-1-3_4_1
      <df bf'>-1-4_5_2 <d b'>-1-5_4_1  <f df'>-2-5_5_2 <ef c'> <c af'>) |
    <ef c'>8^( <df bf'> <ef c'>  <df bf'> <ef c'> <df bf'>  <c af'> <df bf'>
      <d b'>  <f df'> <ef c'> <c af'>) |
    <gf' ef'>8( <af ff'> <gf ef'>  <af ff'> <gf ef'> <af ff'>  <ff df'>-1-4
      <f d'>-2-5 <gf ef'>-1-4  <bff gf'>-2-5 <af ff'> <ff df'>-1-3) |
    <af ff'>8( <gf ef'> <af ff'>  <gf ef'> <af ff'> <gf ef'>  <ff df'>-1-3
      <f d'>-1-4 <gf ef'>-1-3  <bff gf'>-1-5 <af ff'>-2-5 <ff df'>-1-4) |
      
    \barNumberCheck 17
    <af ff'>8-2-5( <g ef'>-1-4 <bf g'>-2-5  <af f'> <c af'> <bf g'>  <df bf'>
      <c af'> <ef c'>  <df bf'> <f df'> <ef c'> |
    \ottava 1 <g ef'>8 <f df'> <af f'>  <g ef'> <bf g'> <af f'>  <c af'>
      <bf g'> <df bf'>  <c af'> <ef c'> <df bf'>-1-4 |
    <c af'>8-1-3 <df bf'>-2-5 <bf gf'>-1-4  <c af'>-2-5 <af f'>-1-4 <bf gf'>
      <gf ef'> <af f'> <f df'>  <gf ef'> <ef c'> <f df'> |
    \ottava 0 <df bf'>8 <ef c'> <c af'>  <df bf'> <bf gf'> <c af'>  <af f'>
      <bf gf'> <gf ef'>  <af f'> <f df'> <af f'>) |
    <gf ef'>8->( <af f'> <gf ef'>  <af f'> <gf ef'> <af f'>  <f df'>
      <gf ef'> <g e'>  <bf gf'> <af f'> <f df'>) |
    <af f'>8( <gf ef'> <af f'>  <gf ef'> <af f'> <gf ef'>  <f df'> <gf ef'>
      <g e'> <bf gf'> <af f'> <f df'>) |
    <af f'>(-1-4 <bf gf'> <af f'>  <bf gf'> <af f'> <bf gf'>  <gf ef'>-1-3
      <af f'>-1-4 <bf gf'>-1-3  <cf af'>-1-4 <df bf'>-2-5 <cf af'>) |
    <bf gf'>(-1-3 <cf af'>-1-4 <df bf'>-1-3  <ef c'>-1-4 <f df'>-2-5 
      <ef c'>-1-4 <df bf'>-1-3 <ef c'>-1-4 <f df'>-1-3  <g ef'>-1-4 <af f'> 
      <g ef'>
      
    \barNumberCheck 25
    <af f'>8 <g ef'> <af f'>  <g ef'> <af f'> <g ef'>  <af f'> <g ef'> <af f'>
      <g ef'> <af f'> <g ef'> |
    <af f'>8 <gf ef'> <af f'>  <gf ef'> <af f'> <gf ef'>  <af f'> <gf ef'>
      <af f'>  <gf ef'> <af f'> <gf ef'>~ |
    <gf ef'>8 <bf gf'>-2-5 <af f'>-1-4  <gf ef'>-2-5 <f df'>-1-4 <df bf'>-2-5
      <c af'>-1-4 <ef c'> <df bf'>  <c af'> <bf gf'> <gf ef'> |
    <f df'>8) r <f' df'>-1-4-\slurShapeA \(  <gf ef'>-2-5 <f df'>-1-3 
      <df bf'>-1-3 <ef cf'>-1-4  <f df'> <ef cf'> <f df'>  <ef cf'> <f df'> 
    <ef cf'>8 <f df'> <ef cf'>  <f df'> <ef cf'>-1-4 <cf af'>-1-3  <df bf'>-2-5
      <bf gf'>-1-4 <df bf'>-2-5  <c af'>-2-5 <gf ef'>-1-4 <af f'>-2-5 |
    <f df'>8 <gf ef'> <f df'>  <gf ef'> <f df'> <df bf'>  <ef cf'> <f df'> 
      <ef cf'>  <f df'> <ef cf'> <f df'> |
    <ef cf'>8 <f df'> <ef cf'>  <f df'> <ef cf'> <cf af'>  <df bf'> <bf gf'>
      <df bf'>-2-5-\slurShapeB ^(  <c af'>-2-5) <gf ef'> <af f'>\) |
    <f df'>8(-1-4 <fs d'>-2-5 <g ef'>-1-4  <gs e'>-2-5 <a f'>-1-5 <as fs'>-2-4
      <b g'>-1-5 <c af'>-1-4 <cs a'>-2-5  <df bf'>-1-4 <ds b'>-2-5 <e c'>-1-5 |
    
    \barNumberCheck 33
    <f df'>8-1-4 <fs d'>-2-5 <g ef'>-1-4  <gs e'>-2-5 <a f'>-1-5 <as fs'>-2-4
      <b g'>-1-5 <c af'>-1-4 <cs a'>-2-5  <d bf'>-1-4 <ds b'>-2-5 <e c'>-1-5 |
    \ottava 1 <f df'>-1-4 <fs d'>-2-5 <g ef'>-1-4  <gs e'>-2-5 <a f'>-1-5
      <as fs'>-2-4  <b g'>-1-5 <c af'>-1-4 <cs a'>-2-5  <d bf'>-1-4 <ds b'>-2-5
      <e c'>-1-4 |
  }
  <f df'>8-2-5) \ottava 0 r <af,, ef' af>4( <f af df f> <bf, df gf bf> |
  <df af' df>1)\fermata |
}

leftHand = \relative {
  \clef bass
  \global
  \scaleDurations 2/3 {
    af,,8-.\noBeam <c' af'>_2_5( <ef c'>_1_4  <af ef'>_1_2 <ef c'> <c af'>)
      df,-.\noBeam <df' af'>( <f df'> <df af'> <f df'> <df af'>) |
    af8-.\noBeam <c af'>( <ef c'> <af ef'> <ef c'> <c af'>)  df,-.\noBeam
      <df' af'>( <f df'> <df af'> <f df'> <df af'>) |
    ef,8-.\noBeam <ef' df'>( <bf' ef> <df g> <bf ef> <ef, df'>)  af,-.\noBeam
      <af' ef'>( <c af'>) df,-.\noBeam <f df'>( <af f'>) |
    ef8-.\noBeam <g ef'>( <bf g'> <ef bf'> <bf g'> <g ef'>  <c af'> <af f'>
      <bf gf'> <gf ef'> <af f'> <f df'>) |
    af,8-.\noBeam <c af'>( <ef c'>  <af ef'> <ef c'> <c af'>)  df,-.\noBeam
      <df' af'>( <f df'>  <df af'> <f df'> <df af'>) |
    af8-.\noBeam <c af'>( <ef c'>  <af ef'> <ef c'> <c af'>)  df,-.\noBeam
      <df' af'>( <f df'>  <df af'> <f df'> <df af'>) |
    gf,8-.\noBeam <gf' df'>( <bf ef>  <df gf> <bf ef> <gf df'>)  gf,-.\noBeam
      <gf' ef'>( <df' gf>  <ef bf'> <df gf> <gf, ef'>) |
    af,8-.\noBeam \clef treble <af' gf'>( <ef' af>  <gf c> <ef af> <af, gf'>)
      \clef bass df,-.\noBeam \clef treble <af' f'>( <df af'>  <f df'> <df af'>
      <af f'>) \clef bass |
      
    \barNumberCheck 9
    bf,8-.\noBeam <f' df'>( <bf f'>  <df bf'> <bf f'> <f df'>)  f,8-.\noBeam
      <f' c'>( <a f'>  <c a'> <a f'> <f c'>) |
    gf,8-.\noBeam <df' bf'>( <gf df'>  <bf gf'> <gf df'> <df bf'>)  d,-.\noBeam
      <d' af'>( <f cf'>  <af d> <f cf'> <d af'>) |
    ef,8-.\noBeam <ef' bf'>( <gf ef'>)  af,-.\noBeam <c af'>( <ef c'>)
      df,-.\noBeam <df' af'>( <f df'>)  bf,,-.\noBeam <bf' f'>( <df bf'>) |
    ef,8-.\noBeam <g ef'>( <bf g'>  <ef bf'> <bf g'> <g ef'>)  af,-.\noBeam
      r <af' af'>(  <c ef> <af af'> <c ef> |
    <af g'>8 <df ef> <af g'>  <df ef> <af g'> <df ef>  <af af'> <c ef> <af af'>
      <c ef> <af af'> <c ef> |
    <af g'>8 <df ef> <af g'>  <df ef> <af g'> <df ef>  <af af'> <c ef> <af af'>
      <c ef> <af af'> <c ef> |
    <af af'>8 <ef' gf> <af, af'>  <ef' gf> <af, af'> <ef' gf>  <af, af'> 
      <df ff> <af af'> <df ff> <af af'> <df ff> |
    <af af'>8 <ef' gf> <af, af'>  <ef' gf> <af, af'> <ef' gf>  <af, af'> 
      <df ff> <af af'> <df ff> <af af'> <df ff> |
      
    \barNumberCheck 17
    <af g'>8 <df ef> <af g'>  <df ef> <af g'> <df ef>  <af g'> <df ef> <af g'> 
      <df ef> <af g'> <df ef> |
    <af g'>8 <df ef> <af g'>  <df ef> <af g'> <df ef>  <af g'> <df ef> <af g'> 
      <df ef> <af g'> <df ef> |
    <af af'>8) r \clef treble <gf'' ef'>(  <af f'> <f df'> <gf ef'>  <ef c'>
      <f df'> <df bf'>  <ef c'> <c af'> <df bf'> \clef bass |
    <bf gf'>8 <c af'> <af f'>  <bf gf'> <gf ef'> <af f'>  <f df'> <gf ef'>
      <ef c'>  <f df'> <df bf'> <f df'>) |
    af,8-.\noBeam <c af'>( <ef c'>  <af ef'> <ef c'> <c af'>)  df,-.\noBeam
      <df' af'>( <f df'>  <df af'> <f df'> <df af'>) |
    af8-.\noBeam <c af'>( <ef c'>  <af ef'> <ef c'> <c af'>)  df,-.\noBeam
      <df' af'>( <f df'>  <df af'> <f df'> <df af'>) |
    bf8-.\noBeam <f' bf>( <af d>  <bf f'> <af d> <f bf>)  ef8-.\noBeam
      bf'( <gf ef'>)  df-.\noBeam df'( <af f'>) |
    gf8-.\noBeam df'( <bf gf'>)  f-.\noBeam \clef treble f'( <c a'>)
      bf-.\noBeam f'( <df bf'>)  bff-.-5\noBeam ef(-3 <df g>-4-2) |
  }
  
  \barNumberCheck 25
  <ef df'>4-3-1 r r \clef bass <bff,, bff'>( |
  <af af'>) \scaleDurations 2/3 { \clef treble <gf'''bf>8( <c, af'> <gf' bf>
    <c, af'> <gf' bf> <c, af'> <gf' bf> <c, af'> <ef c'> } |
  <gf ef'>8) r \clef bass \scaleDurations 2/3 { af,,8( <c af'>-2 <ef c'>-1 }
    <gf ef'>8) r r4 |
  \scaleDurations 2/3 {
    df,8-.\noBeam \clef treble <af'' f'>( <df af'>  <f df'> <df af'> <af f'>)
      \clef bass df,8-.\noBeam \clef treble <af' f'>( <df af'>  <f cf'> 
      <df af'> <af f'>) \clef bass |
    df,,8-.\noBeam <f' df'>( <af f'>  <df af'> <af f'> <f df'>)  gf,-.\noBeam
      <gf' df'>( <bf gf'>)  af,-.\noBeam <c af'>( <ef c'>) |
    df,8-.\noBeam <af' f'>( <df af'>  <f df'> <df af'> <af f'>)  df,-.\noBeam
      <af' f'>( <df af'>  <f cf'> <df af'> <af f'>) |
    df,8-.\noBeam <f df'>( <af f'>  <df af'> <af f'> <f df'>)  gf,-.\noBeam
      df''( <bf gf'>)  af,-.\noBeam af'( <ef c'>) |
  }
  <df df'>8 r r4 \scaleDurations 2/3 { <af' af'>8( <ef' gf> <af, af'>
       <ef' gf> <af, af'> <ef' gf> |
     <af, af'> <ef' gf> <af, af'>  <ef' gf> <af, af'> <ef' gf>  <af, af'> 
       <ef' gf> <af, af'>  <ef' gf> <af, af'> <ef' gf> |
     <af, af'> <ef' gf> <af, af'>  <ef' gf> <af, af'> <ef' gf>  <af, af'> 
       <ef' gf> <af, af'>  <ef' gf> <af, af'> <ef' gf> |
  }
  <df f>-.) r <af' c gf'>4( <df, af' df> <gf, df' gf> |
  <df af' f'>1)\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s1 * 6 |
  s2 s4..\< s16\! |
  s2 s4..\> s16\! |
  
  \barNumberCheck 9
  s1 * 4 |
  \repeat unfold 4 { s2\< s8. s16\! s8.\> s16\! | }
  
  \barNumberCheck 17
  s1\cresc |
  s1 |
  s2.\f s4\dim |
  s1 * 4 |
  s1\cresc
  
  \barNumberCheck 25
  s1 |
  s2...\> s16\! |
  s1\decresc
  s1 * 4 |
  \revert DynamicTextSpanner.style
  s4 s2.\cresc
  
  \barNumberCheck 33
  s1 |
  s2... s16\! |
  s4\f s2.\ff |
  s1 |
}

pedal = {
  s4..\sd s16\su  s4..\sd s16\su |
  s4..\sd s16\su  s4..\sd s16\su |
  s4..\sd s16\su  s8.\sd s16\su s8.\sd s16\su |
  s4..\sd s16\su  s2 |
  \repeat unfold 4 { s4..\sd s16\su  s4..\sd s16\su | }

  \barNumberCheck 9
  s4..\sd s16\su  s4..\sd s16\su |
  s4..\sd s16\su  s4..\sd s16\su |
  s8.\sd s16\su s8.\sd s16\su  s8.\sd s16\su s8.\sd s16\su |
  s4..\sd s16\su  s8\sd s\su s4 |
  s1 * 4 |
  
  \barNumberCheck 17
  s1 * 2 |
  s4..\sd s16\su s2 |
  s1 |
  s4..\sd s16\su  s4..\sd s16\su |
  s4..\sd s16\su  s4..\sd s16\su |
  s4..\sd s16\su  s8.\sd s16\su s8.\sd s16\su |
  s8.\sd s16\su s8.\sd s16\su s8.\sd s16\su s8.\sd s16\su |
  
  \barNumberCheck 25
  s2...\sd s16\su |
  s1\sd |
  s8 s\su s4\sd s4.. s16\su |
  s4..\sd s16\su  s4..\sd s16\su |
  s4..\sd s16\su  s8.\sd s16\su s8.\sd s16\su |
  s4..\sd s16\su  s4..\sd s16\su |
  s4..\sd s16\su  s8.\sd s16\su s8.\sd s16\su |
}

forceBreaks = {
  \repeat unfold 3 { s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\pageBreak
  
  \repeat unfold 4 { s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\pageBreak
  
  \repeat unfold 3 { s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\noBreak s1\pageBreak
  
  \repeat unfold 3 { s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\noBreak s1\bar "|."
}

etudeEightMusic = \score {
  \header {
    opus = "Opus 25, No 8"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 8" 
    \override Fingering.avoid-slur = #'inside
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeEightMidi = \book {
  \bookOutputName "etude-op25-no8"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
