%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.1"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 1.5) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 1.5) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((1.5 . 2) (0.75 . 1) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 1.5) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((1.5 . 2) (0.75 . 1) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'((0 . 1.5) (0 . 1) (0 . 0.25) (0 . 0.25)) \etc
slurShapeG = \shape #'((1.5 . 2) (0.75 . 1) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'((0 . 1.5) (0 . 0.75) (0 . 0.25) (0 . 0)) \etc
slurShapeI = \shape #'((0 . 1.5) (0 . 0.75) (0 . 0.25) (0 . 0)) \etc
slurShapeJ = \shape #'((0 . 1.5) (0 . 0.75) (0 . 0.25) (0 . 0)) \etc
slurShapeK = \shape #'((0 . 2.5) (0.25 . 0.25) (0 . -0.25) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 1.5) (0 . 0.75) (0 . 0.25) (0 . 0)) \etc
slurShapeM = \shape #'((0 . 1) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeN = \shape #'((0 . 0.75) (0 . 0.25) (0 . 0) (0 . 0)) \etc
slurShapeO = \shape #'((0 . 2.25) (0.25 . 0.75) (0 . -0.5) (0 . 0)) \etc
slurShapeP = \shape #'((1.5 . 2) (1.5 . 1.5) (0 . 1) (0 . 0)) \etc
slurShapeQ = \shape #'((0 . 1.5) (0 . 1.25) (0 . 0.25) (0 . 0)) \etc
slurShapeR = \shape #'((1.5 . 3) (1.5 . 2) (0 . 1) (0 . 0)) \etc
slurShapeS = \shape #'((1.5 . 3) (1.5 . 2) (0 . 1) (0 . 0)) \etc
slurShapeT = \shape #'((0 . 1) (0 . 0.25) (0 . 0) (0 . 0)) \etc
slurShapeU = \shape #'((0 . 1.5) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeV = \shape #'((0 . 1.25) (0 . 0.25) (0 . 0) (0 . 0)) \etc
slurShapeW = \shape #'((0 . -1) (0 . -0.5) (0 . 0) (0 . 0.25)) \etc
slurShapeX = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0.25)) \etc
slurShapeY = \shape #'((0 . 2) (0 . 2.5) (0 . 1) (0 . 0)) \etc
slurShapeZ = \shape #'((0 . 1.5) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeAA = \shape #'((0 . 0.75) (0 . 1.5) (0 . 1) (0 . 0)) \etc
slurShapeAB = \shape #'((0 . 0.75) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeAC = \shape #'((0 . 1) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeAD = \shape #'((1.5 . 2.25) (1 . 1.25) (0 . 0.5) (0 . 0)) \etc
slurShapeAF = \shape #'((1.5 . 2.25) (1 . 1.25) (0 . 0.5) (0 . 0)) \etc
slurShapeAG = \shape #'((1.5 . 3) (1 . 2) (0 . 0.75) (0 . 0)) \etc
slurShapeAH = \shape #'((1.5 . 2.25) (1 . 1.25) (0 . 0.5) (0 . 0)) \etc
slurShapeAI = \shape #'((1.5 . 3) (1 . 2) (0 . 0.75) (0 . 0)) \etc
slurShapeAJ = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeAK = \shape #'((0 . 2) (0.5 . 1) (0 . 0) (0 . 0)) \etc
slurShapeAL = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeAM = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeAN = \shape #'((0 . 1.5) (0 . 1) (0 . 0.75) (0 . 0.25)) \etc
slurShapeAO = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeAP = \shape #'((0 . 1.5) (0 . 1) (0 . 0.75) (0 . 0.25)) \etc
slurShapeAQ = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeAR = \shape #'((0 . 1.5) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeAS = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeAT = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeAU = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeAV = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeAW = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeAX = \shape #'((0 . 1.5) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeAY = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeAZ = \shape #'((0 . 1) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeBA = \shape #'((0 . 1) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeBB = \shape #'((0 . 1) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeBC = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeBD = \shape #'((0 . 1) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeBE = \shape #'((0 . 1) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeBF = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeBG = \shape #'((0 . 1) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeBH = \shape #'((0 . 1) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeBI = \shape #'((0 . 1.5) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeBJ = \shape #'((0 . 2) (0.5 . 1) (0 . 0) (0 . 0)) \etc
slurShapeBK = \shape #'((0 . 1) (0 . 0.75) (0 . 1) (0 . 0.25)) \etc
slurShapeBL = \shape #'((0 . 1) (0 . 0.5) (0 . 0.25) (0 . 0)) \etc
slurShapeBM = \shape #'((0 . 1) (0 . 0.5) (0 . 0.25) (0 . 0)) \etc
slurShapeBN = \shape #'((0 . 1) (0 . 0.5) (0 . 0.25) (0 . 0)) \etc
slurShapeBO = \shape #'((0 . 1) (0 . 0.5) (0 . 0.25) (0 . 0)) \etc
slurShapeBP = \shape #'((0 . 1) (0 . 0.5) (0 . 0.25) (0 . 0)) \etc
slurShapeBQ = \shape #'((0 . 1) (0 . 0.5) (0 . 0.25) (0 . 0)) \etc
slurShapeBR = \shape #'((1.5 . 3) (1.75 . 2) (0.25 . 0.75) (0 . 0)) \etc
slurShapeBS = \shape #'((1.5 . 3) (1.75 . 2) (0.25 . 0.75) (0 . 0)) \etc
slurShapeBT = \shape #'((1.5 . 3) (1.75 . 2) (0.25 . 0.75) (0 . 0)) \etc
slurShapeBU = \shape #'((1.5 . 2.5) (2 . 2) (0.25 . 0.75) (0 . 0)) \etc
slurShapeBV = \shape #'((1.5 . 3) (1.75 . 2) (0.25 . 0.75) (0 . 0)) \etc
slurShapeBW = \shape #'((1.5 . 3) (1.75 . 2) (0.25 . 0.75) (0 . 0)) \etc
slurShapeBX = \shape #'((1.5 . 3) (1.75 . 2) (0.25 . 0.75) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 2/4
  \key gf \major
  \accidentalStyle piano
  \override Staff.Fingering.avoid-slur = #'inside
}

