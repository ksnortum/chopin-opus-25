%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.1"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      )
                      \etc
slurShapeB = \shape #'(
                        ((0 . -1) (0 . 0.5) (0 . 0.5) (0 . -1.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      )
                      \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      )
                      \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (3 . 0))
                        ((0 . -0.25) (0 . 0.5) (0 . 0.5) (0 . 0))
                      )
                      \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (3 . 0))
                        ((0 . -1.5) (0 . 0.5) (0 . 0.25) (0 . -0.5))
                      )
                      \etc
slurShapeF = \shape #'(
                        ((0 . -1.25) (0 . 1.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      )
                      \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -3) (2 . 1.5) (0 . 1) (0 . 0))
                      )
                      \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (-2 . 1.5) (0 . -3))
                      )
                      \etc
                      
slurPositionA = \tweak positions #'(4 . 0) \etc
slurPositionB = \tweak positions #'(3 . 0) \etc

%%% Music %%%

global = {
  \time 2/2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  \key f \minor
  \accidentalStyle piano
}

rightHand = \relative c'' {
  \clef treble
  \global
  \override Fingering.avoid-slur = #'inside
  \tempo "Presto" 2 = 112

  \partial 4 c4(
  \tuplet 3/2 4 { c8-1 df b  c-1 ef df  c-1 df b  c-1 fs g } |
  \scaleDurations 2/3 {
    c,8 df b  c ef df  c df b  c af'-5 f-3 |
    e8-2 f-4 e  ds e-1 g  bf-3 c-5 bf  a-1 bf-2 df-4 |
    c8-3 df c  b c g  af-3 bf af  g af e-1) |
    f8-\slurShapeG (-3 g f  e f c-1  df-3 ef df  c df b-1 |
    c8-3 df c  b c g-1  af-3 bf af  g af f-2 |
    e8-1 g bf  df e-1 g  bf-3 df-5 c  bf af g-1 |
    bf8-3 c-5 af-2  g-1 af-3 f-1  e-2 g-4 f-3  e-2 f-4 df)-2 |
    
    \barNumberCheck 9
    c8-\slurShapeH (-1 df b  c-1 ef df  c-1 df b  c-1 fs g |
    c,8 df b  c ef df  c df b  c af'-5 f-3 |
    ef8-2 f ef  d ef g-1  bf-3 c-5 bf  a-1 bf-2 f'-5 |
    ef8-3 f-5 ef  d ef b-1  c-3 df c  b c g)-1 |
    af8-3( bf af  g af e-1  f-3 g f  e-2 f-4 df-2 |
    c8-1 df-4 bf-2  g-1 af bf  c-1 df ef  f-1 g af |
    g8-2 af f-1  ef-3 f df-2  c-1 df-4 bf-2  c-5 f,-1 g |
    af8-3 bf af  g-2 af-3 a-1  bf-3 c-5 bf  c f, g) |
    
    \barNumberCheck 17
    af8(-3 bf af  g-2 af-3 a-1  bf-3 c-5 bf  c f,-1 g |
    af8-3 bf af  g-1 af-2 bf-3  c-1 df-3 c-2  b-1 c df |
    c8-1 df-3 c-2  b-1 c df  c-1 df-3 c-2  df-3 c-1 df)-3 |
    c8-2-\slurShapeA ( df-3 b-1  c-2 ef-4 df-3  c-1 df b  c-1 fs g |
    c,8-1 df b  c-1 ef df  c-1 df b  c-1 af'-5 f-3 |
    e8-2 f-4 e  ds e-1 g  bf-3 c-5 bf  a-1 bf-2 df |
    c8-3 df c  b c g  af-3 bf af  g af e |
    f8-3 g f  e f c  df-3 ef df  c df b) |
    
    \barNumberCheck 25
    c8-\slurShapeB (-3 df c  b c g-1  af-3 bf af  g af f-2 |
    e8-1 g bf  df e-1 g  bf-3 df-5 c  bf af g-1 |
    bf8-3 c-5 af-2  g-1 af-3 f-1  e-2 g-4 f  e-2 f-4 df-2 |
    c8-1 df b  c ef df  c df b  c fs g) |
    c,8-\slurShapeC ( df b  c ef df  c df b  c af'-5 f-3 |
    ef8-2 f ef  d-1 ef g-1  bf-3 c-5 bf-3  a-1 bf-2 f'-5 |
    ef8-3 f-5 ef  d ef b-1  c-3 df c  b c g-1 |
    af-3 bf af  g af e-1  f-3 g f  e f df-2) |
    
    \barNumberCheck 33
    c8(-1 df-4 bf-2  g-1 af bf  c-1 df ef  f-1 g af |
    g8-2 af f-1  ef-3 f df  c-1 df-4 bf-2  c-5 f,-1 g-2 |
    af8-3 bf af  g-2 af-3 a-1  bf-3 c-5 bf  c-5 f,-1 g |
    af8 bf af  g af a  bf c bf  c f, g |
    af8 bf af  g-1 af-2 bf-3  c-1 df-4 c  b c-1 df) |
    \stemDown
    ef8-3( f-5 ef-3  f ef df   c-1 df-3 c-2  df g,-1 a |
    bf8-3 c-5 bf  a-2 bf-3 b-1  c-3 df c  df g,-1 a |
    bf8-3 c bf  a-2 bf-3 b-1  c-3 df c  df g, a |
    
    \barNumberCheck 41
    bf8-3 c bf-3  a-2 bf-3 c-1  d-3 ef d  cs d-1 ef) |
    f8-3( g f  g f ef  d-1 ef-3 d-2  ef a,-1 b |
    c8-3 df c  b-2 c-1 g'-2  af-3 bf af  g af e-1 |
    \stemNeutral
    f-2 g-3 f-1  ef-3 df c-1  bf-3 af g-1 f-2 g-3 af-4 |
    g-1 df'-4 c-3  b-2 c-1 g'-2  af-3 bf af  g af e-1)
    f-2( g-3 f-1  ef-3 df c  bf-3 af g-1 f-2 g af |
    g8-1 g'-5 f  e df c-1  bf-3 af g-1  f-2 g af |
    g8 g' f  e df c  bf af g  f g af |
    
    \barNumberCheck 49
    g8-1 df'-3 c  b-1 c df  c-1 df-3 c-2  b-1 c df |
    c-1 df-3 c-2  b-1 c df  c-1 df-3 c-2  df-3 c-1 df-3) |
    c8-\slurShapeD (-2 df b-1  c-2 ef-4 df-3  c-1 df b  c-1 fs g |
    c,8-1 df b c-1 ef df c-1 df b c-1 af'-5 f-3 |
    e8-2 f-4 e  ds e-1 g  bf-3 c-5 bf-3  a-1 bf-2 df-4 |
    c8-3 df c  b c g-1 af-3 bf af  g af e)-1 |
    f8(-3 g f  e f c-1  df-3 ef df  c df b-1 |
    c8-3 df c  b c g-1  af-3 bf af  g af f)-2 |
    
    \barNumberCheck 57
    e8(-1 g bf  df e-1 g  bf df) c-.(  bf-. af-. g-.) |
    bf8(-3 c-5 af-2  g-1 af-3 f-1  e-2 g-4 f-3  e-2 f-4 df)-2 |
    c8-\slurShapeE (-1 df b  c-1 ef df c-1 df b  c-1 fs g |
    c,8 df b  c ef df  c df b  c af'-5 f-3 |
    e8-2 f-4 e  ds e-1 g  bf-3 c-5 bf  a bf df |
    \ottava 1 c-1 af'-5 g-4  gf-3 f-2 e-1  \ottava 0 ef-3 d-1 df-3  
      c-2 cf-1 bf-4) |
    a-\slurShapeF (-3 af-2 g-1  f'-5 df-3 bf-2  g-1 f-5 df-3  bf-2 g-1 df'-3 |
    c8-2 df-3 b-1  c-4 af-2 bf-3  c-1 df-2 c-1  df-2 f-5 ef-3 |
    
    \barNumberCheck 65
    c8-1 df-4 bf-2  c-3 ef-5 df-4  bf-2 c af-1  bf df c) |
    f,8-\slurPositionA \( c'' bf  af g f  ef df c-1  bf-2 c-3 df-4 |
    c8-1 c' bf  af g f  ef df c  bf c \afterGrace { \acciaccatura { ef8 } df8 }
      { \slashFlag c8 } |
  }
  << 
    { \voiceOne c2 c4 c | c1\)\fermata | } 
    \new Voice { \voiceTwo <f, af>1~\arpeggio | q | } 
  >>
  \bar "|."
}

