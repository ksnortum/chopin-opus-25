%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.1"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveDynamicsA = \tweak X-offset -1 \etc
moveDynamicsB = \tweak X-offset -0.75 \etc
moveDynamicsC = \tweak X-offset -1 \etc

moveFingeringA = \tweak Y-offset 13.25 \etc

moveNoteColumn.05 = \once \override NoteColumn.force-hshift = 0.5
moveNoteColumnNeg.05 = \once \override NoteColumn.force-hshift = -0.5
moveNoteColumnNeg.075 = \once \override NoteColumn.force-hshift = -0.75
moveNoteColumnNeg.1 = \once \override NoteColumn.force-hshift = -1

stemLengthNeg.05 = \offset Stem.length -0.5 \etc

slurShapeA = \shape #'((0 . 0) (0 . 3) (0 . -10) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 3) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 3) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 1) (0 . -2) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 3) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 2) (0 . 0) (3.5 . 0)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 1) (0 . -10) (0 . 0)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 3) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 3) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 0) (0 . 0) (1.5 . 0)) \etc
slurShapeK = \shape #'((0 . 0) (0 . 3) (0 . 0) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0) (0 . 3) (0 . 0) (0 . 0)) \etc

beamDamping.4 = \once \override Beam.damping = 4
beamDamping.35 = \once \override Beam.damping = 3.5
beamDamping.3 = \once \override Beam.damping = 3
beamDamping.2 = \once \override Beam.damping = 2
beamDamping.1 = \once \override Beam.damping = 1
beamPositionsA = \once \override Beam.positions = #'(-2 . -1)
beamPositionsB = \once \override Beam.positions = #'(-2 . -1)
beamPositionsC = \once \override Beam.positions = #'(-6 . -4)
beamPositionsD = \once \override Beam.positions = #'(-6 . -4)
beamPositionsE = \once \override Beam.positions = #'(11 . 12)
beamPositionsF = \once \override Beam.positions = #'(12 . 13)
beamPositionsG = \once \override Beam.positions = #'(-2 . -1)
beamPositionsH = \once \override Beam.positions = #'(6 . 7)
beamPositionsI = \once \override Beam.positions = #'(5 . 6)
beamPositionsJ = \once \override Beam.positions = #'(-2 . -1)
beamPositionsK = \once \override Beam.positions = #'(1.5 . 0.5)
beamPositionsL = \once \override Beam.positions = #'(-3.5 . -1.5)
beamPositionsM = \once \override Beam.positions = #'(-2 . -4)
beamPositionsN = \once \override Beam.positions = #'(-2 . -1)
beamPositionsO = \once \override Beam.positions = #'(5 . 6)
beamPositionsP = \once \override Beam.positions = #'(5 . 6)
beamPositionsQ = \once \override Beam.positions = #'(4.5 . 5.5)
beamPositionsR = \once \override Beam.positions = #'(-2.5 . -1.5)
beamPositionsS = \once \override Beam.positions = #'(-2.5 . -1.5)
beamPositionsT = \once \override Beam.positions = #'(-2.5 . -1.5)
beamPositionsU = \once \override Beam.positions = #'(-12 . -13)
beamPositionsV = \once \override Beam.positions = #'(-2.5 . -1.5)
beamPositionsW = \once \override Beam.positions = #'(-12 . -13)
beamPositionsX = \once \override Beam.positions = #'(-2 . -1)
beamPositionsY = \once \override Beam.positions = #'(-1.5 . -0.5)
beamPositionsZ = \once \override Beam.positions = #'(-1.5 . -0.5)
beamPositionsAA = \once \override Beam.positions = #'(-1.5 . -0.5)
beamPositionsBB = \once \override Beam.positions = #'(-1.5 . -0.5)
beamPositionsCC = \once \override Beam.positions = #'(-1.5 . -0.5)
beamPositionsDD = \once \override Beam.positions = #'(-1.5 . -0.5)
beamPositionsEE = \once \override Beam.positions = #'(-1.5 . -0.5)
beamPositionsFF = \once \override Beam.positions = #'(-1.5 . -0.5)
beamPositionsGG = \once \override Beam.positions = #'(-1.5 . -0.5)

%%% Music %%%

