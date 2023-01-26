%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

\include "global-variables.ily"

%%% Positions and shapes %%%

markupMoveA = \offset Y-offset 1.25 \etc
markupMoveB = \tweak Y-offset -4 \etc
markupMoveC = \tweak Y-offset 2.5 \etc
markupMoveD = \tweak Y-offset 3.5 \etc
markupMoveE = \tweak Y-offset 4 \etc

slurPositionsA = \tweak positions #'(3 . 2) \etc
slurPositionsB = \tweak positions #'(4 . 0) \etc
slurPositionsC = \tweak positions #'(4 . 2) \etc

slurShapeA = \shape #'((0 . -1) (0 . 1) (0 . 1) (0 . -3)) \etc
slurShapeB = \shape #'(
                        ()
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 3))
                      ) \etc
slurShapeC = \shape #'((-1 . -2) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeD = \shape #'((-2 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'(
                        ((-2 . -1) (0 . 0) (0 . 0) (0 . 0))
                        ()
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 3))
                      ) \etc
slurShapeF = \shape #'(
                        ()
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 1))
                      ) \etc

rotateHairpinA = \once \override Hairpin.rotation = #'(5 -1 0)

%%% Music %%%

global = {
  \once \omit Staff.TimeSignature
  \time 11/4
  \key cs \minor
  \accidentalStyle piano
  \override Staff.Fingering.avoid-slur = #'inside
}

rightHandUpper = \relative {
  s1*11/4 |
  \time 3/4
  \voiceOne
  \grace { s8 } s8 \once \hideNotes cs''-\slurShapeD ( s2 |
  e2-5 ds8.-4 cs16-3 |
  cs4-5 bs-4 cs-\tweakInsideSlur -\markupMoveA ^\fiveToFour |
  ds4-5 gs,4.-3) gs8-\slurPositionsA ( |
  gs4 cs b |
  b4 a gs) |
  gs4( fs fs8 e) |
  
  \barNumberCheck 9
  e8( ds) s2 |
  s8 \once \hideNotes cs'-\slurShapeE ( s2 |
  e2 ds8. cs16 |
  cs2 b4 |
  b2 b8. b16 |
  b4 a2~ |
  a2.~ |
  a2.) |
  
  \barNumberCheck 17
  c2~-\slurShapeB ( c8. c16 |
  c4 b) r |
  s8 \once \hideNotes gs-\slurShapeC ( s2 |
  b2 b4 |
  b8) <b, e gs>_._( <e gs b>_. <gs b e>_. <b e gs>_. 
    \tag layout { <gs b e>_.) } 
    \tag midi   { <gs b e>) } |
  cs4-\slurPositionsB ( 
    \tag layout { \afterGrace ds~ { ds8*1/4[ ds e ds css ds] } } 
    \tag midi   { ds8~ \tuplet 3/2 { ds32 ds e ds css ds } } fs8. e16 |
  ds8 gs4) s4. |
  ds4( es fs |
  
  \barNumberCheck 25
  fs8 es as4) s |
  es4-2-4( fs-2-3 fss-2-4 |
  gs4-3-5 <fs a>2) |
  <g bf>4(^\riten <ef g> s |
  ef2->) ds!8(^\pp ds |
  ds2 ds8. e16 |
  fs2) fs8..( gs32 |
  gs2 fs8.. ds32 |
  
  \barNumberCheck 33
  ds4. cs8[ b8. cs16] |
  <b ds>2) ds8..( e32 |
  fs2 fs8.. gs32 |
  a4) s2 |
  s2 s8 ds,( |
  e2 e8.. d32) |
  d8.( c16 b4) d8.( c16 |
  b4 b8 a16) b\rest b4\rest |
  
  \barNumberCheck 41
  s2. * 3 |
  b2( b4 |
  b2 bs8.. cs32) |
  s2. |
  e2( ds8. cs16) |
  cs4-\slurPositionsC ( bs cs |
  
  \barNumberCheck 49
  ds4 gs,4.. gs16) |
  gs4( cs b |
  b4 a gs) |
  gs4( fs fs8 e |
  e8 ds) s2 |
  s2. |
  e'2-\slurShapeF ( ds8. cs16 |
  cs4 b b |
  
  \barNumberCheck 57
  b2 cs8. b16 |
  b4 a2~ |
  a2) a8.( a16 |
  a4 gs2) |
  e'2( e4~ |
  e4 cs2 |
  gs2 gs4-\tweakInsideSlur ^\riten |
  gs4 fs2 |
  
  \barNumberCheck 65
  \clef bass
  e4 e8 ds ds8.. cs32 |
  \once \hideNotes cs8) s8 s2 |
}