leftHand = \relative e {
  \clef bass
  \global
  
  \partial 4 r4
  \omit TupletBracket
  \tupletUp
  \tuplet 3/2 2 { e4(_5 g' c,)  bf(_3 g' c,) } |
  \scaleDurations 2/3 {
    f,4(_5 af' c,)  af(_4 af' c,) |
    \stemUp
    \clef treble g4( bf' e,)  df( bf' e,) |
    af,4( af' f)  c( af' f) |
    \stemNeutral
    \clef bass bf,,4( df' g,)  f( df' g,) |
    c,4( c' af)  f( c' af) |
    c,4( e' bf)  g( e' bf) |
    f4( f' c)  af( f' df) |
    
    \barNumberCheck 9
    e,4( g' c,)  bf( g' c,) |
    f,4(_5 af' c,)  af(_4 af' c,) |
    \stemUp
    \clef treble g4( bf' ef,)  df( bf' ef,) |
    af,4( af' ef)  c( af' ef) |
    \stemNeutral
    \clef bass df,4( f' bf,)  af( f' bf,) |
    ef,4( ef' c)  af( ef' c) |
    ef,4( ef' df)  g,( ef' df) |
    af,4( c' ef,)-3  ff(_>-2 df' ef,)-3 |
    
    \barNumberCheck 17
    af,4( c' ef,)-3  ff(_>-2 df' ef,)-3 |
    af,4( c' ef,)  c( g' bf |
  }
  e4) r r2 |
  \scaleDurations 2/3 {
    e,4( g' c,)  bf( g' c,) |
    f,4( af' c,)  af( af' c,) |
    \stemUp
    \clef treble g4( bf' e,)  df( bf' e,) |
    af,4( af' f)  c( af' f) |
    \stemNeutral
    \clef bass bf,,4( df' g,)  f( df' g,) |
    
    \barNumberCheck 25
    c,4( c' af)  f( c' af) |
    c,4( e' bf)  g( e' bf) |
    f4( f' c)  af( f' df) |
    e,4( g' c,)  bf( g' c,) |
    f,4( af' c,)  af( af' c,) |
    \stemUp
    \clef treble g4( bf' ef,)  df( bf' ef,) |
    af,4( af' ef)  c( af' ef) |
    \stemNeutral
    \clef bass df,4( f' bf,)  af( f' bf,) |
    
    \barNumberCheck 33
    ef,4( ef' c)  af( ef' c) |
    ef,4( ef' df)  g,( ef' df) |
    af,4( c' ef,)  ff->( df' ef,) |
    af,4( c' ef,)  ff->( df' ef,) |
    af,4( c' ef,)  gf,( ef'' bf) |
    gf4( ef' bf)  f( ef' a,) |
    bf,4( df' f,)  gf->( ef' f,) |
    bf,4( df' f,)  gf->( ef' f,) |
    
    \barNumberCheck 41
    bf,4( df' f,)  af,( c' f,) |
    d4( c' f,)  g,( b' f) |
    c4( e' bf)  af( f' c) |
    c,4( df' af)  f( df' af) |
    c,4( e' bf)  af( f' c) |
    c,4( df' af)  f( df' af) |
    c,4( e' g,) f( df' af) |
    c,4( e' g,) f( df' af) |
    
    \barNumberCheck 49
    c,4-\slurPositionB ( g' e')
  }
  r2 |
  R1 |
  \scaleDurations 2/3 {
    e,4( g' c,)  bf( g' c,) |
    f,4( af' c,)  af( af' c,) |
    \stemUp
    \clef treble g4( bf' e,)  df( bf' e,) |
    af,4( af' f)  c( af' f) |
    \stemNeutral
    \clef bass bf,,4( df' g,)  f( df' g,) |
    c,4( c' af)  f( c' af) |
    
    \barNumberCheck 57
    c,4( e' bf)  g( e' bf) |
    f4( f' c)  af( f' df) |
    e,4( g' c,)  bf( g' c,) |
    f,4( af' c,)  af( af' c,) |
    \stemUp
    \clef treble g4( bf' e,)  df( bf' e,) |
    af,4( af' f)  c( af' f) |
    \stemNeutral
    \clef bass bf,,4( df' g,)  f( df' g,) |
    c,4( f' c)  af( f' df) |
    
    \barNumberCheck 65
    c,4( ef' g,)  f( df' e,) |
    f4( af' c,)-2  bf(-3 g' df) |
    f,4( af' c,)  bf( g' df) |
  }
  <f, c'>1~\arpeggio |
  q\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 \tag layout { s4-\tweak X-offset -4 ^\pMoltoLegato }
             \tag midi   { s4\p }
  s1 * 2 |
  s2...\< s16\! |
  s2...\> s16\! |
  s1 * 2 |
  s4 s2\< s8. s16\! |
  s2...\> s16\! |
  
  \barNumberCheck 9
  s1 * 2 |
  s2...\< s16\! |
  s2 s4..\> s16\! |
  s2\> s8. s16\! s4 |
  s2 s4..\< s16\! |
  s2\> s8. s16\! s4 |
  s1 |
  
  \barNumberCheck 17
  s1 * 2 |
  s2 s^\dimMarkup |
  s1 * 2 |
  s2...\< s16\! |
  s4 s2.\> |
  s2... s16\! |
  
  \barNumberCheck 25
  s1 |
  s2...\< s16\! |
  s2...\> s16\! |
  s1 * 2 |
  s1\< |
  s8. s16\! s4 s2\> |
  s2... s16\! |
  
  \barNumberCheck 33
  s1 |
  s2\> s8. s16\! s4 |
  s1 |
  \pocoAPocoCresc s1\startTextSpan |
  s2 s8. s16\stopTextSpan s8.\< s16\! |
  s4 s2\> s8. s16\! |
  s2 s\cresc |
  s2... s16\! |
  
  \barNumberCheck 41
  s4 s2\< s8. s16\! |
  s4 s2\> s8. s16\! |
  s2.\f s4\> |
  s2... s16\! |
  s1\p |
  s1 |
  s2. s4^\smorz |
  s1 | 
  
  \barNumberCheck 49
  s2 s\< |
  s8. s16\! s2\> s8. s16\! |
  \tag layout { s1^\sempreP | }
  \tag midi   { s1\p | }
  s1 | 
  s2...\< s16\! |
  s4 s2\> s8. s16\! |
  s2...\> s16\! |
  s1 |
  
  \barNumberCheck 57
  s2\< s8. s16\! s4 |
  s2...\> s16\! |
  s1 * 2 |
  s2...\< s16\! |
  s1 |
  s4 s2\> s8. s16\! |
  s1 |
  
  \barNumberCheck 65
  s1 |
  s2. s4^\dimMarkup |
  s1 |
  s1-\tweak X-offset 0.25 \pp |
}

pedal = {
  \partial 4 s4
  s1 * 4 |
  s4..\sd s16\su s2 |
  s1 |
  s2...\sd s16\su |
  s1 |
  
  \barNumberCheck 9
  s1 * 2 |
  s2...\sd s16\su |
  s2...\sd \override SustainPedal.Y-offset = 2 s16\su |
  s2...\sd s16\su |
  \revert SustainPedal.Y-offset
  s1 * 2 |
  s4..\sd s16\su s2 |
  
  \barNumberCheck 17
  s4..\sd s16\su s2 |
  s2\sd s\su\sd |
  s16 s\su s8 s2. |
  s1 * 4 |
  s2\sd s16 s8.\su s4 |
  
  \barNumberCheck 25
  s1 |
  s2\sd s8 s4.\su |
  s1 * 3 |
  s2...\sd s16\su |
  s1 |
  s2...\sd s16\su |
  
  \barNumberCheck 33
  s1 * 2 |
  s4\sd s8 s\su s2 |
  s4\sd s8 s\su s2 |
  s2 s\sd |
  s4. s8\su s2 |
  s4\sd s8 s\su s2 |
  s4\sd s8 s\su s2 |
  
  \barNumberCheck 41
  \repeat unfold 3 { s4\sd s8 s\su s4\sd s8 s\su | }
  s1 * 3 |
  s2\sd s\su |
  s2\sd s\su |
  
  \barNumberCheck 49
  s2\sd s\su |
  s1 * 5 |
  s4\sd s8 s\su s2 |
  s1 |
  
  \barNumberCheck 57
  s2\sd s8 s\su s4 |
  s1 * 3 |
  s2\sd s\su |
  s2...\sd \override SustainPedal.Y-offset = 2 s16\su |
  s2...\sd s16\su |
  s2\sd s\su |
  \revert SustainPedal.Y-offset
  
  \barNumberCheck 65
  s2...\sd s16\su |
  s4\sd s8 s\su s2 |
  s4\sd s8 s\su s2 |
  s1\sd |
  s2 s\su |
}

forceBreaks = {
  \partial 4 s4\noBreak
  \repeat unfold 5 { s1\noBreak s1\noBreak s1\break } \pageBreak
  \barNumberCheck 16
  \repeat unfold 5 { s1\noBreak s1\noBreak s1\break } \pageBreak
  \barNumberCheck 31
  \repeat unfold 6 { s1\noBreak s1\noBreak s1\break } \pageBreak
  \barNumberCheck 49
  \repeat unfold 3 { s1\noBreak s1\noBreak s1\noBreak s1\break }
  s1\noBreak s1\noBreak s1\noBreak s1\break\noPageBreak
  \barNumberCheck 65
  s1\noBreak s1\noBreak s1\noBreak s1\noBreak s1\pageBreak
}

etudeTwoHeader = \header {
  title = "Twelve Etudes"
  composer = "Frédéric Chopin (1810-1849)"
  opus = "Opus 25, No 2"
}

etudeTwoMusic = \score {
  \header {
      opus = "Opus 25, No 2"
  }
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 2" } <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeTwoMidi = \book {
  \bookOutputName "etude-op25-no2"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