cutTime = {
  \time 2/2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

global = {
  \key c \minor
  \cutTime
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \voiceOne
  \staffDown \beamDamping.4 ef16->-1( g\moveFingeringA -2 \staffUp ef'-5 ef-1
    g ef'-5 ef-1 g  ef'-> g, ef-1 ef-5  g, ef ef g,) |
  \staffDown \beamDamping.4 d->-1( af'-2 \staffUp d d  af' d d af'  d-> af d, d
    af d, d af) |
  \staffDown \beamDamping.35 f16->-1( c'-3 \staffUp f f   c' f f c'  f-> c f, f
    c f, f c) |
  \staffDown \beamDamping.4 ef,16->-1( g-2 \staffUp ef' ef  g ef' ef g
    ef'-> g, ef ef  g, ef ef g,) |
  \staffDown \beamDamping.4 d16->-1( af'-2 \staffUp d d  af' d d af'
    d-> af d, d  af d, d af) |
  \staffDown \beamDamping.4 ef16->-1( af-2 \staffUp ef' ef  af ef' ef af  
    ef'-> af, ef ef  af, ef ef  af,) |
  \staffDown \beamDamping.4 c,16->\slurShapeA ( ef c' c  \staffUp ef c'-5 ef, c
    ef bf'-4 ef, c  ef af-3 ef c |
  d16 g-5 d b  df g df bf  c f c a  b f' b, af) |
  
  \barNumberCheck 9
  \staffDown \beamDamping.4 ef16->( g \staffUp ef' ef  g ef' ef g  
    ef'-> g, ef ef  g, ef ef g,) |
  \staffDown \beamDamping.4 d->( af' \staffUp d d  af' d d af'  d-> af d, d
    af d, d af) |
  \staffDown \beamDamping.4 f16->( c' \staffUp f f   c' f f c'  f-> c f, f
    c f, f c) |
  \staffDown \beamDamping.4 e,16->( c' \staffUp e e  c' e e c'  e-> c e, e
    c e, e c) |
  af16->( df af' af  df af' af df  af'-> df, af af  df, af af df,) |
  g,16->( b g' g  b g' g b  g'-> b, g g  b, g g b,) |
  \staffDown \beamDamping.4 e,16->( g \staffUp e' e  g e' e g  \ottava 1 
    e' e g e'  g, e e g, \ottava 0 |
  e16 e g, e  e \staffDown g, e g  \beamPositionsE d-> g \staffUp 
    \moveNoteColumn.05 d' \staffDown g,  \beamPositionsF f-> g \staffUp 
    \moveNoteColumn.05 g' \staffDown g,) |
    
  \barNumberCheck 17
  \staffDown \beamDamping.4 e16->\slurShapeB ( g \staffUp e' e  g e' e g
    \ottava 1 e' e g e'  g, e e g, \ottava 0 |
  e16 e g, e  e \staffDown g, e g  \beamPositionsH d-> g \moveNoteColumnNeg.1 
    d' g,  \beamPositionsI c,-> g' \moveNoteColumnNeg.1 c g) |
  \beamDamping.4 d16->\slurShapeC ( g \staffUp d' d  g d' d g  \ottava 1 
    d' d g d'  g, d d g, \ottava 0 |
  d16 d g, d  \beamPositionsK d \staffDown g, d g  c,-> f \moveNoteColumnNeg.1
    c' f,  c-> f \moveNoteColumnNeg.1 a f) |
  c16->( f c' c  \staffUp f c' c f  c'-> f, c c  f, c c \staffDown f,) |
  c16->( e c' c  \staffUp e c' c e  c'-> e, c c  e, c c \staffDown e,) |
  c16->\slurShapeD ( ef c' c  \staffUp ef c' c ef  \ottava 1 c' c ef c'
    ef, c c ef, |
  \ottava 0 c c ef, c  c \staffDown ef, c ef  \beamPositionsO bf-> ef 
    \moveNoteColumnNeg.1 bf'-> ef,  df-> ef \moveNoteColumnNeg.1 ef'-> ef,) |
    
  \barNumberCheck 25
  \beamDamping.35 c16->\slurShapeE ( ef c' c  \staffUp ef c' c ef  \ottava 1 
    c' c ef c'  ef, c c ef, |
  \ottava 0 c c ef, c  c \staffDown ef, c ef  \beamPositionsP bf-> ef 
    \moveNoteColumnNeg.1 bf' ef,  \beamPositionsQ af,-> ef' 
    \moveNoteColumnNeg.1 af ef) |
  bf16->\slurShapeF ( ef bf' \moveNoteColumnNeg.1 bf  \staffUp ef bf' bf ef
    \ottava 1 bf' bf ef bf'  ef, bf bf ef, |
  \ottava 0 bf16 bf ef, bf  \staffDown \moveNoteColumnNeg.1 bf-> ef, bf ef
    af,-> df \moveNoteColumnNeg.1 af' df,  af-> df \moveNoteColumnNeg.1 
    f df) |
  af16->( df af' af  \staffUp df af' af df  af'-> df, af af
    \staffDown df, af af df,) |
  af16->( c af' af  \staffUp c af' c, af)  \staffDown fs,->( c' fs fs 
    \staffUp \beamDamping.4 c' fs c \staffDown fs,) |
  g,16->( b g' g  \staffUp b g' g b  g'-> b, g g  \staffDown b, g g b,) |
  af16->( c af' af  \staffUp c af' af c  af'-> c, af af   
    \staffDown c, af af c,) |
    
  \barNumberCheck 33
  c16->( f c' c  \staffUp f c' c f  c'-> f, c c  f, c c \staffDown f,) | 
  b,16->( f' b b  \staffUp f' b b f'  b-> f b, b  f b, b \staffDown f) |
  b,16->( f' b b  \staffUp f' b b f'  b-> f b, b  f b, b \staffDown f) |
  c16->( f c' c \staffUp f c' c f  c'-> f, c c  f, c c \staffDown f,) |
  \beamDamping.4 ef16->( fs \staffUp ef' ef  fs ef' ef fs  ef'-> fs, ef ef
    fs, ef ef \staffDown fs,) |
  \beamDamping.4 d16->( g \staffUp d' d  g d' d g  d'-> g, d d  g, d d g,) |
  \staffDown \beamDamping.4 d16->( af' \staffUp d d  af' d d af'  d-> af d, d
    af d, d af) |
  \staffDown \beamDamping.4 ef16->( af \staffUp ef' ef  af ef' ef af
    ef'-> af, ef ef  af, ef ef af,) |
    
  \barNumberCheck 41
  \staffDown \beamDamping.4 g16->( c \staffUp g' g  c g' g c  g'-> c, g g
    c, g g c,) |
  \staffDown \beamDamping.4 f,16->( \staffUp c' f f  c' f f c'  f-> b, f f
    b, f f b,) |
  af16->( b af' af  b af' af b  af'-> b, af af  b, af af b,) |
  \staffDown \beamDamping.4 g16->( b \staffUp g' g  b g' g b  g'-> b, g g
    b, g g b,) |
  \staffDown g,16->( b g' g  \staffUp b g' b, g)  \staffDown g,->( c g' g
    \staffUp c g' c, g) |
  \staffDown g,16->( cs g' g  \staffUp cs g' cs, g)
    \staffDown g,->( cs g' cs,)  g->( d' g d) |
  \beamDamping.4 ef16->( g \staffUp ef' ef  g ef' ef g  ef'-> g, ef ef
    g, ef ef g,) |
  \staffDown \beamDamping.4 d->( af' \staffUp d d  af' d d af'  d-> af d, d
    af d, d af) |
  
  \barNumberCheck 49
  \staffDown \beamDamping.4 f16->( c' \staffUp f f   c' f f c'  f-> c f, f
    c f, f c) |
  \staffDown \beamDamping.4 ef,16->( g \staffUp ef' ef  g ef' ef g
    ef'-> g, ef ef  g, ef ef g,) |
  \staffDown \beamDamping.4 d16->( af' \staffUp d d  af' d d af'  d-> af d, d
    af d, d af) |
  \staffDown \beamDamping.4 ef16->( af \staffUp ef' ef  af ef' ef af
    ef'-> af, ef ef  af, ef ef af,) |
  \staffDown c,16->\slurShapeG ( ef c' c  \staffUp ef c' ef, c  ef bf' ef, c
    ef af ef c |
  d16 g d b  df g df bf  c f c a  b-2 f'-5 b,-3 af-2) |
  \staffDown \beamDamping.4 ef16->-1( g \staffUp ef' ef  g ef' ef g
    ef'-> g, ef ef  g, ef ef g,) |
  \staffDown \beamDamping.4 d16->( af' \staffUp d d  af' d d af'  d-> af d, d
    af d, d af) |
  
  \barNumberCheck 57
  \staffDown \beamDamping.4 e16->( bf' \staffUp e e  bf' e e bf'  e-> bf e, e
    bf e, e bf)~ |
  bf16( \staffDown af-2 \staffUp f' f  af f' f af  f'-> af, f f  af, f f af,) |
  \staffDown \beamDamping.4 f16->( af \staffUp f' f  af f' f af  f'-> af, f f
    af, f f af,) |
  \staffDown \beamDamping.4 e16->( bf' \staffUp e e  bf' e e bf'  e-> bf e, e
    bf e, e bf) |
  \staffDown \beamDamping.4 f16->( b \staffUp f' f  b f' f b  f'-> b, f f
    b, f f b,) |
  \oneVoice g16->( b g' g  b g' b, g  af,-> b af' af b af' b, af) |
  \voiceOne g,16->( c g' g  c g' g c  g'-> c, g g  c, g g c,) |
  \oneVoice c16->( g' c c  \ottava 1 g' c c g'  c-> g c, c
    \ottava 0 g c, c g) |
  
  \barNumberCheck 65
  bf,16->( c bf' bf  c bf' c, bf)  af,->( c af' af  c af' c, af) |
  \voiceOne \staffDown \beamDamping.4 f,16->( af \staffUp f' f  af f' af, f)
    \staffDown \beamDamping.4 d,->( af' \staffUp d d  af' d af d,) |
  \voiceOne g,16->( c g' g  c g' g c  g'-> c, g g  c, g g c,) |
  af16->( c af' af  c af' af c  af'-> c, af af  c, af af c,) |
  af16->( b af' af  b af' af b  af'-> b, af af  b, af af b,) | 
  g16->( b g' g  b g' g b  g'-> b, g g  b, g g b,) |
  \staffDown \beamDamping.4 e,16->\slurShapeH ( g \staffUp e' e  g e' e g
    \ottava 1 e' e g e'  g, e e g, \ottava 0 |
  e16 e g, e  e \staffDown g, e g  d-> g \staffUp \moveNoteColumn.05 d'
    \staffDown g, f g \staffUp \moveNoteColumn.05 g' \staffDown g,) |
    
  \barNumberCheck 73
  \staffDown \beamDamping.35 e16->\slurShapeI ( g \staffUp e' e  g e' e g
    \ottava 1 e' e g e'  g, e e g, \ottava 0 |
  e16 e g, e  e-> \staffDown g, e g  d-> g \moveNoteColumnNeg.1 d' g,
    c,-> g' \moveNoteColumnNeg.1 c g) |
  \beamDamping.35 d16->\slurShapeJ ( g \staffUp d' d  g d' d g  \ottava 1 
    d' d g d'  g, d d g, |
  \ottava 0 d16 d g, d  \beamDamping.2 d-> \staffDown g, d g  c,-> f
    \moveNoteColumnNeg.1 c' f,  c-> f \moveNoteColumnNeg.1 a f) |
  c16->\slurShapeK ( f c' c  \staffUp f c' c f  \ottava 1 c' c f c'
    f, c c f, |
  \ottava 0 c16 c f, c  c-> \staffDown f, c f  c-> f \moveNoteColumnNeg.1 c' f,
    c-> f \moveNoteColumnNeg.1 d' f,) |
  c16->\slurShapeL ( f c' c  \staffUp f c' c f  \ottava 1 c' c f c'  f, c c f,
    \ottava 0 |
  c16 c f, c  \beamDamping.3 c-> \staffDown f, c f  c-> f \moveNoteColumnNeg.1
    c' f,  c-> f \moveNoteColumnNeg.1 d' f,) |
  
  \barNumberCheck 81
  e16->( g e' g,  \repeat unfold 3 { e g e' g, } |
  \repeat unfold 4 { e g e' g, } |
  e4) r \staffUp \oneVoice <e' g c e>2->\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  s1 * 6 |
  s4 s16 c''4 bf af4*3/4 |
  s16 g4 g f f4*3/4 |
  
  \barNumberCheck 9
  s1 * 7 |
  s4 e4-> s8 \moveNoteColumn.05 d4-> \moveNoteColumn.05 g8-> |
  
  \barNumberCheck 17
  s8. e8 s8. s2 |
  s4 e-> s8 \staffDown \moveNoteColumnNeg.1 d4 \moveNoteColumnNeg.1 c8 |
  s8. \staffUp d8 s8. s2 |
  s4 d-> s8 \staffDown \moveNoteColumnNeg.1 c4 \moveNoteColumnNeg.1 a8 |
  s1 * 3 |
  s4 \staffUp c4-> s8 \staffDown \moveNoteColumnNeg.1 bf4
    \moveNoteColumnNeg.1 ef8 |
    
  \barNumberCheck 25
  s1 |
  s4 \staffUp c4-> s8 \staffDown \moveNoteColumnNeg.1 bf4 
    \moveNoteColumnNeg.1 af8 |
  s8. \moveNoteColumnNeg.1 \offset Stem.length -0.5 bf8 s8. s2 |
  s4 \moveNoteColumnNeg.1 \offset Stem.length -0.5 bf4 s8 
    \moveNoteColumnNeg.1 af4 \moveNoteColumnNeg.1 f8 |
  s1 * 4 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s1 * 4 |
  \staffUp s4 s16 c''4 bf af4*3/4 |
  s16 g4 g f f4*3/4 |
  s1 * 2 |
  
  \barNumberCheck 57
  s1 |
  \staffDown \crossStaff { \voiceOne f,16 } s8. s2. |
  s1 * 6 |
  
  \barNumberCheck 65
  s1 * 7 |
  \voiceTwo \staffUp s4 e'-> s8 \moveNoteColumn.05 d4-> \moveNoteColumn.05 
    g8-> |
  
  \barNumberCheck 73
  s1 |
  s4 e s8 \staffDown \moveNoteColumnNeg.1 d4 \moveNoteColumnNeg.1 c8
  s8. \staffUp d8 s8. s2 |
  s4 d s8 \staffDown \moveNoteColumnNeg.1 c4 \moveNoteColumnNeg.1 a8 |
  s1 |
  s4 \staffUp c s8 \staffDown \moveNoteColumnNeg.1 \offset Stem.length -1
    c4 \moveNoteColumnNeg.1 \offset Stem.length -0.5 d8 |
  s1 |
  s4 \staffUp c s8 \staffDown \moveNoteColumnNeg.1 \offset Stem.length -1.5 c4
    \moveNoteColumnNeg.1 \offset Stem.length -0.5 d8 |
  
  \barNumberCheck 81
}

rightHand = <<
  \clef treble
  \global
  \override Score.MetronomeMark.Y-offset = 10
  \tempo "Allegro molto, con fuoco" 2 = 80
  \new Voice { \rightHandUpper }
  \new Voice { \rightHandLower }
>>

leftHand = \relative {
  \clef bass
  \global
  \voiceFour
  c,16 g' c-1 c-5  \beamPositionsA g' c-1 c-5 \staffUp g'  c-1 g c,-5 c-1
    \staffDown g c, c g |
  c,16 f c' c  \beamDamping.4 f c' c \staffUp f  c' f, c c  \staffDown 
    f, c c f, |
  c16 af' c c  \beamPositionsB af' c c \staffUp af'  c af c, c  \staffDown 
    af c, c af |
  c,16 g' c c  \beamPositionsA g' c c \staffUp g'  c g c, c  \staffDown 
    g c, c g |
  c,16 f c' c  \beamDamping.4 f c' c \staffUp f  c' f, c c  \staffDown 
    f, c c f, |
  c16 f b-1 c-5  \beamDamping.4 f b c \staffUp f  b f c b  \staffDown f c b f |
  c16 g' c c  g' c g c,  g' c g c,  g' c g c, |
  g'16 b g c,  g' bf g c,  f a f c  f af f c |
  
  \barNumberCheck 9
  c,16 g' c c  \beamPositionsA g' c c \staffUp g'  c g c, c  \staffDown 
    g c, c g |
  c,16 f c' c  \beamDamping.4 f c' c \staffUp f  c' f, c c  \staffDown
    f, c c f, |
  c16 af' c c  \beamPositionsB af' c c \staffUp af'  c af c, c  \staffDown
    af c, c af |
  c,16 g' c c  \beamPositionsA g' c c \staffUp g'  c g c, c  \staffDown
    g c, c g |
  f16 df' f f  \staffUp \beamPositionsC df' f f df'  f df f, f  \staffDown 
    df f, f df |
  g,16 d' f-1 g-5  \staffUp \beamPositionsD d' f-1 g-5 d'  f d g, f-1  
    \staffDown d-2 g,-5 d-1 g,-2 |
  c,16 g' c c  g' c c g'  \clef treble c c g' c  g c, c g \clef bass |
  c,16 c g c,  c g c, g'  b g c, g'  d' g, c, g' |
  
  \barNumberCheck 17
  c,16 g' c c  \beamPositionsG g' c c g'  \clef treble c c g' c  g c, c g 
    \clef bass |
  c,16 c g c,  c g c, g'  b g c, g'  a g c, g' |
  c,16 g' b-1 c-5  \beamPositionsJ g' b-1 c-5 g'  \clef treble \beamPositionsL
    b c g' b  \beamPositionsM g c,-5 b-1 g |
  \clef bass c,16-5 b-1 g c,  b g c, g'  a f c f  a f c f |
  c16 af' c c  \beamDamping.4 af' c c \staffUp af'  c af c, c  \staffDown
    af c, c af
  c,16 g' c c  \beamPositionsN g' c c \staffUp g'  c g c, c  \staffDown 
    g c, c g |
  af,16 ef' af af  ef' af af ef'  \clef treble af af ef' af  ef af, af ef |
  \clef bass af, af ef af,  af ef af, ef'  g ef af, ef'  bf' ef, af, ef' |
  
  \barNumberCheck 25
  af,16 ef' af af  \beamPositionsR ef' af af ef'  \clef treble af af ef' af
    ef af, af ef |
  \clef bass af, af ef af,  af ef af, ef'  g ef af, ef'  f ef af, ef' |
  af,16 ef' g-1 af-5  ef' g-1 af-5 ef'  \clef treble g af ef' g  ef af, g ef |
  \clef bass af, g ef af,  g ef af, ef'  f df af df  f df af df |
  af16 ff' af af  ff' af af \staffUp ff'  af ff \staffDown af, af
    ff af, af ff |
  af,16 ef' af af  ef' af ef af,  af, d af' af  d af' d, af |
  g,16 d' g g  d' g g \staffUp d'  g d \staffDown g, g  d g, g d |
  g,16 ef' g g  \beamPositionsS ef' g g \staffUp ef'  \beamDamping.4 g ef 
    \staffDown g, g  ef g, g ef |
  
  \barNumberCheck 33
  g,16 d' af' af  \beamDamping.4 d af' af \staffUp d  \beamDamping.4 af' d, 
    \staffDown af af  d, af af d, |
  g,16 d' g g  \beamDamping.4 d' g g \staffUp d'  \beamDamping.4 g d \staffDown
    g, g  d g, g d |
  g,16 d' g g  \beamDamping.4 d' g g \staffUp d'  \beamDamping.4 g d \staffDown
    g, g  d g, g d |
  af16 f' af af  \beamPositionsT f' af af \staffUp f'  \beamPositionsU af f 
    \staffDown af, af  f af, af f |
  a,16 fs' a a  \beamDamping.4 fs' a a \staffUp fs'  \beamDamping.4 a fs 
    \staffDown a, a  fs a, a fs |
  bf,16 g' bf bf  \beamPositionsV g' bf bf \staffUp g'  \beamPositionsW bf g 
    \staffDown bf, bf  g bf, bf g |
  b,16 f' b b  \beamDamping.4 f' b b \staffUp f'  \beamDamping.4 b f \staffDown
    b, b  f b, b f |
  c16 f c' c  \beamDamping.4 f c' c \staffUp f  \beamDamping.4 c' f, \staffDown
    c c  f, c c f, |
  
  \barNumberCheck 41
  ef16 af ef' ef  \beamDamping.4 af \staffUp ef' ef af  ef' af, ef ef
    \staffDown af, ef ef af, |
  d,16 af' d d  \beamDamping.35 af' \staffUp d d af'  d af d, d  \staffDown 
    af d, d af |
  g16 d' f-1 g-5  \staffUp d' f-1 g-5 d'  f d g,-5 f-1  \staffDown d g, f d |
  g,16 d' f-1 g-5  \staffUp d' f-1 g-5 d'  f d g,-5 f-1  \staffDown d g, f d |
  g,,16 d' g g  d' g d g,  af, c af' af  c af' c, af |
  a,16 cs a' a  cs a' cs, a  bf, cs bf' cs,  b d b' d, |
  c16 g' c c  \beamPositionsX g' c c \staffUp g'  c g c, c  \staffDown
    g c, c g |
  c,16 f c' c  \beamDamping.4 f c' c \staffUp f  c' f, c c  \staffDown
    f, c c f, |
  
  \barNumberCheck 49
  c16 af' c c  \beamPositionsY af' c c \staffUp af'  c af c, c  \staffDown
    af c, c af |
  c,16 g' c c  \beamPositionsZ g' c c \staffUp g'  c g c, c  \staffDown
    g c, c g |
  c,16 f c' c  \beamDamping.4 f c' c \staffUp f  c' f, c c  \staffDown
    f, c c f, |
  c16 f b-1 c-5  \beamDamping.4 f b-1 c-5 \staffUp f  \beamDamping.4 b f
    \staffDown c b  f c b f |
  c16 g' c c  g' c g c,  g' c g c,  g' c g c, |
  g'16 b g c,  g' bf g c,  f a f c  f af f c |
  c,16 g' c c  \beamPositionsAA g' c c \staffUp g'  c g c, c  \staffDown
    g c, c g |
  c,16 f c' c  \beamDamping.4 f c' c \staffUp f  c' f, c c  \staffDown
    f, c c f, |
  
  \barNumberCheck 57
  c16 g' c c  \beamPositionsBB g' c c \staffUp g'  c g c, c  \staffDown
    g c, c g~ |
  <df g>16 af' df df  \beamDamping.4 af' df df \staffUp af'  df af df, df
    \staffDown af df, df af |
  df,16 af' df df  \beamDamping.4 af' df df \staffUp af'  df af df, df
    \staffDown af df, df af |
  df,16 g df' df  \beamPositionsCC g df' df \staffUp g  df' g, df df
    \staffDown g, df df g, |
  df16 af' df df  \beamPositionsDD af' df df \staffUp af'  df af df, df  
    \staffDown af df, df af~ |
  \oneVoice <d, af'>16 g d' d  g d' g, d  d, f d' d  f d' f, d |
  \voiceFour ef,16 c' ef ef  \staffUp c' ef ef c'  ef c ef, ef  
    \staffDown c ef, ef c |
  \oneVoice e,16 c' e e  \clef treble c' e e c'  e c e, e
    \clef bass c e, e c |
  
  \barNumberCheck 65
  f,16 c' f f  c' f c f,  f, c' f f  c' f c f, |
  \voiceFour f,16 c' f f  c' f c f,  f, c' f f  c' f c f, |
  g,16 ef' g g  \staffUp ef' g g ef'  g ef g, g  \staffDown ef g, g ef |
  g,16 ef' g g  \staffUp ef' g g ef'  g ef g, g  \staffDown ef g, g ef |
  g,16 d' f-1 g-5  \staffUp d' f-1 g-5 d'  f d g,-5 f-1  \staffDown d g, f d |
  g,16 d' f-1 g-5  \staffUp d' f-1 g-5 d'  f d g, f  \staffDown d g, d-1 g, |
  c,16 g' c c  \beamPositionsEE g' c c g'  \clef treble c c g' c  g c, c g 
    \clef bass |
  c,16 c g c,  c g c, g'  b g c, g'd' g, c, g' |
  
  \barNumberCheck 73
  c,16 g' c c  \beamPositionsFF g' c c g'  \clef treble c c g' c  g c, c g
    \clef bass |
  c,16 c g c,  c g c, g'  b g c, g'  a g c, g' |
  c,16 g' b-1 c-5  \beamPositionsGG g' b-1 c-5 g'  \clef treble b-1 c-5 g' b
    g c,-5 b-1 g |
  \clef bass c,16 b g c,  b g c, g'  a f c f  a f c f |
  c16 af' c c  af' c c af'  \clef treble c c af' c  af c, c af \clef bass |
  c, c af c,  c af c, af'  c, af' c af  c, af' c af |
  c,16 af' c c  af' c c af'  \clef treble c c af' c  af c, c af \clef bass |
  c, c af c,  c af c, af'  c, af' c af  c, af' c af |
  
  \barNumberCheck 81
  c,16->( g' c g  g,-> g' c g  c,-> g' c g  g,-> g' c g |
  c,16-> g' c g  g,-> g' c g  c,-> g' c g  g,-> g' c g |
  <c,, c'>4->) r \oneVoice <c'' g' c>2->\fermata |
}

dynamics = {
  % \cutTime
  \override TextScript.Y-offset = -0.5
  s1\moveDynamicsA\f |
  s1 * 5 |
  s4 s2.\> |
  s2... s16\! |
  
  \barNumberCheck 9
  s1\moveDynamicsB\f |
  s1 * 7 |
  
  \barNumberCheck 17
  s1 * 6 |
  s1\moveDynamicsC\f |
  s1 |
  
  \barNumberCheck 25
  s1 * 6 |
  \tag layout {
    s16 s8.^\markup \large \italic "poco" s4^\markup \large \italic "a poco"
      s8 s^\crescMarkup s4 |
  }
  \tag midi { s1\cresc | }
  s1 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 2 |
  s1\ff |
  s1 * 2 |
  s2 s4..\< s16\! |
  s1 * 2 |
  
  \barNumberCheck 49
  s1 * 4 |
  s4 s2.\> |
  s2... s16\! |
  s1 * 2 |
  
  \barNumberCheck 57
  \override DynamicTextSpanner.style = #'none
  s8 s\cresc s2. |
  s1 * 7 |
  
  \barNumberCheck 65
  s1 * 2 |
  \tag layout { s1\!^\ilPuiForte | }
  \tag midi   { s1\!\ff | }
  s1 * 5 |
  
  \barNumberCheck 73
  s1 * 8 |
  
  \barNumberCheck 81
  s1 |
  s1\fff |
  s1 |
}

pedal = {
  % \cutTime
  \repeat unfold 6 { s2...\sd s16\su | }
  s2\sd s4\su\sd s8.\su\sd s16\su |
  s8.\sd s16\su s4\sd s8.\su\sd s16\su s8.\sd s16\su |
  
  \barNumberCheck 9
  \repeat unfold 6 { s2...\sd s16\su | }
  s1\sd |
  s4.. s16\su s4\sd s8.\su\sd s16\su |
  
  \barNumberCheck 17
  s1\sd |
  s4.. s16\su s8.\sd s16\su s8.\sd s16\su |
  s1\sd |
  s4.. s16\su s4\sd s8.\su\sd s16\su |
  s2...\sd s16\su |
  s2...\sd s16\su |
  s1\sd |
  s2 s8.\su\sd s16\su s8.\sd s16\su |
  
  \barNumberCheck 25
  s1\sd |
  s2 s4\su\sd s8.\su\sd s16\su |
  s1\sd |
  s2 s4\su\sd s8.\su\sd s16\su |
  s2...\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  s2...\sd s16\su |
  s2...\sd s16\su |
  
  \barNumberCheck 33
  \repeat unfold 8 { s2...\sd s16\su | } 
  
  \barNumberCheck 41
  \repeat unfold 4 { s2...\sd s16\su | } 
  s2\sd s4..\su\sd s16\su |
  s2\sd s8.\su\sd s16\su s8.\sd s16\su |
  s2...\sd s16\su |
  s2...\sd s16\su |
  
  \barNumberCheck 49
  \repeat unfold 4 { s2...\sd s16\su | }
  s2\sd s4\su\sd s8.\su\sd s16\su |
  s8.\sd s16\su s4\sd s8.\su\sd s16\su s8.\sd s16\su |
  s2...\sd s16\su
  s2...\sd s16\su
  
  \barNumberCheck 57
  \repeat unfold 8 { s2...\sd s16\su | }
  
  \barNumberCheck 65
  s2\sd s4..\su\sd s16\su |
  s2\sd s4..\su\sd s16\su |
  \repeat unfold 4 { s2...\sd s16\su | }
  s1\sd |
  s4.. s16\su s4\sd s8.\su\sd s16\su |
  
  \barNumberCheck 73
  s1\sd |
  s4.. s16\su s8.\sd s16\su s8.\sd s16\su |
  s1\sd |
  s2... s16\su |
  s1\sd |
  s1 * 2 |
  s2... s16\su |
  
  \barNumberCheck 81
  s1\sd |
  s1 |
  s2. s4\su |
}

forceBreaks = {
  % \cutTime
  
  % page 1
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak 

  % page 2
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak 
  
  % page 3
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak 
  
  % page 4
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak 
  
  % page 5
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak 
  
  % page 6
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak 
  
  % page 7
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\pageBreak 
}

etudeTwelveMusic = \score {
  \header {
    opus = "Opus 25, No 12"
  }
  \layout {
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
    \context {
      \Voice
      \override Tie.minimum-length = 3
    }
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 12" 
    \override Fingering.avoid-slur = #'inside
    \override Script.avoid-slur = #'inside
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeTwelveMidi = \book {
  \bookOutputName "etude-op25-no12"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
