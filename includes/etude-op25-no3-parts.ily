%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\include "global-variables.ily"

%%% Positions and shapes %%%

moveFingerA = {
   \temporary \override Fingering.X-offset = 0.25
   \temporary \override Fingering.add-stem-support = ##f
}
revertFingerA = \undo \moveFingerA

moveFingerB = {
   \temporary \override Fingering.X-offset = -0.5
   \temporary \override Fingering.add-stem-support = ##f
}
revertFingerB = \undo \moveFingerB

moveOttavaA = 
  \tweak OttavaBracket.outside-staff-priority ##f
  \tweak OttavaBracket.Y-offset 9 
  \etc
  
moveAccentA = -\offset Y-offset -2.75 \etc

spa = \tweak positions #'(0 . 0) \etc
spb = \tweak positions #'(0 . 1) \etc
spc = \tweak positions #'(0 . 4) \etc
spd = \tweak positions #'(0 . 7) \etc

ssa = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 1)) \etc
ssb = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.5 . -2)) \etc
ssc = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -2)) \etc
ssd = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1.5)) \etc
sse = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -3)) \etc
ssf = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) \etc
ssg = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.25)) \etc
ssh = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
ssi = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.25)) \etc
ssj = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . -2)) \etc
ssk = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1
  \key f \major
  \accidentalStyle piano
  \override Fingering.avoid-slur = #'inside
}