rightHandUpper = \relative {
  \voiceOne
  bf'8 s df s |
  gf,8 s bf s |
  ef,8 s gf s |
  af8 s af s |
  bf'8 s df, s |
  gf8-2-3 s bf, s |
  ef8-3 s gf, s |
  af8 s gf s |
  
  \barNumberCheck 9
  af8 s af s |
  ef'8 s e\noBeam f |
  ef8 s af, s |
  bf8 s e,\noBeam f |
  f'8-2-5 s af, s |
  df'8-2-4 s e,\noBeam f |
  ef'8 s af,, s |
  c8 s df s |
  
  \barNumberCheck 17
  df8 s df s |
  cf8 s cf s |
  gf8 s af s |
  f8 s af\noBeam df |
  df''8 s df s |
  cf8 s cf s |
  gf8 s af, s |
  gf8-> s eff s |
  
  \barNumberCheck 25
  bf8 s df s |
  gf,8 s bf s |
  ef,8 s gf s |
  af8 s af s |
  bf8 s df s |
  cf8 s ef s |
  ef8 s gf s |
  af8 s bff s |
  
  \barNumberCheck 33
  bf8^\appassionato s bf s |
  af8 s gf s |
  ef8 s df s |
  cf8 s bff->\noBeam af |
  s4 af8^\aTempo s |
  df8 s af s |
  df,8 s af' s |
  df8 s af s |
  
  \barNumberCheck 41
  s4 af''8 s |
  df8 s af s |
  df,8 s af' s |
  df8 s af s |
  
}

