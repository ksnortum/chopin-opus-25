%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

#(set-global-staff-size 18)

\header {
  title = "Twelve Etudes"
  composer = "Frédéric Chopin (1810-1849)"
  opus = "Opus 25"
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/d/de/IMSLP60298-PMLP01970-Chopin_Etudes_Schirmer_Mikuli_Op_25_filter.pdf"
  copyright = \markup { 
    "This work is licensed under the" 
    \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
    "Creative Commons Attribution-ShareAlike 4.0 License" 
  }
}

\paper {
  ragged-right = ##f % change to ##f
  ragged-last-bottom = ##f % change to ##f
  % min-systems-per-page = 5
  % page-breaking = #ly:minimal-breaking

  markup-system-spacing = 
    #'((basic-distance . 1)
       (padding . 0.5)) % defaults: 1, 0.5

  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60)) % defaults: 12, 8, 1, 60

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  % These settings are scaled to paper-size
  top-margin = 5\mm % default 5
  bottom-margin = 6\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10
    
  tocTitleMarkup = \markup \huge \column {
    \fill-line { \null "Table of Contents" \null }
    \hspace #1
  }
  
  tocItemMarkup = \tocItemWithDotsMarkup
}

\layout {
  \context {
    \Score
    % \omit BarNumber % enable
    \override Slur.details.free-head-distance = 1
  }
  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  } 
}

\midi {
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }    
}
