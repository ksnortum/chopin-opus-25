%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.1"

\include "global-variables.ily"

%%% Positions and shapes %%%

ns = \once \normalsize
sh = \offset positions #'(1 . 1) Beam % stem higher
sl = \offset positions #'(-1 . -1) Beam % stem lower
slh = \offset positions #'(-1.5 . -1.5) Beam % stem lower by half

% normal size, stem higher
nssh = \once {
   \normalsize
   \offset positions #'(1 . 1) Beam
}

% normal size, stem lower
nssl = \once {
   \normalsize
   \offset positions #'(-1 . -1) Beam
}

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 2) (0 . 2) (0 . 0))
                        ((-2 . 0) (0 . 2) (0 . 0) (0 . 0))
                      ) Slur

movePedalA = \override SustainPedal.Y-offset = 2
movePedalB = \override SustainPedal.Y-offset = 2
movePedalC = \override SustainPedal.Y-offset = 2.5
movePedalD = \override SustainPedal.Y-offset = 3.5
movePedalE = \override SustainPedal.Y-offset = 1.5
movePedalF = \override SustainPedal.Y-offset = 1.5
movePedalG = \override SustainPedal.Y-offset = 1.5
movePedalH = \override SustainPedal.Y-offset = 1.5
movePedalI = \override SustainPedal.Y-offset = 1
revertPedal = \revert SustainPedal.Y-offset

%%% Music %%%

global = {
  \time 4/4
  \key af \major
  \accidentalStyle piano
}

