%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

\include "global-variables.ily"

%%% Positions and shapes %%%


%%% Music %%%

global = {
  \time 2/2
  \key b \minor
  \accidentalStyle piano
  \override Staff.Fingering.avoid-slur = #'inside
  \set beatStructure = #'(4 4 4 4)
  \set Timing.beamExceptions = #'()
}

rightHandUpper = \relative {
  \oneVoice
  \scaleDurations 2/3 {
    <fs fs'>8(-4 <es es'>-5 <fs fs'>-4  <g g'> <gs gs'> <a a'>  <gs gs'> 
      <fss fss'> <gs gs'>  <a a'> <as as'> <b b'> |
  }
}

rightHandLower = \relative {
  \voiceTwo 
  
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
    <fs,, fs'>8 <es es'> <fs fs'>
  }
}

leftHandLower = \relative {
  \voiceTwo
  
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
  
}

pedal = {
  
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