rightHandLower = \relative {
  \tweak X-offset 30
  r1*11/4 |
  \voiceTwo
  \time 3/4
  \grace { s8 } b'8\rest^\pp <gs cs> q q q q |
  <e a>8 q q q q q |
  <ds fs>8 q q q q q |
  <ds fs>8 q q q <bs fs'>8 q |
  r8 cs <cs e> q q q |
  <cs e>8 q q q q q |
  <cs ds>8[ q] <a ds>[ <gs ds'>] <gs cs>[ q] |
  
  \barNumberCheck 9
  <gs bs>8[ q] <gs gs'>^( q  <ds' fs gs> q) |
  b'8\rest <gs cs> q q q q |
  <e a>8 q q q q q |
  <ds a'>8 q q q a' <ds, fs> |
  <d fs>8 q <d f> q <cs es> q |
  <cs fs>8 q q q q q |
  <e fs>8 q q q q q |
  <e fs>8 q q q q q |
  
  \barNumberCheck 17
  <e fs>8 q <e a> q <e fs> q |
  <e gs>8 q q q q q |
  g8\rest <e gs> q q q q |
  <b e>8 q q q <b ds a'> q |
  <b e gs>8 s8 s2 |
  <fss' as>8 q q q <fss cs'> q |
  <fss as> <gs ds'> q q <gs b ds> q |
  <gss bs>8 q <gss ds'> q q q |
  
  \barNumberCheck 25
  <gs b>8[ q] <gs as es'> q q q |
  <gs css>8 q <a ds> q q q |
  <gs e'>8[ q] <a ds> q q q |
  <bf ef>8[ q] <g bf>[ q] <af bf f'>[ <d, af' bf>] |
  <ef g>8 ef ef ef s4 |
  r8 <ds fs> q q r <fs b> |
  r8 <fs b ds> q q~ q q~ |
  q8 q q <fs~ b~ ds> <fs b> <fs b~> |
  
  \barNumberCheck 33
  b8 <e, g b> q <e g>~ q <e g b~> |
  << 
    { \stemDown \once \hideNotes b'2 } 
    \new Voice { \voiceTwo e,8\rest <ds fs>[ q q] } 
  >> r8 <fs b>~ |
  q8 <fs b ds> q q~ q q |
  q8 q4 q q8 |
  q2^\fermata r8 <fs b> |
  <e b'>8 q q q q q |
  <e a>8 q <e gs> q <e a> q |
  <e g>8 q <c f>4 s4 |
  
  \barNumberCheck 41
  \oneVoice R2. |
  r8 \voiceTwo <e gs>^( q q q q) |
  b'8\rest <e, gs>^( q q q q) |
  <b e>8 q q q <b ds a'> q |
  <b e gs>8_\<_\pocoRiten q \tempo 4 = 60 q q \tempo 4 = 54 <bs fs' gs> 
    \tag layout { q8\! } 
    \tag midi   { q16. s32 } |
  \tempo 4 = 66
  b'8\rest <gs cs>^( q q q q) |
  <e a>8 q q q q q |
  <ds fs>8 q q q q q |
  
  \barNumberCheck 49
  q8 q q q <bs fs'> q |
  r8 cs <cs e> q q q |
  q8 q q q q q |
  <cs ds>8 q <a ds> <gs ds'> <gs cs> q |
  <gs bs>8[ q] \stemUp <gs gs'>^( q <gs ds' fs gs> <ds' fs gs>) \stemDown |
  b'8\rest <gs cs>8^( q q q q) |
  <e a>8[ q q q] q[ q] |
  <d es>8 q q q <d fs> q |
  
  \barNumberCheck 57
  <d gs>8 q d d <cs gs'> q |
  <cs fs>8 q q q q q |
  q8 q q q q q |
  <cs e>8 q q q q q |
  <e cs'>8 q q q q q |
  q8 q <cs e> q <cs gs'> q |
  <gs cs>8 q <gs cs e> q <gs bs fs'> q |
  <gs b es>8[ q] <fs as e'>[ q] <fs a ds>[ q] |
  
  \barNumberCheck 65
  <e gs ds'>8 q <e gs cs> <ds fss cs'> <ds fs cs'> <ds fs bs> |
  <e cs'>8 <gs cs e>^( q q <fs cs' ds> <fs bs ds> |
  <e cs'>8[ <gs cs e> <fs cs' ds>]) \tempo 4 = 40 d4\rest ^\fermata 
    \tempo 4 = 66 <fs bs ds>8^( |
  <e cs'>4) d\rest q^.^( |
  q2.) |
}

