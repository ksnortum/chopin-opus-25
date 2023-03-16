%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.1"

\include "global-variables.ily"

%%% Positions and shapes %%%

% \ooa is "once omit accidental"

moveTextA = 
  \tweak extra-offset #'(0 . -2)
  \etc
  
slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . -3) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0.25) (0 . 0.25) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0.5) (0 . 0.25) (0 . 0)) \etc
slurShapeF = \shape #'((0 . 0) (0 . -6) (0 . -3) (0 . 5)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -1)) \etc

pSlurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.5)) \etc

fingerPositionA = 
  \tweak outside-staff-priority ##f
  \tweak Y-offset -0.75
  \etc
  
fingerPositionB = 
  \tweak outside-staff-priority ##f
  \tweak Y-offset -0.75
  \etc

fingerPositionC = 
  \tweak outside-staff-priority ##f
  \tweak Y-offset -0.75
  \etc
  
fingerPositionD = 
  \tweak outside-staff-priority ##f
  \tweak Y-offset -0.75
  \etc

%%% Music %%%

cutTime = {
  \time 2/2
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

global = {
  \key a \minor
  \cutTime
  \accidentalStyle piano
}

rightHand = \relative {
  \clef treble
  \global
  \tag layout { \tempo "Lento" }
  \tag midi   { \tempo "" 4 = 54 }
  \override Fingering.avoid-slur = #'inside
  e'4 ( e8. e16  e4 f |
  e4 c e2)\fermata |
  <g, c e>4^( q8. q16 q4 <a c f> |
  <g c e>4 <a c> << 
    { e'2)\fermata } 
    \new Voice { 
      \voiceTwo <g, c>4 \tag midi { \tempo "" 4 = 30 } <gs d'>\fermata 
    } 
  >> |
  \bar "||"
  \tempo "Allegro con brio" 2 = 69
  \omit TupletBracket
  \ottava 1 \tuplet 6/4 4 { f''''16-5\slurShapeD ( c-2 e-4 a,-1 ds-3 c-2
    d-5 a-1 cs-4 a-2 c-5 e,-1 
  }
  \scaleDurations 2/3 {
    b'-5 e,-2 bf'-4 c,-1 a'-5 e-2  gs-4 c,-1 g'-5 c,-2 fs-4 a, |
    \ottava 0 f'16-5 c-2 e-4 a,-1 ds-3 c-2  d-5 a-1 cs-4 a-2 c-5 e,-1
      b'-5 e, bf' c, a'-5 e  gs c, g'-5 c, fs a,) |
    f'16-5( c-2 e-4 a, ds-3 c-2 d-5  a-1 cs-4 a-2 c-5 e,-1
      b'-5 e,-2 bf'-4 c,-1 a'-5 e-2  gs-4 c,-1 g'-5 c,-2 fs-4 a,-1 |
    f'16-5 c e a,-1 ds-3 c-2   \clef bass d-5 a-1 cs-4 a-2 c-5 e,-1
      b'-5 e,-2 bf'-4 c,-1 a'-5 e-2  gs-3 c,-1 a'-4 e-2 c'-5 f,-1) |
      
    \barNumberCheck 9
    \clef treble e'16-5( b-2 d-4 f-1 e' b  d-4 f-1 e' b d f,
      d' a c f,-1 d-5 a  c f,-1 d-5 a c f,) |
    e'16-5( b-2 d-4 f-1 e' b  d f e' b d e,  d' a c e, d a  c e, d a c b-1) |
    a'16-5( e-2 gs-4 b-1 a' e  gs b-1 a' e gs b,  gs'-4 ds fs b,-1 gs-4 ds
      fs b,-1 gs-4 ds fs b,) |
    a'16-5( e-2 gs-4 b-1 a' e  gs b a' e gs b, 
  }
  \ottava 1 e'4) \ottava 0 r |
  \scaleDurations 2/3 {
    \ottava 1 f16( c e a, ds c d  a cs a c e,  b' e, bf' c, a' e  
      gs c, g' c, fs a, |
    \ottava 0 f'16 c e a, ds c  d a cs a c e,  b' e, bf' c, a' e  
      gs c, g' c, fs a,) |
    f'16-5( bf,-2 e-4 g,-1 ef'-5 bf-2  d-4 g,-1 df'-3 bf-2 c-4 g-1
      b-5 g-2 bf-4 e,-1 a-5 c,-2  gs'-4 bf,-1 g'-5 c,-2 fs-4 bf,-1 |
    f'16-5 c-2 e-4 bf-1 ef-3 c-2  d-4 g, -1 df' bf c-4 g-1
      b-3 g-1 c-4 bf-2 cs-3 g-1  df'-4 bf-2 ds-3 g,-1 e'-4 bf-1) |
      
    \barNumberCheck 17
    a'16-5( e-2 g-4 bf-1 a' e  g bf-1 a' e g bf,  a' ef g bf,-1 a-5 ef
      \stemDown g bf,-1 a-5 ef g bf,-1) |
    a'16-5\slurShapeB ( d,-2 g-4 bf-1 a' d,  g bf-1 a'-5 d,-2 g-4 bf,-1
      a'-5 df, g bf,-1 a-5 df,  g bf,-1 a-5 df,-2 g-4 bf,-1) |
    \stemNeutral a'16-5( c,-2 g'-4 bf,-1 c'-5 a-2  bf-3 g-1 a' c, g' bf,-1
      c'-5 a-2 bf g-1 a' c, \ottava 1 g' bf, c'-5 a-2 bf-3 g-1) |
    d'16\slurShapeC ( a c f,-1 gs-4 f-2  a c,-1 e-4 c f a,  \ottava 0 
      cs-4 a d f, gs-4 f  a d,-1 e d f a,) |
    e'16-5( b-2 d-4 f-1 e' b  \ottava 1 d f e' b d f,  a-4 f g b, \ottava 0
      a-4 f g b,-1 e'-5 g,-2 d'-5 f,-1) |
    b16-4_3( g-2 _2 c-5 _4 e,-1_1 ds'-3 c-2  e-4 g,-1 \ottava 1 
      fs'-3 e-2 g-4 c,-1  as'-3 g-2 b-4 e,-1 c'-5 g-2  
      cs-4 e,-1 d'-5 g,-2 ds'-5_4 e,-1_1) |
    e'16-5( b-2 ds-4 g,-1 d'-5 b-2  cs-4 g-1 c-5 g-2 b-4 e,-1
      as-3 g-2 a-5 e-1 gs-4 e-2  g-5 c,-1 fs-4 c-2 f-5 g,-1 \ottava 0 |
    e' b ds g, d' b  cs g c g b e,  as g a e gs e  g b, fs' b, f' g,) |
    
   \barNumberCheck 25
   \stemUp
   e'( b ds g, d' b  cs g c g b e,  as g a e gs e  g c, fs c f g, |
   \stemNeutral
   e' b ds g, d' b  \clef bass cs g c g b e,  as g a b, gs' e  
     g b, fs' e g c,-1) |
   b'16-5( fs a c-1 \clef treble b' fs  a c-1 b' fs a c,  a' e g c,-1 a e
     \stemDown g c,-1 \clef bass a e g c,-1) |
   \stemNeutral
   b'16-5( fs a c-1 \clef treble b' fs  a c-1 b' fs a c,  a' e g b,-1 a e 
     g b, \clef bass a e g fs) \clef treble |
   e'16-5( b-2 ds-4 fs-1 e' b  ds fs-1 e' b ds-4 fs,-1  
     ds'-4 as cs fs,-1 ds-4 as  cs fs,-1 ds-4 as cs fs, |
   e'16-5 b-2 ds-4 fs-1 e' b  ds fs-1 e' b ds fs,
  }
  b'4-.) r |
  \scaleDurations 2/3 {
    \ottava 1 c16-5( g b e,-1 as-3 g-2  a-4 e-1 gs-3 e-2 g-4 b,-1  
      fs'-5 b,-2 f'-4 g,-1 e'-5 b  ds g,-1 d'-5 g, cs e,-1 |
    \ottava 0 c'16-5 g b-4 e, as-3 g-2  a-4 e-1 gs-3 e-2 g-4 b,-1  
      fs'-5 b,-2 f'-4 g, e' b  ds g, d' g, cs e, |
    
    \barNumberCheck 33
    c'16 g b f as-3 g-2  a-4 d,-1 af'-2 f-3 g-4 b,-1  fs'-3 d-2 f-5 g,-1 e'-5
      b-2 \clef bass ef-4 fs,-1 d'-5 g,-2 cs-4 f,-1 |
    c'16 g b f bf g  a d, af' f g-4 b,-1 fs'-3 f-2 g-4 b,-1 gs'-3 f-2
      a-4 d,-1 as'-3 g-2 b-4 f-1) \clef treble |
    e'16-5( b-2 d-4 f-1 e' b  d f-1 e' b d f,-1  e' bf d f,-1 e-5 bf  
      d f,-1 e-5 bf d f,) |
    e'16-5( a,-2 d-4 f-1 e' a,  d f-1 e' a, d f,-1  e' gs, d' f,-1 e-5 gs,
      d' f,-1 e-5 gs, d' f,) |
    e'16-5( g,-2 d'-4 f,-1 g'-5 e-2  f-3 d-1 e' g, d' f,  
      g'-5 e-2 f-3 d-1 e' g,  \ottava 1 d' f, g' e f d |
    a'16 e g c, e' g,  d' e, c'-5 gs b-4 e,  bf'-5 f-2 af-4 df,-1 gf-5 df
      f-4 af, ef'-5 af, df-4 f, \ottava 0 |
    df'16-5 fs, c'-5 e, g-3 c,-1  af'-4 e-2 fs-3 c-1 g'-4 e  
      a-5 b, fs'-3 f-2 g-4 b,-1  b'-3 f-1 e' g, d' f, |
    d' g, c e, a e  g c, f c e g,  a' e g c, f c  e g, a' e g c,) |
  }
  
  \barNumberCheck 41
  <e g>4( <g, e' g>8. q16 q4 <a e' a> |
  <g e' g>4 <g cs e> <g e' g>2) |
  <g' bf>4( <bf, g' bf>8. q16 q4 <c g' c> |
  <bf g' bf>4 <bf e g> <bf g' bf>2) |
  \scaleDurations 2/3 {
    \ottava 1 c''16-5( ef,-2 bf'-4 df,-1 af'-5 ef-2
      g-4 df-1 f-5 df-2 ef-4 g,-1  f'-5 c ef af,-1 df-5 af  
      \ottava 0 c ef,-1 bf'-5 ef, af c,-1 |
    c'-1 ef,-2 bf'-4 df,-1 a'-5 ef-2  bf'-4 df,-1 df'-5 ef,-2 g df-1
      bf'-5 ef, af-4 c, g'-3 ef  af-4 c, bf'-5 ef, af c,) |
    gs''-5( b, fs'-4 a, e'-5 b  ds-4 a cs-4 a-2 b-3 fs-1
      e'-5 gs, ds'-4 e, cs'-5 gs  b-4 e, a-5 e gs-4 b, |
    gs'-4 ds-2 fs-3 a,-1 es'-4 ds-2  fs-3 a,-1 a'-5 b,-2 ds a
      fs'-5 b, f'-4 gs,-1 e'-5 b  ds-4 gs,-1 d'-5 b cs-4 gs) |
      
    \barNumberCheck 49
    cs16( gs b d, cs' gs  b-4 d-1 cs' gs b d-1 \ottava 1  
      cs'-4 gs b d,-1 cs-4 gs  \ottava 0 b d,-1 cs-4 gs b d,) |
    d'16-5( g, c c, f'-5 c  ef g, af' ef g c,  c' g b ef, bf'-3 g-2
      a-5 ef-1 af-4 ef-2 g-3 c,-1) |
    f16-5( c ef gf,-1 f' c  ef-4 gf-1 f'-5 c ef gf-1  
      \ottava 1 f' c ef gf,-1 f-5 c  \ottava 0 ef gf, f c ds fs,) |
    fs'16-5( b, e e,-1 a'-5 e  g b,-1 c' g b e,  e' b ds g, d'-5 b-2
      cs-4 g-1 c-5 g b e,-1) |
    bf'16-5( e, a-4 bf, af'-5 e  g-4 bf, a'-5 e g bf,  g'-5 c, fs-4 a, f'-5 c
      fs-4 a, g'-5 b, fs'-4 a,) |
    fs'16-5( b,-2 f'-4 g,-1 e'-5 b-2  e-4 g,-1 f'-5 a,-2 e'-4 g,-1  
      e' a, cs f, d' a  d e, b'-3 a-2 c-4 e,-1) |
    c'16-4( a b f-1 c'-4 a  b f'-1 c'-4 a b f'  \ottava 1 c' a b f c a 
      \ottava 0 b f c a b f) |
    b16-5( fs a c, b' fs  a c b'-5 fs a c  \ottava 1 b'-5 \ooa fs a c, b-5 fs
      \stemDown \ottava 0 a c, b fs a c,) |
      
    \barNumberCheck 57
    \stemNeutral
    a'16\slurShapeE ( e gs b-1 a'-5 e  gs b a'-5 e gs b,  gs'-4 d fs b, gs-4 d
      fs b, gs d fs b,) |
    fs'16-4( cs-2 e-3 gs-1 fs'-5 cs-2  e-4 gs-1 fs' cs e gs,  
      e'-5 b d fs,-1 e-5 b  d fs, e b d fs,) |
    cs'16( gs b f e' b  d gs, g' d f b,  a' f gs d c' gs  b f e' b d gs, |
    g'!16 d f b, a' f  gs d c' gs b f  \ottava 1 e' b d gs,! g' d
      f b, a' f gs d) |
    f'16-5( b, e-4 gs, ds'-5 b  d-4 gs, cs gs c f,  b f bf d, a' f
      gs b, g' d fs gs, \ottava 0 |
    f'16 b, e gs, ds' b  d gs, cs gs c f,_~
  }
  <f b>8-.) r r4 |
  \scaleDurations 2/3 {
    \ottava 1 b'16( f as d, a' f  gs d g d fs b,  \ottava 0 f' b, e gs, ds' b
      d gs, cs gs c f, |
    b16 f as d, a' f  gs d g d fs b,
  }
  <gs d' f>8-.) r r4 |
  
  \barNumberCheck 65
  \tuplet 3/2 { f'16([ d e] } gs,8) r4 \tuplet 3/2 { f'16([ d e] } gs,8) r4 |
  \scaleDurations 2/3 {
    f'16( d e gs, f' d e gs, f' d e gs, f' d e gs, f' d e gs, f' d e gs, |
    f'16 d e gs, f' d e gs, f' d e \ooa gs, \ooa f' d e gs, f' d 
      e gs, f' d e \ooa gs, |
    f'16 d e gs, f' \ooa d  e gs f' \ooa d e gs  \ottava 1 f' \omit Accidental 
      d e gs, f' d e gs, f' d e gs,) \undo \omit Accidental |
    f'16( c e a, ds c d  a cs a c e,  b' e, bf' c, a' e  gs c, g' c, fs a, |
    \ottava 0 f'16 c e a, ds c  d a cs a c e,  b' e, bf' c, a' e  
      gs c, g' c, fs a,) |
    f'16( c e a, ds c d  a cs a c e,  b' e, bf' c, a' e  gs c, g' c, fs a, |
    f'16 c e a, ds c  \clef bass d a cs a c e,  b' e, bf' c, a' e  
      gs-3 c,-1 a'-4 e-2 c'-5 f,-1) |
      
    \barNumberCheck 73
    \clef treble e'16( b d f e' b  d f e' b d f,  d' a c f, d a
      c f, d a c f,) |
    e'16( b d f e' b  d f e' b d e,  d' a c e, d a  c e, d a c b) |
    a'16( e gs b a' e  gs b a' e gs b,  gs' ds fs b, gs ds
      fs b, gs ds fs b,) |
    a'16( e gs b a' e  gs b a' e gs b, 
  }
  \ottava 1 e'4) \ottava 0 r |
  \scaleDurations 2/3 {
    \ottava 1
    f16( c e a, ds c d  a cs a c e,  b' e, bf' c, a' e  gs c, g' c, fs a, |
    \ottava 0 f'16 c e a, ds c  d a cs a c e,  b' e, bf' c, a' e  
      gs c, g' c, fs a,) |
    f'16( c e a, ds c d  a cs a c e,  b' e, bf' c, a' e  gs c, g' c, fs a, |
    f'16 c e a, ds c  \clef bass d a cs a c e,  b' f a c, gs' f
      a c, b' e, c' c,) |
      
    \barNumberCheck 81
    c'16\slurShapeF ( f, b-4 b-1 \clef treble c' f,-2  b-4 b-1 c' f, b b 
      \ottava 1 c' fs, b-4 b,-1 c-5 fs,-2  \ottava 0 b-4 b,-1 c-5 fs, b b,) |
    d'16(g, cs cs d' g,  \ottava 1 \ooa cs cs d' g, cs cs,  
      ef'-5 bf d-4 d, ef-5 bf  \ottava 0 d-4 d, \ooa ef \ooa bf d d,) |
    e'16( a, ds ds, e' a,  ds ds e' a, ds ds  \ottava 1 e' a, ds ds, e a,
      ds ds, e' a, ds ds |
    e'16 a, ds ds, e a,  ds ds, e' a, ds ds  e' a, ds ds, e' a, 
      ds ds, e' a, ds ds, |
    \repeat unfold 6 { e' b ds a } |
    \repeat unfold 5 { e' b ds a } e' b ds a) |
    f'16-5( c e a,-1 d-5 a  c e,-1 b'-5 e, a c,-1  \ottava 0 f-5 c e a,-1 d a
      c e, b' e, a c, |
    f16 c e a, d a  c e, b' e, a c,  
  }
  <b e a b>4->) <d e gs b e>4-> |
  
  \barNumberCheck 89
  \scaleDurations 2/3 {
    a'''16( e gs c, g' e  fs c f c e a,  ds c d a cs a  c e, b' e, bf' c, |
    a'16 e gs c, g' e  fs c f c e a,  ds c d a cs a  c e, b' e, bf' c, |
    a'16 e gs c, g' e  fs c f c e a,  ds c d a cs a  \clef bass 
      c e, b' e, bf' c, |
    a'16 e gs c, g' e  fs c f c e a,  ds c d a cs a  c e, b' e, bf' e, |
  }
  a4) \clef treble <a' c e a>8.( q16 q4 <a d f a>) |
  <a c e a>2-> <a b d a'>-> |
  <a c e a>1*1/2->
  \magnifyMusic 0.63 { \scaleDurations 2/14 {
    \voiceOne \staffDown a,8\slurShapeG ([ b c d e fs gs a b \staffUp c d e fs
      gs a b c d e fs gs a b c d e fs gs] |
  } }
  \oneVoice a4-.) r r2 |
}

leftHand = \relative {
  \clef bass
  \global
  \override Staff.Fingering.avoid-slur = #'inside
  \set tieWaitForNote = ##t
  R1 |
  R1\fermata |
  c4( c8. c16 c4 f, |
  c4 f c b)_\fermata |
  a4-.\moveTextA ^\markup \dynamic fz <a'' c e>8.( q16 q4 <a c f> |
  <a c e>4 <e a c> <a c e>2) |
  a,,4-. <a' e'>8.( q16 q4 <a f'> |
  <a e'>4) << { a,4( e'2) } \\ { a,2. } >> |
  
  \barNumberCheck 9
  gs4-. <f'' d'>8.( q16 <f c'>4) <a,, a'>->( |
  <gs gs'>4) \tuplet 3/2 { <g'' d'>8(\> <f d'> <e d'>\! }  
    <e c'>4) <a,, a'>4->( |
  \tupletDown
  <b b'>4) \clef treble \tuplet 3/2 { <gs'' b e>8-2( gs'-1 cs-1) } 
    <b, ds a' b>4 \clef bass <b, b'>4 |
  \tupletNeutral
  <e, e'>4 \tuplet 3/2 { <b'' gs'>8( <as fss'> <b gs'> } <e, gs e'>4-.) r |
  a,,4-. <a'' c e>8.( q16 q4 <a c f> |
  <a c e>4 <e a c> <a c e>2) |
  <c,,, c'>4-. <g'' e'>8.\slurShapeA ( q16 q4 <g f'> |
  <g e'>4 << { c <g e'>2) } \new Voice { \voiceFour c,2. } >> |
  
  \barNumberCheck 17
  c4-. \tuplet 3/2 { <g'' bf e>8( b, c) } <cs g' bf ef>4\arpeggio 
    <cs, cs'>->( |
  <d d'>4) \tuplet 3/2 { <bf'' d g>8( cs, d) } <ef bf' df g>4\arpeggio 
    <ef, ef'>( |
  <e e'>4) c''8.->( c16) c4-> <c,, c'>( |
  <f f'>) << { s4 d''8. e16-1 f4-1 } \\ { a8. a,16~_4 <f a>2_2_4_5 } >> |
  <g,, g'>4 \clef treble 
    << { \tuplet 3/2 { b''8( f'_2 a_1) } } \\ { g,4_4_5 } >> g'4_2 <g, b f'> |
  \clef bass <c,, c'>4 <c' g' e'>\arpeggio r2 |
  <e,, e'>4-.( <e'' g b>8. q16 q4 <e g c> |
  <e g b>4 <b e g> <e g b>2) |
  
  \barNumberCheck 25
  e,,4-. <e' b'>8. q16 q4 <e c'> |
  <e b'>4 << { e,4( b'2) } \\ { e,2. } >> |
  ds4-. <ds'' c'>8.-> q16 <e c'>4 <e,, e'>( |
  <ds ds'>4) \tuplet 3/2 { <ds'' d'>8( <ds c'>8. <ds b'>16) } <e b'>4 
    <e,, e'> |
  <fs fs'>4-. << { \tuplet 3/2 { b''8( ds gs) } } \\ { fs,4 } >> <fs as e' fs>4
    <fs,, fs'> |
  <b b'>4 \tuplet 3/2 { <fs'' ds'>8( <es css'> <fs ds'>) } <b, ds b'>4-. r |
  e,4-.( <e' g b>8. q16 q4 <e g c> |
  <e g b>4 <b e g> <e g b>2) |
  
  \barNumberCheck 33
  g,,4-. <<
    { b'8. b16 b4 c | b g,( d'2) | }
    \\
    { d2.~ | d4 g,2. | }
  >> 
  g4-. \stemDown \tuplet 3/2 { <d'' b'>8->-2( fs,\fingerPositionA -5 
    g\fingerPositionB -5) } \stemNeutral <af d bf'>4 gs,( |
  a!4-.) \tuplet 3/2 { <f'' d'>8->-2( gs,\fingerPositionC -5 
    a\fingerPositionD -5) } <bf f' gs d'>4 as,( |
  b4-.) g''8.( g16 g4->) <g,, g'> |
  <c c'>4-. \tuplet 3/2 { e'8( c' gs') } f,,4-. 
    \tuplet 3/2 { <f' af>8( df' af') } |
  g,,4-. \tuplet 3/2 { <g' c>8( e' g) } g,,4-. <g' d' f g> |
  <c, g' e'>4\arpeggio r r2 |
  
  \barNumberCheck 41
  \scaleDurations 2/3 { 
    \clef treble a''16-1( e g cs, f cs  e bf d-1 bf cs g \clef bass
      c-1 g bf e, a-1 e  g cs, f-1 cs e bf |
    d16-1 bf cs g c-1 g  bf e, a-1 e g cs,  f cs e bf d bf  cs g c g bf e,) |
    \clef treble c''''-1->( g bf e, a-1 e  g cs, f-1 cs e bf  \clef bass
      d-1 bf cs g c-1 g  bf e, a-1 e g cs, |
    f-1 cs e bf d-1 bf  cs g c-1 g bf e,  a-1 e g cs, f-1 cs  e bf d-1 bf cs 
      g) |
  }
  <ef ef'>4 ef'''8._( ef16 <ef, c' ef>4 af'8. c,16 |
  << { ef4 bf8. ef16 } \\ { ef,2 } >> <af, ef' c'>4) r |
  <b, b'>4_\( b''8. b16 <b, gs' b>4 e'8[ r16 gs,] |
  << { b4 \tuplet 3/2 { fs8( gs a) } } \\ { b,2 } >> <e, b' gs'>4\)\arpeggio 
    r |
  
  \barNumberCheck 49
  <e e'>4 \tuplet 3/2 { <b b'>8( <gs gs'> <b b'>) } <e, e'>8[ r16 <e' e'>](
    <fs fs'>8. <e e'>16) |
  <ef ef'>4 <c c'> <ef ef'> \tuplet 3/2 { <f f'>8( <fs fs'> <g g'>) } |
  <af af'>4 \tuplet 3/2 { <ef ef'>8( <c c'> <ef ef'>) } <af, af'>8[ r16 
    <af' af'>]( <bf bf'>8. <af af'>16) |
  <g g'>4\pSlurShapeA \( <e e'> <g g'> \tuplet 3/2 { <a a'>8( <as as'> 
    <b b'>)\) } |
  <c c'>4-> <c, g' e'>->\arpeggio <f c' a'>->\arpeggio 
    <b, fs' ds'>->\arpeggio |
  <e b' g'>->\arpeggio <a e' cs'>->\arpeggio <d a' d>->\arpeggio 
    <a e' c'>->\arpeggio |
  <d, d'>4-. <f' f'>( <as, as'>8[ r16 <c c'>] <b b'>4) |
  <ds, ds'>4-. <fs' fs'>( <a, a'>8[ r16 <d d'>] <c c'>4) |
  
  \barNumberCheck 57
  << { e1*1/2( \ohn d'2) } \\ { e,,4-. b''8. e16 d2 } >> |
  <e,,, e'>4-.( gs''8. cs16 b2) |
  <<
    { \slurDown \acciaccatura { e,,,8 } e'1_~ | e1 | }
    \\
    { s4 f'8.^>^( f16 f4^> g^> | \voiceThree f4-> d-> f2->) | }
  >> 
  \scaleDurations 2/3 {
    e,16-5( b' gs-4 d' gs, d'  b-4 f' b,-5 f' d gs  d gs f b f b
      gs d' gs, d' b f' \clef treble |
    b,16 f' d gs d gs  f b f-5 b gs d'~
  }
  <d gs>8-2) r r4 \clef bass |
  \scaleDurations 2/3 {
    b,,,16( f' d gs d gs  f b f b gs d'  gs, d' b f' b, f'  d gs d gs f b |
    f16 b gs d' gs, d'  \clef treble b f' b, f' d~ gs-1
  }
  <d f b>8-.) r r4 \clef bass |
  
  \barNumberCheck 65
  \tuplet 3/2 { f16([ d e] } b8) r4 \tuplet 3/2 { f'16([ d e] } b8) r4 |
  \scaleDurations 2/3 {
    f'16( d e b f' d e b f' d e b f' d e b f' d e b f' d e b |
    f'16 e ds d cs c  b as a gs g fs  f e ds d cs c  b as a gs g fs |
    f16 e ds e f e \omit Accidental ds e f e ds e f e ds e f e ds e f e ds e) |
  }
  \undo \omit Accidental
  a,4-.\moveTextA ^\markup \dynamic fz <a'' c e>8.( q16 q4 <a c f> |
  <a c e>4 <e a c> <a c e>2) |
  a,,4-. <a' e'>8.( q16 q4 <a f'> |
  <a e'>4) << { a,4( e'2) } \\ { a,2. } >> |
  
  \barNumberCheck 73
  gs4-. <f'' d'>8.( q16 <f c'>4) <a,, a'>->( |
  <gs gs'>4) \tuplet 3/2 { <g'' d'>8( <f d'> <e d'> } <e c'>4) <a,, a'>4->( |
  \tupletDown
  <b b'>4) \clef treble \tuplet 3/2 { <gs'' b e>8( gs' cs) } 
    <b, ds a' b>4 \clef bass <b, b'>4 |
  \tupletNeutral
  <e, e'>4 \tuplet 3/2 { <b'' gs'>8( <as fss'> <b gs'> } <e, gs e'>4-.) r |
  a,,4-. <a'' c e>8.( q16 q4 <a c f> |
  <a c e>4 <e a c> <a c e>2) |
  g,,4-. <g' e'>8.^( q16 << 
    { \voiceThree e'4 f | e c) } 
    \new Voice { \voiceFour g2~ | g2 } 
  >> \oneVoice f4_( e |
  
  \barNumberCheck 81
  d4-.) \tuplet 3/2 { <a'' f'>8( cs, d) } <ds a' fs'>4\arpeggio ds,( |
  e4-.) \tuplet 3/2 { <bf'' g'>8( ds, e) } <f bf d bf'>4\arpeggio <f, f'> |
  <f, f'>4-. <f'' f'>8.\ff q16 q4 <g g'> |
  <f f'> <c c'> <f f'>2-> |
  \scaleDurations 2/3 {
    f,16-5( b a ds-1 a-5 ds  b f'-1 b,-5 f' ds a'-1  ds,-5 a' f b-1 f-5 b
      a ds a-5 ds b f' |
    \clef treble b,16-5 f' ds a' ds,-5 a'  f b f-5 b a ds  a ds b f' b, f'
      ds a' ds, a' f b) |
    <e,, a c e>8\fz r d''16( a  c e,-5 b'-1 e, a c,-5  f-1 c e a,-5 d-1 a
      c e, b'-1 e, a c, | \clef bass
    f16 c e a, d a  c e, b' e, a c,
  }
  <e, e'>4->) <e, e'>-> |
  
  \barNumberCheck 89
  a16->( e' c' e, \articulationInsideSlur \repeat unfold 3 { a,-> e' c' e, } |
  a,16-> e' c' e,  e,-> e' c' e,  a,-> e' c' e,  c' e, c' e, |
  \repeat unfold 3 { a,16-> e' c' e, } a,-> e' c' e,) |
  \tuplet 3/2 4 { a8 gs g  fs f e  ds d cs  c b bf } |
  a4 <a e' a>8. q16 q4 <a d a'> |
  <a e' a>2-> <a f' a>-> |
  <a e' a>1*1/2->
  \magnifyMusic 0.63 { \scaleDurations 2/14 {
    \voiceFour a8([ b c d e fs gs a b c d e fs gs a b c \clef treble d e fs gs
    a b c d e fs gs] |
  } }
  \oneVoice a4-.) r r2 |
  \bar "|."
}

dynamics = {
  \cutTime
  \override TextScript.Y-offset = -0.5
  s1\p |
  s1 |
  s1\tweak X-offset 0 \pp |
  s1 |
  \tag layout { s1^\fRisoluto | }
  \tag midi   { s1\f | }
  s1 * 3 |
  
  \barNumberCheck 9
  s1 * 4 |
  s1\f |
  s1 |
  s1^\dimMarkup |
  s2 s4...\< s32\! |
  
  \barNumberCheck 17
  s1 * 6 |
  s1\f |
  s1 |
  
  \barNumberCheck 25
  s1^\dimMarkup |
  s1 * 4 |
  s4 s\< s2\! |
  s1\f |
  s1 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1\f |
  s1 * 7 |
  
  \barNumberCheck 49
  s4\< s8.. s32\! s2 |
  s1 * 7 |
  
  \barNumberCheck 57
  s1 * 4 |
  s8.\ff\> s16\! s2. |
  s2 s\fz |
  s1\ff |
  s2 s\fz |
  
  \barNumberCheck 65
  s1\p |
  s1 |
  s4 s2.\cresc |
  s2.... s32\! |
  s1\f |
  s1 * 3 |
  
  \barNumberCheck 73
  s1 * 8 |
  
  \barNumberCheck 81
  s1 * 3 |
  s2 s4...\> s32\! |
  \override DynamicTextSpanner.style = #'none
  s4\p s2.\cresc |
  s1 * 3 |
  
  \barNumberCheck 89
  s1\ff |
  s1 |
  s8 s4.\dim s2 |
  s1\ff |
  s4 s2.\fff |
}

pedal = {
  \cutTime
  s1 * 4 |
  s2\sd s8.. s32\tweak Y-offset 2 \su s4 |
  s1 |
  s2\sd s8.. s32\su s4 |
  s1 |
  
  \barNumberCheck 9
  s2\sd s2\tweak Y-offset 2 \su |
  s2\sd s2\tweak Y-offset 2 \su |
  s2\sd \override SustainPedal.Y-offset = 2 s4...\su\sd s32\su |
  s4\sd \tuplet 3/2 { s8 s\su s\sd } s8 s\su s4 |
  \revert SustainPedal.Y-offset
  s2\sd s8.. s32\tweak Y-offset 2 \su s4 |
  s1 |
  s2\sd s\tweak Y-offset 2 \su |
  s1 |
  
  \barNumberCheck 17
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  s2....\sd s32\su |
  s4..\sd s16\su s2 |  
  s2.\sd s8 s\su |
  s2....\sd s32\su |
  s2\sd s8.. s32\tweak Y-offset 2 \su s4 |
  s1 |
  
  \barNumberCheck 25
  s2\sd s8.. s32\tweak Y-offset 2 \su s4 |
  s1 |
  s4..\sd \override SustainPedal.Y-offset = 2 s16\su s4..\sd 
    s16\tweak Y-offset -1 \su |
  s4..\tweak Y-offset -1 \sd s16\su s4..\sd s16\su |
  s4..\tweak Y-offset -1 \sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s2 |
  \revert SustainPedal.Y-offset
  s2\sd s8.. s32\su s4 |
  s1 |
  
  \barNumberCheck 33
  s2\sd s8.. s32\su s4 |
  s1 |
  s4..\sd s16\tweak Y-offset 1 \su s4..\tweak Y-offset 1 \sd s16\su |
  s4..\sd s16\tweak Y-offset 1 \su s4..\tweak Y-offset 1 \sd s16\su |
  s2\sd s4... \override SustainPedal.Y-offset = 2 s32\su |
  s4..\sd s16\su s4..\sd s16\su |
  \revert SustainPedal.Y-offset
  s4..\sd s16\su s4..\sd s16\su |
  s8..\sd s32\su s2. |
  
  \barNumberCheck 41
  s1 * 4 |
  s4..\sd \override SustainPedal.Y-offset = 2 s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  \revert SustainPedal.Y-offset
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  
  \barNumberCheck 49
  s2\sd s8 s\su s4 |
  s1 |
  s2\sd s8 s\su s4 |
  s1 |
  s4 s\sd s\su\sd s8..\su\sd \override SustainPedal.Y-offset = 2 s32\su |
  s4\sd s\su\sd s\su\sd s8..\su\sd s32\su |
  \revert SustainPedal.Y-offset
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  
  \barNumberCheck 57
  s4..\sd \override SustainPedal.Y-offset = 2 s16\su s4..\sd s16\su |
  \revert SustainPedal.Y-offset
  s4..\sd \override SustainPedal.Y-offset = 2 s16\su s4..\sd s16\su |
  \revert SustainPedal.Y-offset
  s1 * 6 |
  
  \barNumberCheck 65
  s1 * 4 |
  s2\sd s8.. s32\tweak Y-offset 2 \su s4 |
  s1 |
  s2\sd s8.. s32\su s4 |
  s1 |
  
  \barNumberCheck 73
  s2\sd s2\tweak Y-offset 2 \su |
  s2\sd s2\tweak Y-offset 2 \su |
  s2\sd \override SustainPedal.Y-offset = 2 s4...\su\sd s32\su |
  s4\sd \tuplet 3/2 { s8 s\su s\sd } s8 s\su s4 |
  \revert SustainPedal.Y-offset
  s2\sd s8.. s32\tweak Y-offset 2 \su s4 |
  s1 |
  s2\sd s8.. s32\tweak Y-offset 2 \su s4 |
  s1 | 
  
  \barNumberCheck 81
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  s2.\offset X-offset -2 \sd \override SustainPedal.Y-offset = 2 s8..\su\sd 
    s32\su |
  \revert SustainPedal.Y-offset
  s1 *3 |
  s2....\offset X-offset -2.5 \sd s32\tweak Y-offset 2 \su |
  s1 |
  
  \barNumberCheck 89
  s2.\sd s4\su |
  s4\sd s4\su\sd s2\su\sd |
  s2... s16\su |
}

forceBreaks = {
  \cutTime
  
  % page 1
  s1\noBreak s1\noBreak s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  % page 2
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak

  % page 3
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
 
  % page 4
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak

  % page 5
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak

  % page 6
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  \grace { s8 } s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
 
  % page 7
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  % page 8
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  % page 9
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\noBreak s1\noBreak s1\pageBreak
}

etudeElevenMusic = \score {
  \header {
    opus = "Opus 25, No 11"
  }
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 11" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeElevenMidi = \book {
  \bookOutputName "etude-op25-no11"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
