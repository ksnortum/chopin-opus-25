%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

\include "global-variables.ily"

%%% Positions and shapes %%%

clefMoveA = \once \override Staff.Clef.extra-spacing-width = #'(0 . 1)

noteHShiftA = \tweak NoteColumn.force-hshift -1 \etc

pSlurShapeA = \shape #'(
                         ()
                         ((0 . 0) (0 . -10) (0 . -10) (0 . 4))
                       ) \etc
pSlurShapeB = \shape #'(
                         ((0 . 0) (0 . -12) (0 . -11) (0 . 4))
                         ((0 . 0) (0 . 2) (0 . 2) (0 . 0))
                       ) \etc
pSlurShapeC = \shape #'(
                         ((0 . 0) (0 . -12) (0 . -10) (0 . 4))
                         ((0 . 0) (0 . 0.5) (0 . 1) (0 . -2))
                       ) \etc
pSlurShapeD = \shape #'((0 . -2) (0 . 0) (0 . 1) (0 . -0.25)) \etc

slurShapeA = \shape #'((0 . 3) (0 . 2) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 3) (0 . 2) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 2) (0 . 2) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0) (0 . -1.5) (0 . -1.5) (0 . 0)) \etc
slurShapeF = \shape #'((0 . 0) (0 . -1) (0 . -1.5) (0 . 0)) \etc
slurShapeG = \shape #'((0 . 2.5) (0 . 1.5) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . -2)) \etc
slurShapeI = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc
slurShapeJ = \shape #'((0 . 3) (0 . 2) (0 . 0) (0 . 0)) \etc
slurShapeK = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . -2)) \etc
slurShapeN = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc
slurShapeO = \shape #'((0 . 0) (0 . 0) (0 . -0.5) (0 . -0.5)) \etc
slurShapeP = \shape #'((0 . 0) (0 . 0) (0 . -1) (0 . -2)) \etc
slurShapeQ = \shape #'(
                        ()
                        ((0 . 1.25) (0 . 0.5) (0 . 0) (0 . 0))
                      ) \etc
slurShapeR = \shape #'((-1 . 3) (0 . 2) (0 . 2) (0 . 3)) \etc
slurShapeS = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -2)) \etc
slurShapeT = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key gs \minor
  \accidentalStyle piano
}