rightHand = <<
  \clef treble
  \global
  \tempo "Lento" 4 = 66
  \new Voice \rightHandUpper
  \new Voice \rightHandLower
>>

leftHand = \relative {
  \clef bass
  \global
  \override TextScript.Y-offset = 0.5
  \magnifyMusic #2/3 {
    gs,4(\< ds'4.-2\! cs8-4\> cs4-3 bs-4\! a'4.-1\> gs8-3 fss16-4[ gs a gs]
      b-1[ a e-5 es]  fs-3[ es gs-2 fs]  a-1[ gs cs, ds)\!] |
  }
  \bar "||"
  \time 3/4
  \acciaccatura { e8 } e'2-1(\> ds8.-2 cs16-3\! |
  cs4..-2 ds32-1 cs b8. a16-4 |
  a4~ a16 gs fss gs  b-1 a fs ds |
  bs4)-5 r8 fss16-4->( gs \acciaccatura { b8\< } a16 gs cs-1 ds-2\! |
  e4-1) cs,( gs''8.-1 gs16-2 |
  gs4-1) \tupletUp \tuplet 3/2 4 { fs,8_5( cs'_2 fs_1  gs_3 b_1 a_2 } |
  a4-1\> bs,-4 \tag layout { cs8-\tweakInsideSlur\trill bs32 cs ds e\! }
    \tag midi { \tuplet 3/2 { ds32 cs ds cs ds cs } bs cs ds e } |
  
  \barNumberCheck 9
  gs,4)  fss16->-5(\< gs-4 bs ds  fss-1 gs-3 \acciaccatura { b8 } a16. 
    gs32)\! |
  \acciaccatura { cs,8 } e'2(\> ds8.\! cs16) |
  cs4.-2~  cs32 bs-3 ds-1 cs-2  b8. a16 |
  b,,8_5( fs'16 b_1  ds_3 fs_2 a_1 b_4  ds_2[ cs_3] 
    \tuplet 3/2 { cs16_2 b_1 a } |
  gs4.-3 gs8-3 \acciaccatura { b8 } a8. gs16-3 |
  gs4-1) fs,8.(\< cs'16  fs-1 gs-4 a b\! |
  c16 gs-4 a b  cs a-4 as b) cs4~(_\diminMarkup |
  cs16\pp b-3 d c  b-1 gs b-1 a  c-1 a e-4 c |
  
  \barNumberCheck 17
  a'16-2 gs b-1 a  fs-3 es g fs  a-1 fs c-4 a-5) |
  b16-4-\slurShapeA (\< e-2 gs-1 e-2  b'4. gs8\! |
  e'16-1 b-2 cs16.-1 gs32-3  b4-2_\ten  cs16-1 gs-3 b16.-2 e,32-5 |
  gs4~_\ten -\tweakInsideSlur -\markupMoveC ^\twoToOne gs16 as,-4 cs b  
    fs'8. e16 |
  e4) r r |
  e'4( ds as |
  cs4 \grace { b8[ ds cs] } b8)\noBeam  fss,32-4(\< gs as b-1  
    css-4[ ds fss-1 gs-3]  \scaleDurations 2/3 { as32[ b-1 css-4] 
                                                 ds[ e es])\! } |
  \clef treble fs4-2^( es16.[ fs32] \scaleDurations 2/3 { es16[ dss es] }
    bs'8. ds,16 |
    
  \barNumberCheck 25
  ds4-3-> \grace { css8[ es ds] } css8)\noBeam \clef bass gss,32->-4(\< as cs 
    css  dss[-4 es gss-1 as-3]  \clef treble \scaleDurations 2/3 {
    cs32[ css-1 dss-4]  es-3[ gss-1 as]\! } |
  b8..\f b,32 b4) \clef bass \grace { as16([ b)] } \tag layout { b4->\trill }
    \tag midi { \tuplet 3/2 {\repeat unfold 6 { a32 b } } } |
  \tuplet 14/8 { as32( b cs b-1 a gs fss gs a-1 gs fs e-1 ds cs) }
    c32->-1([ b as b-1]  bf->[ a gs a] \tuplet 6/4 8 { af->[ g fs g_1 fs f]
    e[ ef d df c b)] } |
  \magnifyMusic #2/3 { \scaleDurations 6/58 { 
    \stemDown \fingeringInsideStaffOn
    \once \normalsize bf8( a bf c d-1 ef-3 f g-1 af-3 bf c-1 d-4 ef f g-1
    af-3 bf c-1 d-4 ef f g f ef d-1 c bf a c-1 bf af g-1 f ef d-1 c bf a-4
    cf-2 bf-3 c-1 b d-1 c bf a c-1 bf af g f ef d c bf af g f
  } } \stemNeutral \fingeringInsideStaffOff |
  ef4) r ds'''8.(\pp\> cs16\! |
  b16-1 fs b,-5 cs-3  ds-1 fs,-2 b,) r ds''8.-2(\> cs16-3\! |
  b16-1 fs b,-5 cs -3  ds fs, b,) r ds''8.(\> cs16\! |
  b16 fs b, cs  ds fs, b,) r ds''8.(\> cs16\! |
  
  \barNumberCheck 33
  b16-1 g-2 e-4 fs-3  g-2 b,-1 b,) r ds''8.(\> cs16\! |
  b16 fs b,-5 cs  ds-1 fs, b,) r ds''8.(\> cs16\! |
  b16 fs b, cs  ds fs, b,) r ds''8.(\> cs16\! |
  b16 fs b, cs  ds fs, b,) r_\smorz \tag layout { ds''8.( } 
                                    \tag midi   { ds8.\p } cs16 |
  \set Score.tempoHideNote = ##t
  b16 fs b, cs  ds fs, b,) \tempo 4 = 10 r16\fermata \tempo 4 = 66
    b''8.\(-2 a16-3 |
  a4-1 g-4 \tag layout { \afterGrace 15/16 gs-\tweakInsideSlur\trill\<
                         { fss16[( gs]) } } 
           \tag midi   { \tuplet 3/2 {\repeat unfold 5 { a32 gs } fs gs } } |
  a4\! e a |
  e4 f\) c8.( bf16 |
  
  \barNumberCheck 41
  a16 c f c a'4) r |
  b,16( e gs e b'4. gs8 |
  e'16-1 b cs16.-1 gs32  b4-\tweakInsideSlur-\markupMoveD ^\ten cs16-1 gs 
    b16.-2 e,32 |
  gs4-1~-\tweakInsideSlur-\markupMoveE ^\ten  gs16 as,-4 cs b  fs'8.-1 e16-2 |
  e4-1~ e16 fss, a gs  ds'8. cs16) |
  \appoggiatura { cs,16[\fz cs'] } \after 16 \> e'2(^\twoToOne ds8. cs16\! |
  cs4.. ds32 cs b8. a16) |
  a4~( a16 gs fss gs  b a fs ds |
  
  \barNumberCheck 49
  bs4) r8 fss16( gs \acciaccatura { b8 } a16 gs cs_1 ds_2 |
  e4-1 cs,) gs''8.(-1 gs16-2 |
  gs4-1) \acciaccatura { fs,,8 } \tuplet 3/2 4 { fs'8_1( cs'_5 fs gs b a_2) } |
  a4-1( bs, \tag layout { cs8-\tweakInsideSlur\trill bs32 cs ds e }
    \tag midi { \tuplet 3/2 { ds32 cs ds cs ds cs } bs cs ds e } |
  gs,4) \magnifyMusic #2/3 { \scaleDurations 4/33 { \rotateHairpinA fss,8(\f\<
    gs a as b bs cs css ds e es fs fss gs a as b bs cs css ds e es fs fss gs a
    as b bs cs css ds)\! } } |
  e2\(\f\> ds8. cs16 |
  cs4.~ cs32 bs ds cs  b8. a16-4\! |
  a4-1 gs \grace { es16[( fs]) } \tag layout { fs4_>-\tweakInsideSlur\trill }
    \tag midi { \tuplet 3/2 {\repeat unfold 6 { gs32 fs } } } |
    
  \barNumberCheck 57
  es4 gs'->\) es,,->_4 |
  fs16-3( gs fs es  fs\< gs a-1 gs-3  b-1 a gs fs |
  e'16-1 ds-3 css ds\!  b'-1 a gs fs  e-1\> ds-3 fs-2 a-1\! |
  gs,16-5 cs e cs  gs'4.-1 e8) |
  cs'16( gs a e  gs4  cs16 gs a e |
  gs4 a16 e gs16. cs,32)  e4(~ |
  e4~  e16 fss, a gs  ds'8.\> cs16)\! |
  \tag layout { cs4~_\ten }
  \tag midi   { cs4\p } cs16 es, gs fs  b4~_\diminMarkup |
  
  \barNumberCheck 65
  b16( ds,-4 fs e as css,-4 e ds  a'8. gs16 |
  cs,4~ cs16 ds fs e  a8. gs16 |
  cs,16[ ds fs e a8)] r4\fermata gs8( |
  cs,4) r <cs gs'>-.( |
  q2.) |
  \bar "|."
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  s1*11/4-\tweak X-offset 0 \p |
  s2. * 7 |
  
  \barNumberCheck 9
  s2. * 3 |
  s2.\pp |
  s2. * 4 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. |
  s2.\< |
  \scaleDurations 8/14 { s32*13 s32\! } s2^\crescMarkup |
  s2.\ff |
  s8\fz s\p s2 |
  s2. * 3 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2.-\tweak X-offset 0 \pp |
  s2. * 7 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 4 |
  s2.\pp |
  s2. * 3 |
  
  \barNumberCheck 65
  s2. |
  s2.^\smorz |
  s2 s8 s\pp |
}

pedal = {
  s1*11/4 |
  s2. * 7 |
  
  \barNumberCheck 9
  s2. * 3 |
  s2\sd s16 s-\tweak Y-offset 2 \su s8 |
  s2. * 4 |
  
  \barNumberCheck 17
  s2. * 4 |
  s2\sd s8 s\su |
  s2. * 3 |
  
  \barNumberCheck 25
  s2. * 4 |
  s2\sd s8. s16\su |
  \repeat unfold 3 { s2\sd s4\su | }
  
  \barNumberCheck 33
  \repeat unfold 4 { s2\sd s4\su | }
  s4\sd s8. s16\su s4 |
  s2. * 3 |
  
  \barNumberCheck 41
  s2. * 5 |
  \tag layout { s16 s8.\sd } \tag midi { \grace { s8\sd } s4 } s8 s\su s4 |
  s2. * 2 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 3 |
  s2 s4\sd |
  s2 s4\su |
}

forceBreaks = {
  s1*11/4\noBreak \grace { s8 } s2.\noBreak s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  s2.\noBreak s2.\noBreak \grace { s8 } s2.\noBreak s2.\break\noPageBreak
  s2.\noBreak s2.\noBreak s2.\break\noPageBreak
  s2.\noBreak s2.\noBreak s2.\pageBreak
  
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  s2.\noBreak s2.\noBreak s2.\break\noPageBreak
  s2.\noBreak s2.\break\noPageBreak
  s2.\break\noPageBreak
  s2.\pageBreak
  
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } \grace { s8 } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  s2.\noBreak s2.\noBreak s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  s2.\noBreak s2.\noBreak s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
}

etudeSevenMusic = \score {
  \header {
    opus = "Opus 25, No 7"
  }
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 7" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeSevenMidi = \book {
  \bookOutputName "etude-op25-no7"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
