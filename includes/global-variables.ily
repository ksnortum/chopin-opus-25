%\version "2.22.2"

%
% Scheme functions
%

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.Y-offset = -0.25
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

spacingSectionOn = 
#(define-music-function (dur) (real?)
   #{
     \newSpacingSection
     \override Score.SpacingSpanner.spacing-increment = #dur
   #})

spacingSectionOff = {
  \newSpacingSection
  \revert Score.SpacingSpanner.spacing-increment
}

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

ohn = \once \hideNotes 

textInsideSlur = \once {
  \override TextScript.avoid-slur = #'inside
  \override TextScript.outside-staff-priority = ##f
}

tweakInsideSlur = 
  \tweak avoid-slur #'inside 
  \tweak outside-staff-priority ##f
  \etc
    
fingeringInsideStaffOn = \override Fingering.staff-padding = #'()
fingeringInsideStaffOff = \revert Fingering.staff-padding

slashFlag = \once \override Flag.stroke-style = "grace"

%
% Markup
%

fingerThreeFive = \markup \finger \overtie 35
ritenuto = \markup \large \italic "ritenuto"
riten = \markup \large \italic "riten."
pocoRiten = \markup \large \italic "poco riten."
aTempo = \markup \large \italic "a tempo"
appassionato = \markup \large \italic "appassionato"
fzp = \markup \dynamic fzp
dimMarkup = \markup \large \italic "dim."
diminMarkup = \markup \large \italic "dimin."
smorzando = \markup \large \italic "smorzando"
smorz = \markup \large \italic "smorz."
leggierissimo = \markup \large \italic "leggierissimo"
leggiero = \markup \large \italic \whiteout \pad-markup #0.5 "leggiero"
pMoltoLegato = \markup { 
  \dynamic p \large \italic \whiteout \pad-markup #0.5 "molto legato" 
}
pocoAPocoCresc = \makeSpanner \markup \large \italic "poco a poco cresc."
sempreP = \markup { \large \italic "sempre" \dynamic p }
legato = \markup \large \italic "legato"
stacc = \markup \large \italic "staccato"
ppPocoRiten = \markup { \dynamic pp \large \italic "poco riten." }
rall = \markup \large \italic "rall."
pScherzando = \markup { 
  \dynamic p \large \italic \whiteout \pad-markup #0.5 "scherzando" 
}
fg.1 = \markup \finger 1
fg.2 = \markup \finger 2
muDash = \markup "-"
dolce = \markup \large \italic "dolce"
sostMarkup = \markup \large \italic "sostenuto"
conForza = \markup \large \italic \whiteout \pad-markup #0.5 "con forza"
sottoVoce = \markup \large \italic "sotto voce"
ten = \markup \large \italic "ten."
crescMarkup = \markup \large \italic "cresc."
fiveToFour = \markup \finger \overtie 54
twoToOne = \markup \finger \overtie 21