rightHandUpper = \relative {
  \oneVoice
  \partial 4 c''4-\ssa (
  \voiceOne
  \moveFingerB d16[-1-3 \revertFingerB c8.*1/3]-2 \ohn f8) 
    g,16-\spa ([ f8.*1/3] \ohn c'8)
    d16-\spa ([ c8.*1/3] \ohn f8) |
  d16-\spa ([ c8.*1/3] \ohn g'8)
    a,16([ g8.*1/3] \ohn c8)
    d16-\spa ([ c8.*1/3] \ohn g'8) |
  d16-\spa ([ c8.*1/3] \ohn a'8)
    d,16-\spa ([ c8.*1/3] \ohn f8)
    a16-\spa ([ g8.*1/3] \ohn d'8) |
  d,16-\spa ([ c8.*1/3] \ohn g'8)
    a16-\spa ([ g8.*1/3] \ohn c8)
    \ottava 1 a'16-\spa ([ g8.*1/3] \ohn c8) |
  \ottava 0 d,,16-\spa ([ c8.*1/3] \ohn f8)
    g,16-\spa ([ f8.*1/3] \ohn c'8)
    d16-\spa ([ c8.*1/3] \ohn f8) |
  d16-\spa ([ c8.*1/3] \ohn g'8)
    a,16-\spa ([ g8.*1/3] \ohn c8)
    d16-\spa ([ c8.*1/3] \ohn g'8) |
  d16-\spa ([ c8.*1/3] \ohn a'8) 
    e16-\spa ([ d8.*1/3] \ohn a'8)
    d,16-\spa ([ c8.*1/3] \ohn g'8) |
  d16-\spa ([ c8.*1/3] \ohn g'8)
    \ottava 1 d'16-\spa ([ c8.*1/3] \ohn g'8)
    d'16-\spa ([ c8.*1/3] \ohn g'8) |
    
  \barNumberCheck 9
  \ottava 0
  << { d,,32-\ssb ([ c d c] \ohn f8) } \\ { s16. c8*1/4 s8  } >>
    << { g32-\ssb ([ f g f] \ohn c'8) } \\ { s16. f,8*1/4 s8  } >>
    << { d'32-\ssb ([ c d c] \ohn f8) } \\ { s16. c8*1/4 s8  } >> |
  << { d32-\ssc ([ c d c] \ohn g'8) } \\ { s16. c,8*1/4 s8  } >>
    << { a32-\ssb ([ g a g] \ohn c8) } \\ { s16. g8*1/4 s8  } >>
    << { d'32-\ssc ([ c d c] \ohn g'8) } \\ { s16. c,8*1/4 s8  } >> |
  << { d32-\ssd ([ c d c] \ohn a'8) } \\ { s16. c,8*1/4 s8  } >>
    << { d32-\ssb ([ c d c] \ohn f8) } \\ { s16. c8*1/4 s8  } >>
    << { a'32-\ssd ([ g a g] \ohn d'8) } \\ { s16. g,8*1/4 s8  } >> |
  << { d32-\ssc ([ c d c] \ohn g'8) } \\ { s16. c,8*1/4 s8  } >>
    << { a'32-\sse ([ g a g] \ohn c'8) } \\ { s16. g,8*1/4 s8  } >>
    \moveOttavaA \ottava 1
    << { a'32-\sse ([ g a g] \ohn c'8) } \\ { s16. g,8*1/4 s8  } >> |
  \ottava 0
  << { d,32-\ssb ([ c d c] \ohn f8) } \\ { s16. c8*1/4 s8  } >>
    << { g32-\ssb ([ f g f] \ohn c'8) } \\ { s16. f,8*1/4 s8  } >>
    << { d'32-\ssb ([ c d c] \ohn f8) } \\ { s16. c8*1/4 s8  } >> |
  << { d32-\ssc ([ c d c] \ohn g'8) } \\ { s16. c,8*1/4 s8  } >>
    << { a32-\ssb ([ g a g] \ohn c8) } \\ { s16. g8*1/4 s8  } >>
    << { d'32-\ssc ([ c d c] \ohn g'8) } \\ { s16. c,8*1/4 s8  } >> |
  << { d32-\ssd ([ c d c] \ohn a'8) } \\ { s16. c,8*1/4 s8  } >>
    << { e32-\ssd ([ d e d] \ohn a'8) } \\ { s16. d,8*1/4 s8  } >>
    << { d32-\ssc ([ c d c] \ohn g'8) } \\ { s16. c,8*1/4 s8  } >> |
  << { d32-\ssb ([ c d c] \ohn f8) } \\ { s16. c8*1/4 s8  } >>
    \ottava 1
    << { d'32-\ssb ([ c d c] \ohn f8) } \\ { s16. c8*1/4 s8  } >>
    << { d'32-\ssc ([ c d c] \ohn f8) } \\ { s16. c8*1/4 s8  } >> |
    
  \barNumberCheck 17
  \ottava 0 d,,16-\spa ([ c8.*1/3] \ohn g'8)
    d16-\spa ([ c8.*1/3] \ohn g'8)
    d16-\spa ([ c8.*1/3] \ohn a'8) |
  c,16([ bf8.*1/3] \ohn bf'8)
    c,16-\spa ([ bf8.*1/3] \ohn f'8)
    c16-\spa ([ bf8.*1/3] \ohn f'8) |
  c16-\spa ([ bf8.*1/3] \ohn f'8)
    c16-\spa ([ bf8.*1/3] \ohn f'8)
    c16-\spa ([ bf8.*1/3] \ohn g'8) |
  bf,16([ af8.*1/3] \ohn af'8) 
    bf,16-\spa ([ af8.*1/3] \ohn ef'8) 
    bf16-\spa ([ af8.*1/3] \ohn ef'8) |
  bf16-\spa ([ af8.*1/3] \ohn ef'8)
    bf16-\spa ([ af8.*1/3] \ohn ef'8)
    bf16-\spa ([ af8.*1/3] \ohn f'8) |
  af,16-\spa ([ g8.*1/3] \ohn ef'8)
    af,16-\spa ([ g8.*1/3] \ohn d'8)
    af16-\spa ([ g8.*1/3] \ohn d'8) |
  bf16-\spa ([ af8.*1/3] \ohn ef'8)
    bf'16-\spa ([ af8.*1/3] \ohn ef'8)
    bf16-\spa ([ af8.*1/3] \ohn f'8) |
  af,16([ g8.*1/3] \ohn ef'8)
    af,16-\spa ([ g8.*1/3] \ohn d'8)
    af16-\spa ([ g8.*1/3] \ohn d'8) |
    
  \barNumberCheck 25
  g,16-\spa ([ fs8.*1/3] \ohn d'8)
    g,,16-\spa ([ fs8.*1/3] \ohn d'8)
    g,16-\spa ([ fs8.*1/3] \ohn e'8) |
  g,16-\spa ([ fs8.*1/3] \ohn d'8)
    g,16-\spa ([ fs8.*1/3] \ohn cs'8)
    g16-\spa ([ fs8.*1/3] \ohn cs'8) |
  g16-\spa ([ fs8.*1/3] \ohn b8)
    g16-\spa ([ fs8.*1/3] \ohn b8)
    g16-\spa ([ fs8.*1/3] \ohn cs'8) |
  g16-\spa ([ fs8.*1/3] \ohn b8)
    g16-\spa ([ fs8.*1/3] \ohn as8)
    gs16([ fs8.*1/3] \ohn as8) |
  \bar "||"
  \key b \major
  gs16([-3^\aTempo fs8.*1/3] \ohn b8)
    cs,16([ b8.*1/3] \ohn fs'8)
    gs16([ fs8.*1/3] \ohn b8) |
  gs16-\ssg ([ fs8.*1/3] \ohn cs'8)
    ds,16-\spb ([ cs8.*1/3] \ohn fs8)
    gs16-\ssg ([ fs8.*1/3] \ohn cs'8) |
  gs16([ fs8.*1/3] \ohn ds'8)
    gs,16([ fs8.*1/3] \ohn b8)
    ds16([ cs8.*1/3] \ohn gs'8) |
  gs,16-\ssg ([ fs8.*1/3] \ohn cs'8)
    ds16-\spc ([ cs8.*1/3] \ohn fs8)
    ds'16-\ssf ([ cs8.*1/3] \ohn fs8) |
    
  \barNumberCheck 33
  gs,,16([ fs8.*1/3] \ohn b8)
    cs,16([ b8.*1/3] \ohn fs'8)
    gs16([ fs8.*1/3] \ohn b8) |
  gs16-\ssg ([ fs8.*1/3] \ohn cs'8)
    ds,16-\spb ([ cs8.*1/3] \ohn fs8)
    gs16-\ssg ([ fs8.*1/3] \ohn cs'8) |
  gs16([ fs8.*1/3] \ohn ds'8)
    as16-\ssf ([ gs8.*1/3] \ohn ds'8)
    gs,16([ fs8.*1/3] \ohn cs'8) |
  gs16([ fs8.*1/3] \ohn b8)
    gs'16-\ssf ([ fs8.*1/3] \ohn b8)
    \ottava 1 gs'16-\ssf ([ fs8.*1/3] \ohn b8) |
  \ottava 0 gs,,16-\spa ([ fs8.*1/3] \ohn cs'8) 
    gs16-\spa ([ fs8.*1/3] \ohn cs'8) 
    gs16-\spa ([ fs8.*1/3] \ohn ds'8) |
  a16-\spa ([ gs8.*1/3] \ohn e'8)
    fs,16-\spa ([ e8.*1/3] \ohn b'8)
    fs16-\spa ([ e8.*1/3] \ohn b'8) |
  fs16-\spa ([ e8.*1/3] \ohn b'8)
    fs16-\spa ([ e8.*1/3] \ohn b'8)
    fs16-\spa ([ e8.*1/3] \ohn cs'8) |
  g16-\spa ([ fs8.*1/3] \ohn d'8)
    e,16-\spa ([ d8.*1/3] \ohn a'8)
    e16-\spa ([ d8.*1/3] \ohn a'8) |
    
  \barNumberCheck 41
  d,16-\spa ([ cs8.*1/3] \ohn a'8)
    d16([ cs8.*1/3] \ohn a'8)
    d,16([ cs8.*1/3] \ohn b'8) |
  d,16([ cs8.*1/3] \ohn a'8)
    d,16-\spa ([ cs8.*1/3] \ohn gs'8)
    d16-\spa ([ cs8.*1/3] \ohn gs'8) |
  d16([ cs8.*1/3] \ohn a'8)
    \ottava 1 d16([ cs8.*1/3] \ohn a'8)
    d,16([ cs8.*1/3] \ohn b'8) |
  d,16([ cs8.*1/3] \ohn a'8)
    d,16-\spa ([ cs8.*1/3] \ohn gs'8)
    d16-\spa ([ cs8.*1/3] \ohn gs'8) |
  \bar "||"
  \key f \major
  df16([ c8.*1/3] \ohn af'8) 
    \ottava 0 df,,16-\spa ([ c8.*1/3] \ohn af'8)
    df,16([ c8.*1/3] \ohn bf'8) |
  df,16([ c8.*1/3] \ohn af'8)
    df,16-\spa ([ c8.*1/3] \ohn g'8)
    df16-\spa ([ c8.*1/3] \ohn g'8) |
  d16-\spa ([ c8.*1/3] \ohn f8)
    d16-\spa ([ c8.*1/3] \ohn f8)
    d16-\spa ([ c8.*1/3] \ohn g'8) |
  d16-\spa ([ c8.*1/3] \ohn f8)
    d16-\spa ([ c8.*1/3] \ohn e8)
    d16-\spa ([ c8.*1/3] \ohn e8) |
    
  \barNumberCheck 49
  d16-\ssh ([^\aTempo c] \ohn f8)  
    g,16-\ssh ([ f] \ohn c'8)  
    d16-\ssh ([ c] \ohn f8) |
  d16-\ssi ([ c] \ohn g'8)  
    a,16-\ssj ([ g] \ohn c'8)  
    d,16-\ssi ([ c] \ohn g'8) |
  d16([ c] \ohn a'8)  
    d,16-\ssh ([ c] \ohn f8)  
    a16-\ssi ([ g] \ohn d'8) |
  d,16-\ssi ([ c] \ohn g'8)  
    a16-\ssh ([ g] \ohn c8) 
    \ottava 1 a'16-\ssh([ g] \ohn c8) |
  \ottava 0 d,,16-\ssh([ c] \ohn f8)  
    g,16-\ssh ([ f] \ohn c'8)  
    d16-\ssh([ c] \ohn f8) |
  d16-\ssi ([ c] \ohn g'8)  
    a,16-\ssi ([ g] \ohn c8)  
    d16-\ssi ([ c] \ohn g'8) |
  d16([ c] \ohn a'8)  
    e16-\ssi ([ d] \ohn a'8)  
    d,16-\ssi ([ c] \ohn g'8) |
  d16-\ssf ([ c] \ohn f8)  
    g16-\ssi ([ f] \ohn c'8)  
    a16-\ssf ([ g] \ohn c8) |
  
  \barNumberCheck 57
  g16-\ssi ([ f] \ohn c'8)  
    \ottava 1 g'16-\ssi ([ f] \ohn c'8)  
    a16-\ssf ([ g] \ohn c8) |
  g16-\ssi ([ f] \ohn c'8)  
    \ottava 0 g,16-\ssi ([ f] \ohn c'8)  
    a16-\ssi ([ g] \ohn c8) |
  g16([ f] \ohn c'8)  
    \ottava 1 g'16([ f] \ohn c'8)  
    a16-\ssi ([ g] \ohn c8) |
  g16([ f] \ohn c'8)  
    g16-\ssf ([ fs] \ohn b8)  
    f16-\ssi ([ e] \ohn b'8) |
  f16-\ssf ([ e] \ohn a8)  
    e16-\ssi ([ d] \ohn a'8)  
    d,16-\ssi ([ c] \ohn g'8) |
  d16-\ssf ([ c] \ohn f8)  
    \ottava 0 g,16-\ssf ([ fs] \ohn b8)  
    f16-\ssf ([ e] \ohn b'8) |
  f16-\ssh ([ e] \ohn a8)  
    e16-\ssf ([ d] \ohn a'8)  
    d,16-\ssf ([ c] \ohn g'8) |
  d16-\ssf ([ c] \ohn f8)  
    g16-\ssh ([ f] \ohn c'8)  
    a16-\ssd ([ g] \ohn c8) |
  
  \barNumberCheck 65
  g16-\ssh ([ f] \ohn c'8)  
    g16-\ssh ([ f] \ohn c'8)  
    a16-\ssd ([ g] \ohn c8) |
  g16-\ssh ([ f] \ohn c'8)  
    g16-\ssh ([ f] \ohn c'8)  
    g16-\ssh ([ f] \ohn c'8) |
  g32-\ssc ([ f g f] \ohn c'8)  
    g32-\ssc ([ f g f] \ohn c'8)  
    g32-\ssc ([ f g f] \ohn c'8) |
  \moveFingerB g32[-1-3 \revertFingerB f g f]  g[ f g f]  g[ f g f]  g[ f g f]
    g[ f g f]  g[ f g f] |
  \oneVoice
  <c f>8.-\ssk (\trill e16-1  f32[ gs bf a-1]  b[ d c-1 e] \ottava 1
    g[ f-1 gs bf]  a-1[ b d c] |
  f4) \ottava 0 r <a,,,, c a'>( |
  <a f' a>2. |
  q2.)\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  \partial 4 s4
  f'8 f'^5 c, c' f, f' |
  g,8 g' c,, c' g g' |
  a,8 a' f, f' d d' |
  g,,8 g' c, c' c c' |
  f,,,8 f' c, c' f, f' |
  g,8 g' c,, c' g g' |
  a,8 a' a, a' g, g' |
  f,8 f' f f' f f' |
  
  \barNumberCheck 9
  f,,,8 f' c, c' f, f' |
  g,8 g' c,, c' g g' |
  a,8 a' f, f' d d' |
  g,,8 g' c, c' c c' |
  f,,,8 f' c, c' f, f' |
  g,8 g' c,, c' g g' |
  a,8 a' a, a' g, g' |
  f,8 f' f f' f f' |
  
  \barNumberCheck 17
  g,,,8 g' g, g' a, a' |
  f,8 bf' f, f' f, f' |
  f,8 f' f, f' g, g' |
  ef,8 af' ef, ef' ef, ef' |
  ef,8 ef' ef, ef' ef, f' |
  ef,8 ef' d, d' d, d' |
  ef,8 ef' ef ef' ef, f' |
  ef,8 ef' d, d' d, d' |
  
  \barNumberCheck 25
  d,8 d' d,, d' e, e' |
  d,8 d' cs, cs' cs, cs' |
  b,8 b' b, b' cs, cs' |
  b,8 b' as, as' as, as' |
  \bar "||"
  \override Script.outside-staff-priority = ##f
  b,8 b'^> fs, fs'-\moveAccentA ^> b, b'^> |
  cs,8 cs'^> fs,, fs'-\moveAccentA ^> cs cs'^> |
  ds,8 ds'^> b, b'^> gs gs'^> |
  cs,,8 cs'^> fs, fs'^> fs fs'^> |
  
  \barNumberCheck 33
  b,,,8 b'^> fs, fs'-\moveAccentA ^> b, b'^> |
  cs,8 cs'^> fs,, fs'-\moveAccentA ^> cs cs'^> |
  ds,8 ds'^> ds, ds'^> cs, cs'^> |
  b,8 b'^> b b'^> b b'^> |
  \revert Script.outside-staff-priority
  cs,,,8 cs' cs, cs' ds, ds' |
  e,8 e' b, b' b, b' |
  b,8 b' b, b' cs, cs' |
  d,8 d' a, a' a, a' |
  
  \barNumberCheck 41
  a,8 a' a a' b, b' |
  a,8 a' gs, gs' gs, gs' |
  a,8 a' a a' b, b' |
  a,8 a' gs, gs' gs, gs' |
  af,8 af' af,, af' bf, bf' |
  af,8 af' g, g' g, g' |
  f,8 f' f, f' g, g' |
  f,8 f' e, e' e, e' |
  
  \barNumberCheck 49
  f,8 f'^. c, c'^. f, f'^. |
  g,8 g'^. c,, c'^. g g'^. |
  a,8 a'^. f, f'^. d d'^. |
  g,,8 g'^. c, c'^. c c'^. |
  f,,,8 f'^. c, c'^. f, f'^. |
  g,8 g'^. c,, c'^. g g'^. |
  a,8 a'^. a, a'^. g, g'^. |
  f,8 f'^. c c'^. c, c'^. |
  
  \barNumberCheck 57
  c,8 c'^. c c'^. c, c'^. |
  c,8 c'^. c,, c'^> c, c'^> |
  c,8 c'^> c c'^> c, c'^> |
  c,8 c'^> b, b'^. b, b'^. |
  a,8 a'^. a, a'^. g, g'^. |
  f,8 f'^. b,, b'^. b, b'^. |
  a,8 a'^. a, a'^. g, g'^. |
  f,8 f'^. c c' c, c' |
  
  \barNumberCheck 65
  c,8 c' c, c' c, c' |
  c,8 c' c, c' c, c' |
  c,8 c' c, c' c, c' |
  c,8 c'^3^5 c, c' c, c' |
}

rightHand = <<
  \clef treble
  \global
  \tempo "Allegro" 4 = 120
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHandUpper = \relative {
  \oneVoice
  \partial 4 r4
  \voiceThree
  \moveFingerB a16-3-1-\ssb ([ \revertFingerB f-2] \ohn f,8) 
    a'16-\ssb ([ f] \ohn f,8) 
    a'16-\ssb ([ f] \ohn f,8) |
  bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
  a'16-\ssb ([ f] \ohn f,8) 
    a'16-\ssb ([ f] \ohn f,8)
    b'16-\ssb ([ f] \ohn g,8) |
  e''16-\ssb ([ bf] \ohn c,8)
    \clef treble bf''16-\ssb ([ e,] \ohn g,8)
    e''16-\ssb ([ bf] \ohn c,8) |
  \clef bass a16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8) |
  bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
  a'16-\ssb ([ f] \ohn f,8)
    b'16-\ssb ([ f] \ohn g,8)
    e''16-\ssb ([ bf] \ohn c,8) |
  a'16-\ssb ([ f] \ohn f,8) 
    \clef treble a''16-\ssb ([ f] \ohn f,8) 
    a''16-\ssb ([ f] \ohn f,8) |
    
  \barNumberCheck 9
  \clef bass a,16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8) |
  bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
  a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8)
    b'16-\ssb ([ f] \ohn g,8) |
  e''16-\ssb ([ bf] \ohn c,8)
    \clef treble bf''16-\ssb ([ e,] \ohn g,8) 
    e''16-\ssb ([ bf] \ohn c,8) |
  \clef bass a16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8) |
  bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
  a'16-\ssb ([ f] \ohn f,8)
    b'16-\ssb ([ f] \ohn g,8)
    bf'16-\ssb ([ e,] \ohn c,8) |
  a''16-\ssb ([ f] \ohn f,8)
    \clef treble a''16-\ssb ([ f] \ohn f,8)
    a''16-\ssb ([ f] \ohn f,8) |
    
  \barNumberCheck 17
  \clef bass e16-\ssb ([ c] \ohn c,8) 
    ef'16-\ssb ([ c] \ohn c,8)
    f'16-\ssb ([ ef] \ohn f,8) |
  ef'16-\ssb ([ bf] \ohn bf,8)
    d'16-\ssb ([ bf] \ohn bf,8)
    d'16-\ssb ([ bf] \ohn bf,8) |
  df'16-\ssb ([ bf] \ohn bf,8)
    df'16-\ssb ([ bf] \ohn bf,8)
    df'16-\ssb ([ bf] \ohn ef,,8) |
  df''16-\ssb ([ af] \ohn af,8) 
    c'16-\ssb ([ af] \ohn af,8)
    c'16-\ssb ([ af] \ohn af,8) |
  c'16-\ssb ([ af] \ohn g,8)
    c'16-\ssb ([ af] \ohn g,8)
    c'16-\ssb ([ af] \ohn g,8) |
  c'16-\ssb ([ g] \ohn g,8) 
    b'16-\ssb ([ g] \ohn g,8)
    b'16-\ssb ([ g] \ohn g,8) |
  c'16-\ssb ([ af] \ohn g,8)
    \clef treble c''16-\ssb ([ af] \ohn g,8)
    c'16-\ssb ([ af] \ohn g,8) |
  c'16-\ssb ([ g] \ohn g,8)
    b'16-\ssb ([ g] \ohn g,8)
    b'16-\ssb ([ g] \ohn g,8) |
    
  \barNumberCheck 25
  b'16-\ssb ([ fs] \ohn fs,8)
    \clef bass b16-\ssb ([ fs] \ohn fs,8)
    cs''16-\ssb ([ fs,] \ohn fs,8) |
  b'16-\ssb ([ fs] \ohn fs,8)
    as'16-\ssb ([ fs] \ohn fs,8)
    as'16-\ssb ([ fs] \ohn fs,8) |
  g'16-\ssb ([ fs] \ohn fs,8)
    g'16-\ssb ([ fs] \ohn fs,8)
    g'16-\ssb ([ fs] \ohn fs,8) |
  g'16-\ssb ([ fs] \ohn fs,8)
    g'16-\ssb ([ fs] \ohn fs,8)
    fs'16-\ssb ([ e] \ohn fs,8) |
  \key b \major
  \oneVoice
  ds'16( fs, b,8)  ds'16( fs, b,8)  ds'16( fs, b,8) |
  e'16( fs, b,8)  e'16( fs, b,8)  e'16( fs, b,8) |
  ds'16( fs, b,8)  ds'16( fs, b,8)  es'16( b cs,8) |
  \voiceThree
  as''16-\ssb ([ e] \ohn fs,8)  
    e''16-\ssb ([ as,] \ohn cs,8)  
    \clef treble as''16-\ssb ([ e] \ohn fs,8) |
    
  \barNumberCheck 33
  \clef bass
  \oneVoice
  ds16( fs, b,8)  ds'16( fs, b,8)  ds'16( fs, b,8) |
  e'16( fs, b,8)  e'16( fs, b,8)  e'16( fs, b,8) |
  ds'16( fs, b,8)  es'16( b cs,8)  as''16( e fs,8) |
  ds'16( fs, b,8)  ds''16( fs, b,8)  \clef treble ds''16( fs, b,8)
  \clef bass as16( cs, fs,8)  a'16( cs, fs,8)  a'16( b, fs8) |
  a'16( cs, fs,8)  gs'16( b, e,8)  gs'16( b, e,8) |
  g'16( b, e,8)  g'16( b, e,8)  g'16( a, e8) |
  g'16( a, d,8)  fs'16( a, d,8)  fs'16( a, d,8) |
  
  \barNumberCheck 41
  fs'16( a, cs,8) 
    \voiceThree
    fs''16-\ssb ([ cs] \ohn cs,8) 
    gs''16-\ssb ([ cs,] \ohn cs,8) |
  fs'16-\ssb ([ cs] \ohn cs,8)
    es'16-\ssb ([ cs] \ohn cs,8)
    es'16-\ssb ([ cs] \ohn cs,8) |
  fs'16([ cs] \ohn cs,8)
    \clef treble fs''16([ cs] \ohn cs,8)
    gs''16([ cs,] \ohn cs,8) |
  fs'16-\ssb ([ cs] \ohn cs,8) 
    es'16-\ssb ([ cs] \ohn cs,8)
    es'16-\ssb ([ cs] \ohn cs,8) |
  \key f \major 
  f'16-\ssb ([ c] \ohn c,8)
    \clef bass f16-\ssb ([ c] \ohn c,8)
    g''16-\ssb ([ c,] \ohn c,8) |
  f'16-\ssb ([ c] \ohn c,8)
    e'16-\ssb ([ c] \ohn c,8)
    e'16-\ssb ([ c] \ohn c,8) |
  d'16-\ssb ([ c] \ohn c,8) 
    d'16-\ssb ([ c] \ohn c,8)
    e'16-\ssb ([ c] \ohn c,8) |
  d'16-\ssb ([ c] \ohn c,8)
    d'16-\ssb ([ c] \ohn c,8)
    c'16-\ssb ([ bf] \ohn c,8) |
    
  \barNumberCheck 49
  a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8) |
  bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
  a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8)
    b'16-\ssb ([ f] \ohn g,8) |
  e''16-\ssb ([ bf] \ohn c,8)
    \clef treble bf''16-\ssb ([ e,] \ohn g,8)
    e''16-\ssb ([ bf] \ohn c,8) |
  \clef bass a16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8) |
  bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
  a'16-\ssb ([ f] \ohn f,8)
    b'16-\ssb ([ f] \ohn g,8)
    e''16-\ssb ([ bf] \ohn c,8) |
  a'16-\ssb ([ f] \ohn f,8)  
    \clef treble a''16-\ssb ([ f] \ohn f,8) 
    bf'16-\ssb ([ e,] \ohn f,8) |
    
  \barNumberCheck 57
  a'16-\ssb ([ f] \ohn f,8)
    a''16-\ssb ([ f] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
  a'16-\ssb ([ f] \ohn f,8)
    a16-\ssb ([ f] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
  a'16-\ssb ([ f] \ohn f,8)
    a''16-\ssb ([ f] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
  a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ ds,] \ohn b,8)
    gs''16-\ssb ([ d] \ohn e,8) |
  g'16-\ssb ([ cs,] \ohn a,8)
    d'16-\ssb ([ bf] \ohn bf,8)
    e'16-\ssb ([ bf] \ohn c,8) |
  a'16-\ssb ([ f] \ohn f,8)
    \clef bass a'16-\ssb ([ ds,] \ohn b,8)
    gs''16-\ssb ([ d] \ohn e,8) |
  g'16-\ssb ([ cs,] \ohn a,8)
    d'16-\ssb ([ bf] \ohn bf,8)
    e'16-\ssb ([ bf] \ohn c,8) |
  a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
    
  \barNumberCheck 65
  a'16-\ssb ([ f] \ohn f,8)
    a'16-\ssb ([ f] \ohn f,8)
    bf'16-\ssb ([ e,] \ohn f,8) |
  a'16-\ssb ([ f] \ohn f,8) \oneVoice f,4-. <f' c' a'>(\arpeggio |
  <f' c' a'>4)\arpeggio f,,-. <f' c' a'>(\arpeggio |
  <f' c' a'>4)\arpeggio r r |
  R2. |
  r4 r <c, c'>( |
  <f, f'>2. |
  <f' c'>2.)\fermata |
}

leftHandLower = \relative {
  \voiceFour
  \partial 4 s4
  c8 \moveFingerA f,-5 \revertFingerA c' f, c' f, |
  c'8 f, c' f, c' f, |
  c'8 f, d' f, d' g, |
  g'8 c, c' g g' c, |
  c, f, c' f, c' f, |
  c'8 f, c' f, c' f, |
  c'8 f, d' g, g' c, |
  c8 f, c'' f, c'' f, |
  
  \barNumberCheck 9
  c,8 f, c' f, c' f, |
  c'8 f, c' f, c' f, |
  c'8 f, c' f, d' g, |
  g'8 c, c' g g' c, |
  c,8 f, c' f, c' f, |
  c'8 f, c' f, c' f, |
  c'8 f, d' g, c c, |
  c'8 f, c'' f, c'' f, | 
  
  \barNumberCheck 17
  g,8 c, g' c, c' f, |
  f8 bf, f' bf, f' bf, |
  f'8 bf, f' bf, ef ef, |
  ef'8 af, ef' af, ef' af, |
  ef'8 g, ef' g, ef' g, |
  d'8 g, d' g, d' g, |
  ef'8 g, ef'' g, ef' g, |
  d'8 g, d' g, d' g, |
  
  \barNumberCheck 25
  d'8 fs, d fs, d' fs, |
  cs'8 fs, cs' fs, cs' fs, |
  d'8 fs, d' fs, e' fs, |
  d'8 fs, cs' fs, cs' fs, |
  s2. * 3 |
  cs'8 fs, fs' cs cs' fs, |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s4 a8 cs, a' cs, |
  gs'8 cs, gs' cs, gs' cs, |
  a'8 cs, a'' cs, a' cs, |
  gs'8 cs, gs' cs, gs' cs, |
  af'8 c, af c, af' c, |
  \repeat unfold 3 { g'8 c, g' c, g' c, | }
  
  \barNumberCheck 49
  c8 f, c' f, c' f, |
  c'8 f, c' f, c' f, |
  c'8 f, d' f, d' g, |
  g'8 c, c' g g' c, |
  c,8 f, c' f, c' f, |
  c'8 f, c' f, c' f, |
  c'8 f, d' g, g' c, |
  c8 f, c'' f, c' f, |
  
  \barNumberCheck 57
  c'8 f, c'' f, c' f, |
  c'8 f, c f, c' f, |
  c'8 f, c'' f, c' f, |
  c'8 f,^. b b,^. b' e,^. |
  a8 a,^. g' bf,^. g' c,^. |
  c8 f,^. b b,^. b' e,^. |
  a8 a,^. g' bf,^. g' c,^. |
  c8 f, c' f, c' f, |
  
  \barNumberCheck 65
  c'8 f, c' f, c' f, |
  c'8 f, s2 |
}

leftHand = <<
  \clef bass
  \global
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 \tag layout { s4^\leggiero } \tag midi { s4\p }
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2\< s8 s\! |
  s2. |
  s2\< s8 s\! |
  s2. |
  s2\f\< s8 s\! |
  s4 s4..\> s16\! |
  s2\p\< s8 s\! |
  s4 s4..\> s16\! |
  
  \barNumberCheck 25
  s4 s4..\< s16\! |
  s4 s4..\> s16\! |
  s2 s4^\riten |
  s2. |
  s2.\f |
  s2. * 3 |
  
  \barNumberCheck 33
  s2. * 4 |
  s2.\< |
  s8. s16\! s4..\> s16\! |
  s2.\< |
  s8. s16\! s4..\> s16\! |
  
  \barNumberCheck 41
  s8. s16\! s4..\< s16\! |
  s2\> s8 s\! |
  s2\p\< s8 s\! |
  s2\> s8 s\! |
  s2.^\dimMarkup |
  s2. |
  s2 s4^\riten |
  s2. |
  
  \barNumberCheck 49
  s8\f s\fz s s\fz s s\fz |
  \repeat unfold 6 { s8 s\fz s s\fz s s\fz | }
  s8 s\fz s2 |
  
  \barNumberCheck 57
  s2. |
  s4 s2\p |
  s2. * 3 |
  s4 s2\> |
  s2 s8 s\! |
  s2\> s8 s\! |
  
  \barNumberCheck 65
  s2\> s8 s\! |
  s2. |
  s2 s4^\smorz |
}

pedal = {
  \partial 4 s4
  \repeat unfold 3 { s8\sd s\su s\sd s\su s\sd s\su | }
  s2\sd s8. s16\su |
  s2. * 2 |
  s8\sd s\su s\sd s\su s8.\sd s16\su |
  s2\sd s8. s16\su |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s8\sd s\su s\sd s\su s8.\sd s16\su |
  s8\sd s\su s4..\sd s16\su |
  s8\sd s\su s\sd s\su s8.\sd s16\su |
  s8\sd s\su s4..\sd s16\su |
  \override SustainPedal.Y-offset = 2
  s4.\sd s8\su s8.\sd s16\su |
  s8\sd s\su s4..\sd s16\su |
  s4.\sd \revert SustainPedal.Y-offset s8\su s8.\sd s16\su |
  s8\sd s\su s4..\sd s16\su |
  
  \barNumberCheck 25
  s8\sd s\su \override SustainPedal.Y-offset = 2 s\sd s\su s8.\sd s16\su |
  s8\sd s\su s4..\sd s16\su |
  s4.\sd s8\su s8.\sd s16\su |
  \revert SustainPedal.Y-offset
  \repeat unfold 3 { s8\sd s\su s\sd s\su s8.\sd s16\su | }
  s4.\sd s8\su s8.\sd s16\su |
  s2\sd s8. s16\su |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 7 |
  s4.\sd s8\su s8.\sd s16\su |
  
  \barNumberCheck 57
  s4.\sd s8\su s8.\sd s16\su |
  s8\sd s\su s\sd s\su s8.\sd s16\su |
  s4.\sd s8\su s8.\sd s16\su |
  s8\sd s\su s\sd s\su s8.\sd s16\su |
  s8\sd s\su s\sd s\su s8.\sd s16\su |
  s8\sd s\su \override SustainPedal.Y-offset = 2 s\sd s\su s8.\sd s16\su |
  s8\sd s\su s\sd s\su s8.\sd s16\su |
  s4.\sd s8\su s8.\sd s16\su |
  
  \barNumberCheck 65
  s4.\sd s8\su s8.\sd s16\su |
  \revert SustainPedal.Y-offset
  s2. * 5 |
  s2.\sd |
  s2 s4\su |
}

forceBreaks = {
  \partial 4 s4\noBreak
  s2.\noBreak s2.\noBreak s2.\break
  s2.\noBreak s2.\noBreak s2.\noBreak s2.\break
  s2.\noBreak s2.\noBreak s2.\break
  s2.\noBreak s2.\noBreak s2.\pageBreak
  \barNumberCheck 14
  s2.\noBreak s2.\noBreak s2.\break
  s2.\noBreak s2.\noBreak s2.\noBreak s2.\break
  s2.\noBreak s2.\noBreak s2.\noBreak s2.\break
  s2.\noBreak s2.\noBreak s2.\break
  \barNumberCheck 28
  s2.\noBreak s2.\noBreak s2.\break
  \repeat unfold 3 { s2.\noBreak s2.\noBreak s2.\noBreak s2.\break } \pageBreak
  \barNumberCheck 43
  s2.\noBreak s2.\noBreak s2.\break
  \repeat unfold 3 { s2.\noBreak s2.\noBreak s2.\noBreak s2.\break } \pageBreak
  \barNumberCheck 58
  s2.\noBreak s2.\noBreak s2.\noBreak s2.\break
  s2.\noBreak s2.\noBreak s2.\noBreak s2.\break
  s2.\noBreak s2.\noBreak s2.\break
  s2.\noBreak s2.\noBreak s2.\noBreak s2.\pageBreak
}

etudeThreeMusic = \score {
  \header {
    opus = "Opus 25, No 3"
  }
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 15" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeThreeMidi = \book {
  \bookOutputName "etude-op25-no3"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