rightHand = \relative ef'' {
  \clef treble
  \global
  \tempo "Andante sostenuto" 4 = 104

  \partial 4 ef4( \noBreak
  \magnifyMusic #3/4 {
    \scaleDurations 2/3 {     
      \stemDown
      \ns ef16-4 af, c ef, af c  \ns ef af, c ef, af c
        \ns ef af, c ef, af c  \ns ef af, c ef, af c |
      \ns f16-5 af, c ef, af c  \ns ef-4 af, c ef, af c
        \ns ef af, c ef, af c  \ns ef af, c ef, af c) |
      \ns ef16(-4 bf df ef, bf' df  \ns ef bf df ef, bf' df
        \ns f-5 bf, df ef, bf' df  \ns ef-4 bf df ef, bf' df |
      \ns bf'16 c, ef ef, c' ef  \ns af c, ef ef, c' ef
        \ns af-5 c, e-4 e, c' e  \ns af c, e e, c' e)-3 |
      \ns af16( df,-2 f-4 af, df f  \ns af df, f af, df f
        \ns af df, f af, df f-3  \ns bf df, f af, df f |
      \ns c'16 c,-2 f-4 g, c f  \ns bf c, e-3 g, c e
        \ns af c, f-4 af, c f-4  \ns f-5 cf-2 ef f, cf' ef) |
      \stemNeutral
      \ns f16( bf,-2 ef-4 f, bf ef  \ns g bf, ef-4 f, bf ef
        \ns af bf, d-3 f, af bf-3  \nssh bf-4 f af \ns bf, f' af |
      \nssh bf16-4 ef, af bf, ef af  \nssh c ef, af bf, ef af 
        \nssh df ef, g_3 bf, df ef_3  \nssh ef_5 bf df ef, bf' df) |
         
      \barNumberCheck 9
      \stemDown
      \ns ef'16(-5 af, c ef, af c  \ns ef-4 af, c ef, af c
        \ns ef af, c ef, af c  \ns ef af, c ef, af c |
      \ns f-5 af, c ef, af c  \ns ef-4 af, c ef, af c
        \ns ef af, c ef, af c  \ns ef af, c ef, af c) |
      \ns ef16( bf df ef, bf' df  \ns bf' bf, df ef, bf' df
        \ns c' bf, df ef, bf' df  \ns g bf, df ef, bf' df |
      \ns bf'16 c, ef ef, c' ef  \ns af c, ef ef, c' ef
        \ns af c, e e, c' e  \ns af c, e e, c' e) |
      \ns af16(-5 df, f af, df f  \ns af-4 df, f af, df f
        \ns af df, f af, df f  \ns bf df, f af, df f |
      \ns c'16 c,-2 f g, c f-4  \ns g-5 c, f g, c f
        \ns g c, e g, c e  \ns g c, e g, c e) |
      \ns g16( b, e-4 f, b e  \ns g b, d-3 f, b d
        \ns g b, f' f, b f'  \ns g b, e f, b e) |
      \voiceOne
      \nssh d16(-\threeToFive f, g c, f g  \nssh c e, g c, e g
        \nssh c d, g c, d g  \nssh c e, g c, e g) |
        
      \barNumberCheck 17
      \nssh c16( g_2 bf c, g' bf  \nssh c g bf c, g' bf 
        \nssh df g, bf c, g' bf  \nssh c g bf c, g' bf |
      \nssh c16 f, bf c, f bf  \nssh d f, af c, f af 
        \nssh e' g, c c, g' c  \nssh f af, c c, af' c) |
      \stemDown
      \ns ef16( bf df ef, bf' df  \ns ef bf df ef, bf' df
        \ns f bf, df ef, bf' df  \ns ef bf df ef, bf' df) |
      \ns ef16( af, df ef, af df  \ns f af, c ef, af c
        \ns g' af, c ef, af c  \ns af' af, c ef, af c) |
      \ns g'16( c,-2 ef-3 g, c ef  \ns g c, ef g, c ef
        \ns af c, d af c d  \ns f b, d f, b d) |
      \ns e16( g, c e, g c  \ns d af b d, af' b
        \ns f' af, b f af b  \ns e gs, b e, gs b) |
      \ns e16( g, c e, g c  \ns d gs, b d, gs b
        \ns f' gs, b f gs b  \ns e gs, b e, gs b) |
      \ns e16( a, cs e, a cs  \ns d^\ritenuto a b d, a' b
        \ns fs' a, b fs a b  \ns e gs, d' e, gs d') |
        
      \barNumberCheck 25
      \ns e16( a, cs e, a cs  \ns a' cs, e a, cs e
        \ns b' ds, fs a, ds fs  \ns c' ef, gf af, ef' gf) | 
      \ns c16(^\aTempo df, f f, df' f  \ns bf df, f f, df' f
        \ns df' bf, df f, bf df  \ns f bf, df f, bf df) |
      \ns bf'16(-5 c,-2 ef-3 ef,-1 c' ef  \ns af c, ef ef, c' ef
        \ns c' af, c ef, af c  \ns ef af, c ef, af c) |
      \ns ef( g, bf df, g bf  \ns e g, bf df, g bf 
        \ns f' g, bf df, g bf  \ns ef g, bf df, g bf) |
      \stemUp
      \nssh df16( f, af df, f af  \nssh c f, af c, f af
        \nssh c ef, f c ef f)  \stemDown \ns c''( ef, f c ef f |
      \ns c' df, f f, df' f  \ns bf df, f f, df' f
        \ns df' bf, df ff, bf df  \ns ff bf, df ff, bf df) |
      \ns bf'16( c, ef ef, c' ef  \ns af c, ef ef, c' ef
        \ns c' af, c ef, af c  \ns ef af, c ef, af c) |
      \ns ef16( a, c ef, a c  \ns f a, c ef, a c
        \ns gf' a, c ef, a c  \ns f a, c ef, a c |
        
      \barNumberCheck 33
      \ns f16 bf, df df, bf' df  \ns g bf, df f, bf df 
        \ns af' b, d f, b d  \ns g b, d f, b d) | 
      \ns g16( c, ef ef, c' ef  \ns af c, ef af, c ef
        \ns a c, ef a, c ef  \ns gf'^\appassionato a, c ef, a c |
      \ns f16 f,-2 af-3 bf, f' af  \ns bf f af bf, f' af
        \ns df ff,-2 af-3 bf, ff' af-5  \ns g-5 df ef g, df' ef | 
      \ns af16) af,-2 c-3 ef, af c  \ns ef( af, c ef, af c
        \ns ef af, c ef, af c  \ns ef af, c ef, af c |
      \ns f16 bf, df ef, bf' df  \ns ef bf df ef, bf' df
        \ns c' bf, df ef, bf' df  \ns g bf, df ef, bf' df |
      \ns af'16) af, c ef, af c  \ns ef( af, c ef, af c
        \ns ef af, c ef, af c  \ns ef af, c ef, af c | 
      \ns f16 bf, df ef, bf' df  \ns ef bf df ef, bf' df
        \ns f' bf,, df ef, bf' df  \ns g bf, df ef, bf' df |
      \ns af'16) af, c ef, af c  \ns ef( af, c ef, af c
        \ns f af, c ef, af c  \ns ef af, c ef, af c |
      
      \barNumberCheck 41
      \stemUp
      \nssh df16-5 ef,-2 af-4 df, ef af  \nssh c-5 ef, af c, ef af
        \nssh df ef, af df, ef af  \nssh c ef, af c, ef af |
      \nssh bf c, ef \ns bf c ef  \nssh af c, ef \ns af, c ef
        \nssh bf' c, ef \ns bf c ef  \nssh af c, ef \ns af, c ef |
      \nssh bf'16 c, ef \ns bf c ef  \nssh af c, ef \ns af, c ef
        \nssh bf' c, ef \ns bf c ef  \nssh af c, ef \ns af, c ef) | 
      \staffDown r16 \slurShapeA c,(-1 ef af c-1  \staffUp ef \sh af c_1 ef 
        \ottava 1 af c ef \nssh af ef c af ef c_1  \ns af c_1 ef af c ef |
      \nssh af16 ef c af ef c  \ns af c ef af c ef
        \nssh af ef c af ef c  \ns af c ef af c ef |
      \stemDown
      \nssl af16 ef c af ef c  \ottava 0 \ns \slh af-2 c-1 af'-3 c-5 af c,-1
        \sl af c af' c af c,  \sl af c af' c af c, |
      \sl af c af' c af c,  \sl af c af' c af c,
        \sl af c af' c af c,  \sl af c af' c af c, |
    } 
  }
  \oneVoice
  af4-.) <af' ef' af> r <ef, c'>^( |
  
  \barNumberCheck 49
  <c af'>1)\arpeggio |
  \bar "|."
}

leftHand = \relative af,, {
  \clef bass
  \global
  
  \partial 4 \tag layout { r4 } \tag midi { r4\p }
  \magnifyMusic #3/4 {
    \scaleDurations 2/3 { 
      \stemDown
      \ns af16 ef'' af c af ef  \nssl af, ef' af c af ef
        af, ef' af c af ef  af, ef' af c af ef |
      af,16 ef' af c af ef  af, ef' af c af ef
        af, ef' af c af ef  af, ef' af c af ef |
      af,16 ef' g df' g, ef  af, ef' g df' g, ef
        af, ef' g df' g, ef  af, ef' g df' g, ef |
      af,16 ef' af c af ef  af, ef' af c af ef
        af, e' af c af e  af, e' af c af e |
      \nssl df,16 af'' df f df af  \nssl df, af' df f df af
        df, af' df f df af  \nssl df, g df' f df g, |
      \nssl c,16 g' c f c g  c, g' c e c g 
        f af c f c af  \nssl cf, f af ef' af, f |
      \nssl bf,16 f' af ef' af, f  bf, f' af ef' af, f
        bf, f' af d af f  bf, f' af d af f |       
      \nssl ef,16 bf' ef df'-1 ef, bf  ef, bf' ef af ef bf
        ef, bf' ef g ef bf  ef, bf' df g df bf |
         
      \barNumberCheck 9
      \ns af,16 ef'' af c af ef  \nssl af, ef' af c af ef
        af, ef' af c af ef  af, ef' af c af ef |
      af,16 ef' af c af ef  af, ef' af c af ef
        af, ef' af c af ef  af, ef' af c af ef |
      af,16 ef' g df' g, ef  af, ef' g df' g, ef
        af, ef' g df' g, ef  af, ef' g df' g, ef |
      af,16 ef' af c af ef  af, ef' af c af ef
        af, e' af c af e  af, e' af c af e |
      \nssl df,16 af'' df f df af  df, af' df f df af
        df, af' df f df af  df, g df' f df g, |
      c,16 g' c f c g  c, g' c f c g
        c, g' c e c g  c, g' c e c g |
      g,16 d' g b g d  g, d' g b g d
        g, d' g d' g, d  g, d' g d' g, d |
      \voiceThree
      \ns c,16 g' c g' c, g  c, g' c g' c, g
        c, g' c g' c, g  c, g' c g' c, g |
    } 
    
    \barNumberCheck 17
    \voiceFour
    \nssl e16 c' \ns bf' c,  e, c' \ns bf' c,  
      e, c' \ns bf' c,  e, c' \ns bf' c, |
    \nssl f,16 c' \ns bf' c,  f, c' \ns af' c,
      f, c' \ns g' c,  f, c' \ns f c |
    \nssl g16 ef' \ns df' ef,  g, ef' \ns df' ef,
      g, ef' \ns df' ef,  g, ef' \ns df' ef, |
    \nssl af,16 ef' \ns df' ef,  af, ef' \ns c' ef,
      af, ef' \ns bf' ef,  af, ef' \ns af ef |
    \nssl ef,16 g' c g  c, g' c g
      \nssl f, d' c' d,  \scaleDurations 4/5 { \nssl g, d' b' g d }
    \scaleDurations 2/3 {
      \nssl c16 e g c g e  c f af b af f
        c f af d af f  c e gs d' gs, e |
      \nssl c16 e g c g e  b f' gs b gs f
        b, f' gs d' gs, f  b, e gs d' gs, e |
      \nssl a,16 e' a cs a e  a, fs' a b a fs 
        a, fs' a d a fs  a, e' gs d' gs, e |
        
      \barNumberCheck 25
      \nssl a,16 e' a cs a e  a, e' a cs a e
        a, ds fs c' fs, ds  af ef' gf c gf ef |
      \nssl df,16 af'' bf df bf af  df, af' bf df bf af
        \nssl df,, af'' bf df bf af  df, af' bf df bf af |
      \nssl ef,16 ef' af c af ef  c ef af c af ef
        \nssl ef, ef' af c af ef  c ef af c af ef |
      \nssl ef,16 ef' g ef' g, ef  bf ef g ef' g, ef
        \nssl ef, ef' g ef' g, ef  bf ef g ef' g, ef |
    }
    \nssl f,16 f' af f  \scaleDurations 4/5 { c f af f c }
      \nssl f, f' a f  \scaleDurations 4/5 { c f a f c } |
    \scaleDurations 2/3 {
      \nssl bf, f'' bf df bf f  bf, f' bf df bf f
        \nssl bf,, ff'' af df af ff  bf, ff' af df af ff |
      \nssl ef,16 ef' af c af ef  c ef af c af ef
        \nssl ef, ef' af c af ef  c ef af c af ef |
    }
    \nssl ef,16 a' c a  \scaleDurations 4/5 { ef a c a ef^1 }
      \nssl ef, a' c a  \scaleDurations 4/5 { ef a f' a, ef^1 } |
      
    \barNumberCheck 33
    \nssl ef,16 bf'' f' bf,  \scaleDurations 4/5 { ef, bf' df bf ef,^1 }
      \nssl ef, b'' d b  \scaleDurations 4/5 { ef, b' g' b, ef,^1 } |
    \nssl ef,16 c'' g' c,  \scaleDurations 4/5 { ef, c' ef c ef,^1 }
      \nssl ef, c'' gf' c,  
    \scaleDurations 2/3 { ef, c' ef a ef c | 
      \nssl ef,16 bf' d af' d, bf  \nssl ef, bf' d af' d, bf
        \nssl ef, bf' df af' df, bf  \nssl ef, bf' df ef df bf |
      \nssl af, ef' af c af ef  af, ef' af c af ef
        af, ef' af c af ef  af, ef' af c af ef |
      af,16 ef' g df' g, ef  af, ef' g df' g, ef
        af, ef' g df' g, ef  af, ef' g df' g, ef |
      af,16 ef' af c af ef  af, ef' af c af ef
        af, ef' af c af ef  af, ef' af c af ef |
      af,16 ef' g df' g, ef  af, ef' g df' g, ef
        af, ef' g df' g, ef  af, ef' g df' g, ef |
      af,16 ef' af c af ef  af, ef' af c af ef
        af, ef' af c af ef  af, ef' af c af ef |
      
      \barNumberCheck 41
      \stemUp
      \ns ef,16 af ef' af ef af,  ef af ef' af ef af,
        ef af ef' af ef af,  ef af ef' af ef af, |
      \ns af,16 ef' af ef' af, ef  af, ef' af ef' af, ef
        af, ef' af ef' af, ef  af, ef' af ef' af, ef |
      \ns af,16 ef' af ef' af, ef  af, ef' af ef' af, ef
        af, ef' af ef' af, ef  af, ef' af ef' af, ef |
      \stemDown
      \nssl af,16-5 ef'-3 af-2 c-1 ef-4 af  \clef treble c ef af c ef af
        \ns c af ef-4 c-1 af ef-3  \nssl af, ef' af c ef af |
      \ns c16 af ef c af ef  \nssl af, ef' af c ef af
        \ns c af ef c af ef  \nssl af, ef' af c ef af
      \ns c af ef c af ef  \stemUp \ns af, ef' af ef' af, ef
        af, ef' af ef' af, ef  af, ef' af ef' af, ef |
      af, ef' af ef' af, ef  af, ef' af ef' af, ef
        af, ef' af ef' af, ef  af, ef' af ef' af, ef |
    } 
  }
  \oneVoice
  af,4-. \clef bass <af, ef' c'> r \appoggiatura { d,16[ ef] } ef4(\trill |
  
  \barNumberCheck 49
  <af, af' ef'>1)\arpeggio |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 s4\p
  s1\< |
  s2\> s8.. s32\! s4 |
  s4...\< s32\! s2\> |
  s4...\> s32\! s2\< |
  s4\! s2.\< |
  s2.\! s4\> |
  s4...\< s32\! s2\> |
  s1\f |
  
  \barNumberCheck 9
  s4\p s2.\< |
  s1\> |
  s4...\< s32\! s2 |
  s2\> s16 s\! s4. |
  s8 s\< s2. |
  s2\> s8 s4.\! |
  s8 s\< s4 s8 s\! s8..\> s32\! |
  s1 |
  
  \barNumberCheck 17
  s8 s\< s4 s8\! s\> s8.. s32\! |
  s2....\< s32\! |
  s8 s\< s4 s8\! s\> s8.. s32\! |
  s2....\< s32\! |
  s4...\< s32\! s4...\> s32\! |
  s8 s\< s4 s8 s\> s8.. s32\! |
  s4...\< s32\! s4...\> s32\! |
  s4...\< s32\! s4...\> s32\! |
  
  \barNumberCheck 25
  s2....\< s32\! |
  s2\f\< s8.. s32\! s4 |
  s4...\< s32\! s2 |
  s2\< s8.. s32\! s4 |
  s4...\> s32\! s2 |
  s2 s4...\> s32\! |
  s4...\< s32\! s4 s8..\> s32\! |
  s4...\p\< s32\! s2\cresc |
  
  \barNumberCheck 33
  s1 |
  s2. s4\f |
  s1 |
  s2^\fzp s4...\< s32\! |
  s8..\> s32\! s2. |
  s2 s4...\< s32\! |
  s8..\> s32\! s2.\pp |
  s2 s^\dimMarkup |
  
  \barNumberCheck 41
  s1 |
  s2 8.. s32\! s4^\smorzando |
  s1 |
  s8..\pp s32^\leggierissimo s2. |
  s1 |
  s4 s2\< s8.. s32\! |
  s2\> s8.. s32\! s4\ppp |
}

pedal = {
  \partial 4 s4
  s1\sustainOn \movePedalA |
  s4 s\sustainOff\sustainOn s4... s32\sustainOff \revertPedal |
  s2\sustainOn s4... s32\sustainOff |
  s2\sustainOn s4...\sustainOff\sustainOn s32\sustainOff |
  s2.\sustainOn \movePedalB s8..\sustainOff\sustainOn s32\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff \revertPedal |
  s2\sustainOn s4\sustainOff\sustainOn s8.. s32\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff |
    
  \barNumberCheck 9
  s1 \sustainOn \movePedalC |
  s4 s\sustainOff\sustainOn s4... s32\sustainOff \revertPedal |
  s2\sustainOn s4\sustainOff\sustainOn s8.. s32\sustainOff |
  s2\sustainOn s4\sustainOff\sustainOn s8.. s32\sustainOff |
  s2.\sustainOn \movePedalD s8..\sustainOff\sustainOn s32\sustainOff |
  s2\sustainOn s4\sustainOff\sustainOn s8.. s32\sustainOff \revertPedal |
  s4\sustainOn s\sustainOff\sustainOn s s8..\sustainOff\sustainOn 
    s32\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff |
    
  \barNumberCheck 17
  s4\sustainOn s s\sustainOff\sustainOn s8..\sustainOff\sustainOn 
    s32\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff |
  s4\sustainOn s s\sustainOff\sustainOn s8..\sustainOff\sustainOn 
    s32\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff |
  s4\sustainOn s s\sustainOff\sustainOn s8..\sustainOff\sustainOn 
    \movePedalE s32\sustainOff |
  s4\sustainOn s\sustainOff\sustainOn s s8..\sustainOff\sustainOn 
    s32\sustainOff \revertPedal
  \repeat unfold 2 {
    s4\sustainOn s\sustainOff\sustainOn s s8..\sustainOff\sustainOn 
      s32\sustainOff
  }
  
  \barNumberCheck 25
  \movePedalF s4\sustainOn s s\sustainOff\sustainOn s8..\sustainOff\sustainOn 
    s32\sustainOff \revertPedal |
  s4\sustainOn \movePedalG s\sustainOff\sustainOn s4... s32\sustainOff 
    \revertPedal |
  s4\sustainOn s\sustainOff\sustainOn s4... s32\sustainOff |
  s4\sustainOn s s\sustainOff\sustainOn s8..\sustainOff\sustainOn 
    s32\sustainOff |
  \movePedalH s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn s8.. 
    s32\sustainOff \revertPedal |
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn s8.. 
    s32-\tweak Y-offset 3 \sustainOff |
  s4\sustainOn s4\sustainOff\sustainOn s4... s32\sustainOff |
  s4\sustainOn s s\sustainOff\sustainOn s8..\sustainOff\sustainOn 
    s32\sustainOff |
    
  \barNumberCheck 33
  s4\sustainOn s s\sustainOff\sustainOn s8.. s32 \sustainOff |
  s4\sustainOn s s\sustainOff\sustainOn s8.. s32-\tweak Y-offset 3 
      \sustainOff |
  s4\sustainOn s s\sustainOff\sustainOn s8.. s32 \sustainOff |
  \repeat unfold 4 {
    s4\sustainOn s\sustainOff\sustainOn s4... s32\sustainOff |
  }
  s4\sustainOn s\sustainOff\sustainOn s s8..\sustainOff\sustainOn 
    s32\sustainOff |
  
  \barNumberCheck 41
  s4\sustainOn s\sustainOff\sustainOn s\sustainOff\sustainOn 
    s8..\sustainOff\sustainOn s32\sustainOff |
  s1\sustainOn |
  s2.... s32-\tweak Y-offset 4 \sustainOff |
  s1\sustainOn |
  s1 * 2 |
  s2.... \movePedalI s32\sustainOff |
  s4\sustainOn s8 s\sustainOff \revertPedal s2 |
  
  \barNumberCheck 49
  s2\sustainOn s\sustainOff |
}

forceBreaks = {
  \partial 4 s4\noBreak
  \repeat unfold 5 { s1\noBreak s1\break } \pageBreak 
  \barNumberCheck 11
  \repeat unfold 5 { s1\noBreak s1\break } \pageBreak 
  \barNumberCheck 21
  \repeat unfold 5 { s1\noBreak s1\break } \pageBreak 
  \barNumberCheck 31
  \repeat unfold 5 { s1\noBreak s1\break } \pageBreak 
  \barNumberCheck 41
  \repeat unfold 3 { s1\noBreak s1\break } 
  \barNumberCheck 47
  s1\noBreak s1\noBreak s1\pageBreak
}

etudeOneMusic = \score {
  \header {
    opus = "Opus 25, No 1"
  }
  \keepWithTag layout
  \new PianoStaff \with { 
    instrumentName = \markup \huge "No. 1" 
    connectArpeggios = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \forceBreaks
  >>
}

etudeOneMidi = \book {
  \bookOutputName "etude-op25-no1"
  \score { 
    \keepWithTag midi
    <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