rightHandLower = \relative {
  \voiceTwo \slurUp
  bf'16( <gf' bf>^2^4 <cf, cf'>^.)^1^5 <c c'>^.  df( <af' df>^2^4 
    <ef ef'>-.)^1^5 <df df'>^. |
  gf,16( <ef' gf>^3 <af, af'>^.)^4 <a a'>^5  bf( <f' bf>^4 <cf cf'>^.) 
    <bf bf'>^. |
  ef,16( <cf' ef>^3 <e, e'>^.)^4 <f f'>^.^5  gf( <df' gf>^4 <f, f'>^.)^5
    <gf gf'>^. |
  af16\slurShapeA ( <ef' af> <bf bf'>^.) <af af'>^.  af\slurShapeB ( <f' af>
    <bf, bf'>^.) <cf cf'>^. |
  gf'16\slurShapeC ( bf, <cf cf'>^.) <c c'>^.  df\slurShapeD ( <af' df> 
    <ef ef'>^.) <df df'>^. |
  ef16\slurShapeE ( gf, <af af'>^.) <a a'>^.  bf\slurShapeF ( <f' bf> 
    <cf cf'>^.) <bf bf'>^. |
  cf16\slurShapeG ( ef, <e e'>^.)^4 <f f'>^.^5  gf\slurShapeH ( <df' gf> 
    <f, f'>^.) <gf gf'>^. |
  af16\slurShapeI ( <gf' af> <bf, f' bf>^.) <af af'>^.  gf\slurShapeJ ( 
    <df' gf> <f, f'>^.) <gf gf'>^. |
  
  \barNumberCheck 9
  af16( <f' af>^4 <bf, bf'>^.)^5 <af af'>^.  af( <gf' af>^3 <c, c'>^.)^5 
    <df df'>^. |
  ef16( <af ef'> <d, d'>^.) <ef ef'>^.  e\slurShapeK ( <af e'> f <af f'>) |
  ef16\slurShapeL ( <bf' ef> <df, df'>^.) <bf bf'>^.  af\slurShapeM ( <df af'>
    <g, g'>^.) <af af'>^. |
  bf16\slurShapeN ( <c bf'> <af af'>^.) <gf gf'>^.  e\slurShapeO ( <df' e> f,
    <df' f>) |
  df16\slurShapeP ( f, <gf gf'>^.) <g g'>^.  af\slurShapeQ ( <ef' af> 
    <bf bf'>^.) <c c'>^. |
  g'16\slurShapeR ( df <ef ef'>^.) <e e'>^.  e( <af e'> f <af f'>) |
  bf16\slurShapeS ( ef, <df df'>^.) <bf bf'>^.  af\slurShapeT ( <df af'>
    <g, g'>^.) <af af'>^. |
  c16\slurShapeU ( <gf' c> <bf, bf'>^.) <af af'>^.  df\slurShapeV ( <f df'>
    <c c'>^.) <df df'>^. |
  
  \barNumberCheck 17
  df16\slurShapeW ( <bf'df>^3 <ff ff'>^.)^5 <ef ef'>^.  df\slurShapeX ( 
    <af' df>^4 <cf, cf'>^.)^5 <bf bf'>^. |
  cf16\slurShapeY ( <f cf'> <eff eff'>^.) <df df'>^.  cf\slurShapeZ ( <gf' cf>
    <bff, bff'>^.) <af af'>^. |
  gf16\slurShapeAA ( <ef'gf> <bff bff'>^.) <af af'>^.  af\slurShapeAB( <ef' af>
    <g, g'>^.) <gf gf'>^. |
  f16( <df' f>^2^5 <gf, gf'>^.)^4 <g g'>  af\slurShapeAC ( <df af'> df 
    <af' df>)
  \ottava 1 bf'16\slurShapeAD ( df, <ff ff'>^.) <ef ef'>^.  af\slurShapeAF ( 
    df, <cf cf'>^.) <bf bf'>^. |
  f'16\slurShapeAG ( cf <eff eff'>^.) <df df'>^.  gf\slurShapeAH ( cf, 
    <bff bff'>^.) <af af'>^. |
  ef'16\slurShapeAI ( gf, <bff bff'>^.) <af af'>^.  af\slurShapeAJ ( <ef' af>
    <aff, aff'>^.) <gf gf'>^. |
  \ottava 0 gf16\slurShapeAK ( <cf gf'> <f, f'>^.) <ef ef'>^.  
    eff\slurShapeAL ( <af eff'> <df, df'>^.) <cf cf'>^. |
    
  \barNumberCheck 25
  bf16\slurShapeAM ( <gf' bf> <cf, cf'>^.) <c c'>^.  df\slurShapeAN ( <af' df>
    <ef ef'>^.) <df df'>^. |
  gf,16\slurShapeAO ( <ef' gf> <af, af'>^.) <a a'>^.  bf\slurShapeAP ( <f' bf>
    <cf cf'>^.) <bf bf'>^. |
  ef,16\slurShapeAQ ( <cf' ef> <e, e'>^.) <f f'>^.  gf\slurShapeAR ( <df' gf>
    <f, f'>^.) <gf gf'>^. |
  af16\slurShapeAS ( <gf' af> <bf, bf'>^.) <af af'>^.  af\slurShapeAT ( <f' af>
    <bf, bf'>^.) <cf cf'>^. |
  bf16\slurShapeAU ( <gf' bf> <cf, cf'>^.) <c c'>^.  df\slurShapeAV ( <af' df>
    <ef ef'>^.) <df df'>^. |
  cf16\slurShapeAW ( <af' cf> <df, df'>^.) <d d'>^.  ef\slurShapeAX ( <bf' ef>
    <ff ff'>^.) <ef ef'>^. |
  \ottava 1 ef16\slurShapeAY ( <cf' ef> <e, e'>^.) <f f'>^.  gf\slurShapeAZ (
    <df' gf> <f, f'>^.) <gf gf'>^. |
  af16\slurShapeBA ( <ef' gf af> <g, g'>^.) <af af'>^.  bff\slurShapeBB ( 
    <ef gf bff> <af, af'>^.) <bff bff'>^. |
    
  \barNumberCheck 33
  bf16\slurShapeBC ( <gf' bf> <cf, cf'>^.) <bf bf'>^.  bf\slurShapeBD ( <f' bf>
    <bff, bff'>^.) <af af'>^. |
  af16\slurShapeBE ( <ef' af> <aff, aff'>^.) <gf gf'>^.  gf\slurShapeBF ( 
    <bff gf'> <f f'>^.) <ef ef'>^. |
  \ottava 0 ef16\slurShapeBG ( <af ef'> <eff eff'>^.) <df df'>^.
    df\slurShapeBH ( <af' df> <dff, dff'>^.) <cf cf'>^. |
  cf16\slurShapeBI ( <eff cf'> <bf bf'>^.) <bff bff'>^.   bff\slurShapeBJ ( 
    <c bff'> af <df~ af'> |
  <gf, df' gf>4)  af16\slurShapeBK ( <df af'> <bf bf'>^.) <cf cf'>^. |
  df16\slurShapeBL ( <gf df'> <ef ef'>^.) <df df'>^.  af\slurShapeBM ( <df af'>
    <bf bf'>^.) <af af'>^. |
  df,16\slurShapeBN ( <bf' df> <f f'>^.) <gf gf'>^.  af\slurShapeBO ( <df af'>
    <bf bf'>^.) <cf cf'>^. |
  df16\slurShapeBP ( <gf df'> <ef ef'>^.) <df df'>^.  af\slurShapeBQ ( <df af'>
    <bf bf'>^.) <af af'>^. |
  
  \barNumberCheck 41
  <gf gf'>8^. bf\rest \ottava 1 df'16\slurShapeBR ( af <bf bf'>^.) <cf cf'>^. |
  gf'16\slurShapeBS ( df <ef ef'>^.) <df df'>^.  df\slurShapeBT ( af 
    <bf bf'>^.) <af af'>^. |
  bf16\slurShapeBU ( df, <f f'>^.) <gf gf'>^.  df'16\slurShapeBV ( af 
    <bf bf'>^.) <cf cf'>^. |
  gf'16\slurShapeBW ( df <ef ef'>^.) <df df'>^.  df\slurShapeBX ( af 
    <bf bf'>^.) <af af'>^. |
  \oneVoice
  gf( gf'-3 <ef cf'>-2-5 <df bf'>-1-4) bf(-1 gf'-3 <ef cf'>-2-5 <df bf'>-1-4) |
  bf(-1 gf' <ef cf'> <df bf'>)
  \repeat unfold 5 { bf( gf' <ef cf'> <df bf'>) }
  
  \barNumberCheck 49
  <bf gf'>8-. \ottava 0 r r4 |
  r4 bf,,16( gf' <ef cf'> <df bf'> |
  <bf gf'>8-.) r r4 |
  \bar "|."
}

rightHand = <<
  \clef treble
  \global
  \tempo "Allegro vivace" 4 = 112
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  \mergeDifferentlyDottedOn
  gf8-. <bf df gf>-. f-. <af df af'>-. |
  ef8-. <gf bf ef>-. df-. <f bf f'>-. |
  cf8-. <gf' cf>-. bf,-. <df gf df'>-. |
  c8-. <gf' af ef'>-. df-. <af' cf df>-. |
  gf8-. <bf gf'>-. f-. <af df af'>-. |
  ef8-. <gf bf ef>-. df-. <f bf f'>-. |
  cf8-. <gf' cf>-. bf, <df gf df'>-. |
  <c gf' ef'>(\arpeggio <df af' cf f>\arpeggio <gf bf>) r |
  
  \barNumberCheck 9
  df8-. <af' df f>-. c,-. <af' ef' gf>-. |
  af,8-. <af' c gf'>-. df,-. <af' df f>-. |
  g,8-. <e' bf' df>-. af,-. <f' af df>-. |
  af,8-. <ef' af c>-. df-. <af' df>-. |
  df,8-. <af' df>-. c,-. <af' ef'>-. |
  bf,8-. <bf' df g>-. af,-. <af' df af'>-. |
  <g, g'>-. <df'' ef bf'>-. af,-. <f' af df>-. |
  \stemDown af,,8-. <ef'' gf c>-. df,-. <af'' df f>-. |
  
  \barNumberCheck 17
  \stemNeutral df,8-. <bf' g'> df,-. <cf' af'>-. |
  df,8-. <af' f'>-. df,-. <bff' gf'>-. |
  \stemDown df,,8-. <ef' c'>-. df,-. <ef' c'>-. |
  \stemNeutral df,8-. <f' df'>-. df-. <af' f'>-. |
  df,8-. <bf' g'>-. df,-. <cf' af'>-. |
  df,8-. <af' f'>-. df,-. <bff' gf'>-. |
  df,,8-. <bff'' c gf'>-. df,-. <af' c gf'>-. |
  df,8-. <af' cf gf'>-. df,-. <af' cf f>-. |
  
  \barNumberCheck 25
  <gf, gf'>8-. <bf' df gf>-. <f, f'>-. <af' df af'>-. |
  <ef, ef'>8-. <gf' bf ef>-. <df, df'>-. <f' bf f'>-. |
  \stemDown <cf, cf'>8-. <ef' gf cf>-. <bf, bf'>-. <df' gf df'>-. |
  \stemNeutral <c, c'>8-. <gf'' af ef'>-. <df, df'>-. <af'' cf f>-. |
  <gf, gf'>8-. <bf' df gf>-. <f, f'>-. <af' df af'>-. |
  <af, af'>8-. <cf' ef af>-. <g, g'>-. <bf' ef bf'>-. |
  <cf, cf'>8-. \clef treble <ef'! gf cf>-. \clef bass <bf, bf'>-. \clef treble
    \once \omit Accidental <df' gf df'>-. |
  \clef bass <c, c'>-. \clef treble <gf'' ef'>-. r \clef bass <c,,, c'>( |
  
  \barNumberCheck 33
  <df df'>8-.) <bf'' gf'>-. <d,, d'>-. <bf'' f'>-. |
  <ef,, ef'>8-. <bf'' gf'>-. <c,, c'>-. <bff'' ef gf>-. |
  <df,, df'>8-. <af'' df gf>-. r4 |
  \once \override Beam.auto-knee-gap = 4
  <df,,, df'>8-. <af''' cf f>-. r4 |
  << { s8 df,4. } \\ { gf,,8 df'' <f cf'>^. gf,^. } >> |
  \repeat unfold 3 { <df' gf bf>-. gf,-. <df' f cf'>-. gf,-. | }
  
  \barNumberCheck 41
  \repeat unfold 4 { <df' gf bf>-. gf,-. <df' f cf'>-. gf,-. | }
  <df' bf'>8-.\noBeam gf,,-.[ df''-. <gf df'>-.]_2_5 \clef treble |
  <bf gf'>8-.-3-1 <df bf'>-.-5-2_\leggierissimo <gf df'>-.-3-1 <bf gf'>-.-2-1 |
  <gf df'>8-.-3-1 <df bf'>-.-5-2 \clef bass <gf, gf'>-. <df df'>-. |
  <gf, gf'>8-. <df df'>-. <gf, gf'>-. <df df'>-. |
  
  \barNumberCheck 49
  <gf gf'>-. <df df'>-. <gf gf'>-. <df df'>-. |
  <gf gf'>-. <df df'>-. <gf gf'>-. <df' df'>-. |
  <gf gf'>8-. r r4 |

}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  s2^\leggiero
  s2 * 7 |
  
  \barNumberCheck 9
  s2\< |
  s4.. s16\! |
  s2 * 2 |
  s2\< |
  s4.. s16\! |
  s2 |
  s4..\> s16\! |
  
  \barNumberCheck 17
  s2\p |
  s2 * 7 |
  
  \barNumberCheck 25
  \tag layout { s2^\fMarc | }
  \tag midi   { s2\f | }
  s2 * 3 |
  s4 s\cresc |
  s2 * 3|
  
  \barNumberCheck 33
  s2\ff |
  s2 * 2 |
  \tag layout { s2^\riten | s4 s\p | }
  \tag midi   { \tempo 4 = 100 s2 | \tempo 4 = 88 s4 \tempo 4 = 112 s | }
  s2 * 3 |
  
  \barNumberCheck 41
  s2 * 5 |
  s2\dim |
  s2 * 2 |
  
  \barNumberCheck 49
  s2 |
  s4 s\pp |
  s2 |
}

pedal = {
  \repeat unfold 7 { s8\sd s\su s\sd s\su | }
  s16\sd s\su s\sd s\su s4 |
  
  \barNumberCheck 9
  \repeat unfold 4 { s8\sd s\su s\sd s\su | }
  \override SustainPedal.Y-offset = 2
  s8\sd s\su s\sd s\su |
  s8\sd s\su s\sd s\su |
  s8\sd s\su s\sd s\su |
  \revert SustainPedal.Y-offset
  s8\sd s\su s\sd s\su |
  
  \barNumberCheck 17
  \override SustainPedal.Y-offset = 2
  s8\sd s\su s\sd s\su |
  s8\sd s\su s\sd s\su |
  \revert SustainPedal.Y-offset
  s8\sd s\su s\sd s\su |
  s8\sd s\su s\sd s\su |
  \override SustainPedal.Y-offset = 1.5
  s8\sd s\su s\sd s\su |
  s8\sd s\su s\sd s\su |
  s8\tweak Y-offset -1.5 \sd s\su s\sd s\su |
  s8\sd s\su s\sd s\su |
  
  \barNumberCheck 25
  s8\sd s\su s\sd s\su |
  s8\sd s\su s\sd s\su |
  \revert SustainPedal.Y-offset
  \repeat unfold 6 { s8\sd s\su s\sd s\su | }
  
  \barNumberCheck 33
  s8\sd s\su s\sd s\su |
  s8\sd s\su s\sd s\su | 
  s8\sd s\su s4 |
  s8\sd s\su s4 |
  s8\sd s\su \override SustainPedal.Y-offset = 2 s\sd s\su |
  \repeat unfold 3 { s8\sd s\su s\sd s\su | }
  
  \barNumberCheck 41
  \repeat unfold 4 { s8\sd s\su s\sd s\su | }
  \revert SustainPedal.Y-offset
  s8 s4.\sd |
  s2 * 3 |
  
  \barNumberCheck 49
  s2\su |
  s2 * 2 |
}

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

etudeNineMusic = \score {
  \header {
    opus = "Opus 25, No 9"
  }
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 9" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeNineMidi = \book {
  \bookOutputName "etude-op25-no9"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
