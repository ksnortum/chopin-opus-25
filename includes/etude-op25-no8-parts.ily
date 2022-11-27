%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\include "global-variables.ily"

%%% Positions and shapes %%%



%%% Music %%%

global = {
  \time 4/4
  \key df \major
  \accidentalStyle piano
  \override Staff.Fingering.avoid-slur = #'inside
}

rightHand = \relative {
  \clef treble
  \global
  \tempo "Vivace legato" 2 = 69
  \tuplet 3/2 4 { <gf' ef'>8( <af f'> <gf ef'>  <af f'> <gf ef'> <af f'> 
    <f df'>8-1-3 <gf ef'>-1-4 <g e'>-1-5  <bf gf'>-2-5 <af f'>-1-4 
    <f df'>-1-3) | }
  \scaleDurations 2/3 {
    <af f'>8( <gf ef'> <af f'> <gf ef'> <af f'> <gf ef'>  <f df'>-1-3 
      <gf ef'>-1-4 <g e'>-1-5 <bf gf'>-2-5 <af f'> <f df'>-3) |
  }
}

leftHand = \relative {
  \clef bass
  \global
  \scaleDurations 2/3 {
    af,,8-.\noBeam <c' af'>_2_5( <ef c'>_1_4  <af ef'>_1_2 <ef c'> <c af'>)
      df,-.\noBeam <df' af'>( <f df'> <df af'> <f df'> <df af'>) |
    af-.\noBeam <c af'>( <ef c'> <af ef'> <ef c'> <c af'>)  df,-.\noBeam
      <df' af'>( <f df'> <df af'> <f df'> <df af'>) |
  }
  
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  
}

pedal = {
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
}

forceBreaks = {
  \repeat unfold 3 { s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\pageBreak
  
  
}

etudeEightMusic = \score {
  \header {
    opus = "Opus 25, No 8"
  }
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 20" } <<
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