rightHand = \relative {
  \clef treble
  \global
  \override Staff.Fingering.avoid-slur = #'inside
  \tempo "Allegro" 2 = 69
  
  <b' ds>16-1-4-\pSlurShapeA \( <cs e>-2-5 
    \repeat unfold 7 { <b ds>16 <cs e> } |
  \repeat unfold 8 { <b ds>16 <cs e> } |
  \repeat unfold 8 { <b ds>16 <cs e> } |
  <b ds>16-1-4 <cs e>-2-5 <b ds>-1-4 <as css>-2-3  <b ds> <cs e> <b ds> 
    <as css> <b ds> <cs e> <b ds> <as css>  <b ds>-1-4 <cs e>-2-5 <b ds>-1-4( 
    <as css>-2-4) |
  <b ds>16-1-3 <cs e>-2-4 <css es>-1-5 <ds fs>-2-3  <dss fss>-1-4 <es gs>-1-3
    <fs a>-2-4 <fss as>-1-3  <gs b>-2-4 <gss bs>-1-5 <as cs>-2-3 
    <ass css>-1-4  <bs ds>-1-3 <cs e>-2-4 <css es>-1-5 <ds fs>-2-3 |
  \ottava 1 <dss fss>16-1-4 <es gs>-1-3 <fs a>-2-4 <fss as>-1-3  
    <gs b>8-2-4 \) \ottava 0 r r2 |
  <e, gs>16-1-4-\pSlurShapeB \( <fs a>-2-5 
    \repeat unfold 7 { <e gs> <fs a> } |
  <e gs>16 <fs a> <e gs> <ds fss>-2-3  <e gs> <fs a> <e gs> <ds fss>
    <e gs> <fs a> <e gs> <ds fss>  <e gs>-1-4 <fs a>-2-5 <e gs>-1-4(
    <ds fss>-2-4) |
    
  \barNumberCheck 9
  <e gs>16-1-3 <fs a>-2-4 <fss as>-1-3 <gs b>-2-4  <gss bs>-1-5 <as cs>-2-3 
    <b d>-1-4 <bs ds>-1-3  \ottava 1 <cs e>-2-4 <d f>-1-5 
    <ds fs>-2-3 <e g>-1-4  <es gs>-1-3 <fs a>-2-4 <fss as>-1-3 <gs b>-2-4 |
  <gss bs>16-1-5 <as cs>-2-3 <b d>-1-4 <bs ds>-1-3  <cs e>8-2-4\) \ottava 0
    r r2 |
  \ottava 1 <cs e>16_4_2-2-4( <b ds>_3_1-1-3 <as cs>_4_2-3-5 
    <gs b>_3_1-2-4 <fss as>_4_2-1-3 <e gs>_3_1-1-2 <ds fss>_5_3-3-5 
    <cs e>_4_2-2-4 \ottava 0 <b ds>_3_1-1-3 <as cs>_4_2-3-5 <gs b>_3_1-2-4 
    <fss as>_4_2-1-3 <e gs>_3_1-1-2 <ds fss>_5_3-3-5 <cs e>_4_2-2-4 
    <b ds>_1_3-1-3 |
  <as css>16-2-3 <b ds>-1-4 <as css> <b ds>  <cs e>-2-5 <b ds>-1-4 <cs e>-5 
    <b ds>-4  <as cs>-2-3 <b ds>-1-5 <as cs>-4 <b ds>-5 <as cs>-4 <gs b>-3
    <as cs> <gs b>) |
  <cs' e>16( <b ds> <as cs> <gs b>  <fss as> <e gs> <ds fss> <cs e>
    <b ds> <as cs> <gs b> <fss as>  <e gs> <ds fss> <cs e> <b ds>) |
  <as css>16-2-4( <b ds>-1-3 <cs e>-2-4 <css es>-1-5  <ds fs>-2-3 <dss fss>-2-4
    <es gs>-1-3 <fs a>-2-4  <fss as>-1-3 <gs b>-2-4 <a c>-1-5 <as cs>-2-3
    <b d>-1-4 <bs ds>-1-3 <cs e>-2-4 <css es>-1-5 |
  <ds fs>8-2) r \ottava 1 <b'' ds>16-1-3-\slurShapeS ( <cs e>-2-4 
    <b ds>-1-3 <as cs>-2-4 <gs b>-1-3 <as cs> <gs b> <fs as>-2-4  <e gs>-1-3 
    <fs as> <e gs> <ds fs>-2-4 |
  \ottava 0 <cs e>16-1-3 <ds fs> <cs e> <b ds>-2-4  <as cs>-1-3 <b ds> <as cs>
    <gs b>  <fs as> <gs b> <fs as> <e gs>  <ds fs> <e gs> <ds fs> <cs e>) |
    
  \barNumberCheck 17
  <b ds>16-1-3( <cs e>-2-4 <css es>-1-5 <ds fs>-2-3  <dss fss>-1-4 <es gs>-1-3
    <fs a>-2-4 <fss as>-1-3  <gs b>-2-4 <fss as>-1-3 <fs a>-2-4 <es gs>-1-3
    <e g>-1-5 <ds fs>-2-4 <d f>-1-5 <cs e>-2-4 |
  <bs ds>16-1-3 <b d>-1-5 <as cs>-2-4 <a c>-1-5  <gs b>-2-4 <a c>-1-5
    <as cs>-2-3 <b d>-1-4  <bs ds>-1-3 <cs e>-2-4 <css es>-1-5 <ds fs>-2-4
    <e g>-1-5 <ds fs>-2-4 <d f>-1-5 <cs e>-2-4) |
  <b ds>16-3-\pSlurShapeC \( <cs e>-5 \repeat unfold 3 { <b ds> <cs e> } 
    <b ds>-4 <cs e>-5 \repeat unfold 3 { <b ds> <cs e> } |
  <b ds>16_1 <cs e>_2 <b ds>_1 <as css>-2-3  <b ds> <cs e> <b ds> <as css>
    <b ds> <cs e> <b ds> <as css>  <b ds>-1-4 <cs e>-2-5 <b ds>-1-4( 
    <as css>-2-4) |
  <b ds>16 <cs e> <css es>-5 <ds fs>  <dss fss>_1 <e gs>_1 <fs a> <fss as>
    <gs b> <gss bs>-5 <as cs> <ass css>_1  <b ds>_1 <cs e> <css es>-5 <ds fs> |
  \ottava 1 <dss fss>16 <e gs> <fs a> <fss as>  <gs b>8\) \ottava 0 r r2 |
  <d, f>16-1-4( <e g>-2-5 \repeat unfold 7 { <d f> <e g> } |
  <d f>16_1 <e g>_2 <d f>_1 <cs e>-2-3
    \repeat unfold 3 { <d f> <e g> <d f> <cs e> } |
    
  \barNumberCheck 25
  <d f>16-1-4 <ds fs> <dss fss>_1 <es gs>_1  <fs a> <g bf> <gs b> <a c>-5
    <bf df> <b d>_1 <c ef>_1 <cs e>  \ottava 1 <d f> <ds fs> <e g>_1 <f af>_1 |
  <fs a> <g bf> <gs b> <a c>  <as cs> <b d> <bs ds> <cs e>  <d f>8-5)
    \ottava 0 r r4 |
  \bar "||"
  \key c \major
  \ottava 1 <d f>16-4-5-\slurShapeL ( <g, b>-1-2 <c e> <f, a>  
    <b d> <e, g> <a c> <d, f> <g b> <c, e> <f a> <b, d>  <e g> <a, c> <d f> 
    <g, b> |
  \ottava 0 <c e>16 <f, a>  <b d> <e, g> <a c> <d, f> <g b> <c, e> <f a> <b, d>
    <e g> <a, c> <d f> <g, b> <c e>)\noBeam r |
  \ottava 1 <c'' ef>16-4-5( <f, a>-1-2 <bf d> <ef, g>  <a c>-4-5 
    <d, f> <g bf> <c, ef>  <f a> <bf, d> <ef g>-3-5 <a, c>  <d f>-4-5 <g, bf> 
    <c ef> <f, a> |
  \ottava 0 <bf d>16-3-5 <ef, g> <a c>-4-5 <d, f>  <g bf> <c, ef> <f a> <bf, d>
    <ef g>-3-5 <a, c> <d f> <g, bf>  <c ef> <f, a> 
    << { \voiceOne d'8-.)\noBeam } \new Voice { \voiceTwo bf } >> |
  \oneVoice
  <df, bf' df>8-.\noBeam \ottava 1 <bf''' df>16-4-5( <e, g>-1-2
    <bf' df> <e, g> <a c> <ds, fs>  <gs b> <d f> <g bf> <cs, e>  <fs a> <c ef>
    <f af> <b, d> |
  <e g>16 <bf df> <ef gf> <a, c>  <d f> <gs, b> <cs e> <g bf> \ottava 0
    <c ef> <fs, a> <b d> <f af>  <bf df> <e, gf> <a c> <ds, fs> |
    
  \barNumberCheck 33
  <gs b>16 <d f> <g bf> <cs, e>  <fs a> <c ef> <f af> <b, d>  <e g> <bf df> 
    <ef gf> <a, c>  <ef' f> <a, c> <ef' f> <a, c> |
  <d f>16 <a b> <d e> <gs, b>  <d' e> <gs, b> <d' e> <gs, b>  <cs e> <fss, as>
    <cs' ds>-3-4 <fss, as>  <cs' ds> <fss, as> <cs' ds> <fss, as>) |
  \key gs \minor
  <b ds>-\pSlurShapeD \( <cs e> \repeat unfold 7 { <b ds> <cs e> } |
  \repeat unfold 3 { <b ds> <cs e> <b ds> <as css> } <b ds>-1-4 <cs e>-2-5
    <b ds>-1-4( <as css>-2-4)\) |
  <b ds>16-3( <cs e> <css es>-5 <ds fs>  <dss fss>_1 <es gs>_1 <fs a> <fss as>
    <gs b> <gss bs>-5 <as cs> <ass css>  \ottava 1 <bs ds> <cs e> <css es>-5 
    <ds fs> |
  <dss fss>_1 <es gs>_1 <fs a> <fss as>  <gs b>8) \ottava 0 r r2 |
  <ds, fs>16-2-4( <e gs>-1-5 \repeat unfold 7 { <ds fs> <e gs> } |
  <ds fs>16-2-4 <e gs>-1-5 <ds fs>-2-4 <css es>-3  <ds fs> <e gs> <ds fs> 
    <css es>  <ds fs> <e gs> <ds fs> <css es>  <ds fs>-2-4 <e gs>-1-5 
    <ds fs>-2-4 <css es>-1-4 |
    
  \barNumberCheck 41
  <ds fs>16-2-3 <dss fss>-1-4 <es gs>-1-3 <fs a>-2-4  <fss as>-1-3 <gs b>-2-4
    <gss bs>-1-5 <as cs>-2-3  <ass css>-1-4 <bs ds>-1-3 <cs e>-2-4 <css es>-1-5
    \ottava 1 <ds fs>-2-3 <dss fss>-1-4 <es gs>-1-3 <fs a>-2-4 |
  <fs ds'>8-2-5-.) \ottava 0 r r4 r2 |
  \ottava 1 <cs' e>16-2-4-\slurShapeP ( <b ds>-1-3 <cs e>-2-4 
    <b ds>-1-3 <as cs>-2-4 <gs b>-1-3 <as cs> <gs b>  <fs as> <e gs> <fs as> 
    <e gs> <ds fs> <cs e> <ds fs> <cs e> \ottava 0 |
  <b ds>16 <as cs> <b ds> <as cs>  <gs b> <fs as> <gs b> <fs as>  <e gs> 
    <ds fs> <e gs> <ds fs>  <cs e> <b ds> <cs e> <b ds>) |
  \ottava 1 <gs'' b>16-2-4( <fs as> <gs b> <fs as>-1-3  <e gs>-2-4
    <ds fs> <e gs> <ds fs>  <cs e> <b ds> <cs e> <b ds>  <as cs> <gs b> 
    <as cs> <gs b> |
  \ottava 0 <fs as>16 <e gs> <fs as> <e gs>  <ds fs> <cs e> <ds fs> <cs e>  
    <b ds> <as cs> <b ds> <as cs>  <gs b>_4_2 <fs as>_3_1 <e gs>_4_2
    <ds fs>_3_1) |
  <cs e>8_2_4 r \ottava 1 <fs'' a>16-3-5-\slurShapeT ( <e gs>-2-4
    <d fs>-1-3 <cs e>-3-5  \stemDown <b d>-2-4 <a cs>-1-3 <gs b>-3-5 
    <fs a>-2-4 \ottava 0 \stemNeutral <e gs>-1-3 <d fs>-1-2 <cs e>-3-5 <b d> |
  <a cs> <gs b> <fs a> <e gs>-1-3  <d fs>-1-2 <cs e> <b d> <a cs> <gs b>4-> 
    <fss as>-> |
    
  \barNumberCheck 49
  gs8) r <b' ds>16-1-3( <cs e> \repeat unfold 4 { <b ds> <cs e> } <b ds> 
    <cs e>-2-4 |
  <ds fs>16-2-3 <e gs>-1-4 \repeat unfold 7 { <ds fs> <e gs> } |
  <fs a>-3-5 <es gs>-2-4 <e g>-1-5 <ds fs>-2-4  <d f>-1-5 <cs e>-2-4 
    <css es>-1-5 <ds fs>-2-4  <e gs>-1-5 <ds fs>-2-4 <d f>-1-5 <cs e>-2-4
    <bs ds>-1-3 <ass css>-2-4 <bs ds>-1-3 <cs e>-2-4 |
  <d f>16-1-5 <cs e>-2-4 <bs ds>-1-3 <b d>-1-5  <as cs>-2-4 <a c>-1-5 <g b>-2-4
    <a cs>-1-5  <g b> <a cs> <g b> <a cs>  <fss b> <a cs>-1-5 <fss b>-2-4
    <e a>-1-3 |
  <ds gs>8-1-2) r \ottava 1 <bs'' ds>16( <cs e> 
    \repeat unfold 5 { <bs ds> <cs e> } |
  \repeat unfold 7 { <ds fs>16 <e gs> } <ds fs> <e gs>) |
  <fs a>16( <es gs> <e g> <ds fs>  <d f> <cs e> <css es> <ds fs>  <e gs> 
    <ds fs> <d f> <cs e>  <bs ds> <ass css>-2-4 <bs ds>-1-3 <cs e> |
  <d f>16 <cs e> <bs ds> <b d>  <as cs> <a c> <g b> <a cs>  <g b> <a cs> <g b>
    <a cs>  <fss b> <a cs> <fss b> <e a> |
    
  \barNumberCheck 57
  <ds gs>8) r <bs'' ds>16-2-3_4_2( <b d>-1-4_5_1 <as cs>-2-3_4_2 <a c>-1-5
    <gs b>-2-4 <fss as>-1-3 <fs a>-2-4 <es gs>-1-3  <e g>-1-4_5_1
    <ds fs>-2-3_4_2 <d f>-1-5 <cs e>-2-4 \ottava 0 |
  <bs ds>16-1-3 <b d>-1-4_5_1 <as cs>-2-3_4_1 <a c>-1-5  <gs b>-2-4
    <fss as>-1-3 <fs a>-2-4 <es gs>-1-3  <e g>-1-4_5_1 <ds fs>-2-3_4_1
    <d f>-1-5 <cs e>_2  <bs ds>_1 <b d>_1 <as cs> <a c>-5 |
  <gs b>16 <fss as> <fs a> <es gs>_1  <e g>_1 <ds fs> <d f>-5 <cs e> \clef
    bass <bs ds>_1 <b d>_1 <as cs> <a c>-5  <gs b> <fss as> <fs a> <es gs>_1 |
  <e g>16 <ds fs> <d f>-5 <cs e>-4 <bs ds> <cs e> 
    \repeat unfold 5 { <bs ds> <cs e> } |
  <bs ds>4) r <e gs as>2->( |
  <ds gs bs>4) r \clef treble \tempo "Lento" <cs' ds as'>2(\arpeggio |
  <bs ds bs'>1)\fermata |
  \bar "|."
}

leftHandUpper = \relative {
  \oneVoice
  R1 |
  R1 |
  \voiceThree
  gs,4 s gs s |
  gs4 s b s |
  \oneVoice
  gs8-. \clef treble <b' ds gs>-\slurShapeN ([_4 q <b ds fs>]  q[ <gs b e>]_3
    \clef bass q[ <gs b ds>] |
  q8[ <ds gs cs>]_5 q[_4 <ds gs b>] q <cs ds as'>_3 q <b ds gs>_4) |
  \voiceThree
  gs4 s gs s |
  gs4 s cs s |
  
  \barNumberCheck 9
  \oneVoice
  gs8-. \clef treble <e'' gs cs>-\slurShapeE ([ q <cs e a>] q[ <cs e gs>] 
    q[ <gs cs fs>] |
  \clef bass q8[-> <gs cs e>] q[ <fs gs ds'>] q <e gs cs> <fs gs ds'>
    \acciaccatura { fs'8 } <gs, cs e>8 |
  ds8-.)\noBeam \voiceThree \clef treble <cs' ds b'>( b'->[ as] gs fss) 
    b4\rest |
  \clef bass gs,,4 s2. |
  ds8-.\noBeam \stemDown <cs' ds b'>-\slurShapeF ( \stemUp b'[ as] gs fss) 
    ds4\rest |
  gs,4 s2. |
  fs8-.[ fs'-.] \clef treble b''-\slurShapeH ( fs, as' fs, \noteHShiftA gs'8.
    fs16~ |
  \once \hideNotes fs8) \clef bass \oneVoice fs,-.-1\noBeam fs,-.-5\noBeam 
    fs,-.-1\noBeam fs,-.-5\noBeam fs'-.-1\noBeam fs'-.-5\noBeam fs'-.-1 |
  
  \barNumberCheck 17
  s1 |
  \voiceThree
  ds,2 ds |
  gs,4 s gs s |
  gs4 s b s |
  s8 \clef treble <b' ds gs>-\slurShapeI ( q <b ds fs> q <gs b e> q <gs b ds> |
  \oneVoice
  \clef bass q8 <ds gs cs> q <ds gs b> q <cs ds as'> q <b ds gs>) |
  \voiceThree 
  gs4 s gs s |
  gs4 s b s |
  
  \barNumberCheck 25
  \oneVoice
  s8 \clef treble <css' es b'>-\slurShapeK ( <d f b> <d f bf> q[ 
    <cf d af'>]_4_5 q <af cf gf'>_3 |
  \clef bass q8[ <af cf f>] <gs b f'> <f gs e'>_5 <f af e'> <f af d> <f af c>
    <f g b>) |
  \key c \major
  g,8-.\noBeam \clefMoveA \clef treble <b' f' a>_5( q2-> <c e g>8 <g a'> |
  <b f' a>4. <g g'>8) r4 \clef bass g8-. c,-. |
  f,8-.\noBeam \clef treble <a' ef' g>8( q2-> <bf d f>8 <f g'> |
  <a ef' g>4. <f f'>8) r4 \clef bass f8-. bf,-. |
  e,8-.\noBeam \clef treble <e''' g>16_4_5_( <bf' df>_1_2 <e, g> <bf' df> 
    <ds, fs> <a' c>  <d, f> <gs b> <cs, e> <g' bf>  <c, ef> <fs a> <b, d>
    <f' af> |
  <bf, df>16 <e g> <a, c> <ef' gf>  <gs, b> <d' f> <g, bf> <cs e>  <fs, a>
    <c' ef> <f, af> <b d>  <e, g> <bf' df> <ds, fs> <a' c> |
    
  \barNumberCheck 33
  <d, f> <gs b> <cs, e> <g' bf>  <c, ef> <fs a> <b, d> <f' af>  <bf, df>
    <e g> <a, c> <ef' gf> <a, c> <ef' f> <a, c> <ef' f> |
  <a, b>16 <d f> <gs, b> <d' e>  <gs, b> <d' e> <gs, b> <d' e> \clef bass
    <fss, as> <cs' e> <fss, as> <cs' ds>  <fss, as> <cs' ds> <fss, as> 
    <cs' ds>) |
  \key gs \minor
  \voiceThree
  gs,4 s gs s |
  gs4 s b s |
  \oneVoice
  s8 \clef treble <b' ds gs>-\slurShapeN ([ q <b ds fs>]  q[ <gs b e>] 
    \clef bass q[ <gs b ds>] |
  q8[ <ds gs cs>] q[ <ds gs b>] q <cs ds as'> q <b ds gs>) |
  \voiceThree
  gs4 s gs s |
  gs4 s bs s |
  
  \barNumberCheck 41
  \oneVoice
  s8 \clef treble <fs'' gs ds'>-\slurShapeO ^( q <e gs cs>_4 q[ <ds fs bs>_3] 
    q <cs e a>_4 |
  <bs ds a'>8 <bs ds gs> q <a cs fs>_4 \clef bass q <gs cs e> q <fs gs ds'>) |
  \stemDown cs,8-. cs'(\finger \markup \overtie 15 gs' ds'-1 \stemNeutral
    e-1 cs-5 gs'-3 as-2 |
  b8-1)\noBeam gs,,( ds' as'-1 b-1) r r4 |
  e,,8( b' e_1 fs  gs e-5 b'-3 cs |
  ds8-.)\noBeam b,,( fs' cs'_1 ds) r r4 |
  <cs, e'>8\arpeggio r <cs' a' e'>4\arpeggio r2 |
  r2 \voiceThree ds4-> cs-> |
  
  \barNumberCheck 49
  s2 gs4 s |
  gs4 s bs s |
  gs4 s cs s |
  gs4 s cs s |
  gs4 s bs s |
  gs4 s bs s |
  gs4 s cs s |
  gs4 s cs s |
  
  \barNumberCheck 57
  gs4 s bs s |
  gs4 s bs s|
  \oneVoice
  s8 r r ds,([ gs)] r r ds( |
  gs8) r r4 <gs, gs'>8-\slurShapeR ^(_\< r q\! r |
  q4) r4 <cs gs'>2( |
  <gs gs'>4) r <ds' fss'>2(\arpeggio |
  <gs ds' gs>1)\fermata |
}

leftHandLower = \relative {
  \voiceFour
  s1 * 2 |
  \slurUp 
  gs,8-\slurShapeA ( ds' b') fss,(  gs ds' b') ds,,-\slurShapeB ( |
  gs8 ds' b') cs,-3(  b ds b') ds,, |
  s1 * 2 |
  gs8-\slurShapeC ( e' cs') fss,,( gs e' cs') gs,,-\slurShapeD ( |
  gs'8 e' cs') ds,( cs e cs') gs,, |
  
  \barNumberCheck 9
  s1 * 2 |
  s4 <cs'' ds>2 s4 |
  \clef bass gs,8 <ds' b'> as( gs  fss^.) <ds' ds'>^. gs,^. <ds' ds'>^. |
  s4 <cs ds>2 s4 |
  gs8-\slurShapeG ( <ds' b'>) as( gs fss) <es' b'> a, g |
  s4 \clef treble <ds''' fs> <cs e> 
    << { ds8 fs,_~ | \stemDown <fs as e' fs>\noBeam } \\ { b4 | s8 } >> 
  s4. s2 |
  
  \barNumberCheck 17
  b,,8( fs' b ds)  cs,( e as cs) |
  ds,8( gs b ds  ds, fss cs' ds) |
  gs,,8-\slurShapeA ( ds' b') fss,( gs ds' b') ds,,-\slurShapeB ( |
  gs8 ds' b') cs,( b ds b') ds,,( |
  \stemUp gs8-.) \stemDown s s2. |
  s1 |
  gs8-\slurShapeJ ( d' b') fss,( gs d' b') d,,( |
  gs8 d' b') cs,-3( b d b') d,,( |
  
  \barNumberCheck 25
  \stemUp gs8-.) \stemDown s s2. |
  s1 * 7 |
  
  \barNumberCheck 33
  s1 * 2 |
  gs8-\slurShapeJ ( ds' b') fss,( gs ds' b') ds,,-\slurShapeB ( |
  gs8 ds' b') cs,( b ds b') ds,,( |
  \stemUp gs8-.) \stemDown s4. s2 |
  s1 |
  gs8-\slurShapeA ( ds' bs') fss,( gs ds' bs') ds,,-\slurShapeB ( |
  gs8 ds' bs') cs,( bs ds bs') ds,,( |
  
  \barNumberCheck 41
  \stemUp gs8-.) \stemDown s8 s2. |
  s1 * 6 |
  s2 ds |
  
  \barNumberCheck 49
  gs,8( ds'' b') fss,(  gs ds' b') ds,,( |
  gs8 ds' bs') cs,(  bs ds bs') ds,,( |
  gs8 e' cs') ds,(  cs e cs') gs,,-\slurShapeD ( |
  gs'8 e' cs') ds,(  cs e cs') gs,,( |
  gs'8 ds' bs') cs,(  bs ds bs') ds,,( |
  gs8 ds' bs') cs,(  bs ds bs') ds,,( |
  gs8 e' cs') ds,(  cs e cs') gs,,-\slurShapeD ( |
  gs'8 e' cs') ds,(  cs e cs') gs,,( |
  
  \barNumberCheck 57
  gs'8 ds' bs') cs,(  bs ds bs') ds,,( |
  gs8 ds' bs') cs,-\slurShapeQ (  bs ds bs'!) ds,,( |
  \stemUp gs8) \stemDown s8 s2. |
}

leftHand = <<
  \clef bass
  \global
  \mergeDifferentlyHeadedOn
  \new Voice \leftHandUpper
  \new Voice \leftHandLower
>>

dynamics = {
  \override TextScript.Y-offset = -0.5
  s1^\sottoVoce |
  s1 |
  s2 s\< |
  s2... s16\! |
  s2...\< s16\! |
  s1 |
  s4 s2.\< |
  s2... s16\! |
  
  \barNumberCheck 9
  s2...\< s16\! |
  s1 |
  s2...\> s16\! |
  s1 |
  s2\> s8. s16\! s4 |
  s4 s16 s\< s8 s4.. s16\! |
  s4 s2.\f |
  s1 |
  
  \barNumberCheck 17
  s4..\< s16\! s4..\> s16\! |
  s4 s\< s8\! s^\dimMarkup s8.\> s16\! |
  s1 * 2 |
  s16 s8.\< s4 s8. s16\! s4 |
  s4\< s2.\! |
  s1\f |
  s1 |
  
  \barNumberCheck 25
  s2...\< s16\! |
  s1 |
  s1^\leggierissimo |
  s1 * 3 |
  s1\f |
  s1 |
  
  \barNumberCheck 33
  s1 |
  s4..\> s16\! s4..\> s16\! |
  s1 * 2 |
  s4 s2.\< |
  s4 s8\! s s2 |
  s1 * 2 |
  
  \barNumberCheck 41
  s1 * 6 |
  s4 s2.\fz |
  s1 |
  
  \barNumberCheck 49
  s4 s2.^\sottoVoce |
  s1 * 3 |
  s4 s2.\pp |
  s1 * 3 |
  
  \barNumberCheck 57
  s4 s2.\f |
  s1 |
  s1^\diminMarkup |
  s1 |
  s4 s2.^\sottoVoce |
  s2 s\f |
}

pedal = {
  s1 * 2 |
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  s4.\sd s32 s16.\su s2 |
  s1 |
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  
  \barNumberCheck 9
  s4.\sd s32 s16.\su s2 |
  s1 |
  s4..\sd s16\su s2 |
  s2 s8\sd s\su s\sd s\su |
  s4.\sd s8\su s2 |
  s1 |
  s4..\sd s16\su s8.\sd s16\su s8.\sd s16\su |
  s2...\sd s16\su |
  
  \barNumberCheck 17
  s1 * 2 |
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  s4.\sd s32 s16.\su s2 |
  s1 |
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  
  \barNumberCheck 25
  s8.\sd s16\su s2. |
  s1 |
  \override SustainPedal.extra-offset = #'(0 . 3)
  s2\sd s8. s16\su s4 | 
  s1 |
  s2\sd s8. s16\su s4 |
  \revert SustainPedal.extra-offset
  s1 |
  s4\sd s16 s\su s8 s2 |
  s1 |
  
  \barNumberCheck 33
  s1 * 2 |
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  s4\sd s16 s8.\su s2 |
  s1 |
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  
  \barNumberCheck 41
  s4\sd s16 s8.\su s2 |
  s1 |
  s2\sd s\su |
  s8 s4\sd s16 s\su s2 |
  s4\sd s8. s16\su s2 |
  s8 s4\sd s16 s\su s2 |
  s2\sd s\su |
  s1 |
  
  \barNumberCheck 49
  s4..\sd
    \override SustainPedal.Y-offset = 1
    s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  \revert SustainPedal.Y-offset
  s2.\sd s8\su s8\sd |
  s4. s8\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  s4..\sd s16\su s4..\sd s16\su |
  \override SustainPedal.Y-offset = 1.5
  s4..\sd s16\su s4\sd s16 
    \revert SustainPedal.Y-offset
    s\su s8\sd |
  s4..
    \override SustainPedal.Y-offset = 1.5
    s16\su s4\sd 
    \revert SustainPedal.Y-offset
    s16 s\su s8\sd |
  
  \barNumberCheck 57
  s4.. s16\su s4..\sd s16\su |
  s2...\sd s16\su |
  s1 * 3 |
  s2 s4..\sd s16\su |
  s1\sd |
}

forceBreaks = {
  \repeat unfold 4 { s1\noBreak s1\break\noPageBreak } 
  s1\noBreak s1\pageBreak
  
  \repeat unfold 5 { s1\noBreak s1\break\noPageBreak } 
  s1\noBreak s1\pageBreak
  
  \repeat unfold 4 { s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\pageBreak
  
  \repeat unfold 4 { s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\pageBreak
  
  \repeat unfold 4 { s1\noBreak s1\break\noPageBreak }
  s1\noBreak s1\pageBreak
  
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s2\break\noPageBreak 
  s s1\break\noPageBreak
}

etudeSixMusic = \score {
  \header {
    opus = "Opus 25, No 6"
  }
  \keepWithTag layout
  \new PianoStaff \with { instrumentName = \markup \huge "No. 6" } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Score
      \override Slur.height-limit = 3
    }
  }
}

etudeSixMidi = \book {
  \bookOutputName "etude-op25-no6"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
