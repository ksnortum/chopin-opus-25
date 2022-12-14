\version "2.23.82"
\language "english"

%%% ------
%%% Pieces
%%% ------

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/etude-op25-no1-parts.ily"
\include "includes/etude-op25-no2-parts.ily"
\include "includes/etude-op25-no3-parts.ily"
\include "includes/etude-op25-no4-parts.ily"
\include "includes/etude-op25-no5-parts.ily"
\include "includes/etude-op25-no6-parts.ily"
\include "includes/etude-op25-no7-parts.ily"
\include "includes/etude-op25-no8-parts.ily"

%%% ------------------
%%% Construct the book
%%% ------------------

\titlePage

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

\tocItem \markup { 
  \concat { "Etude No. 13 in A" \raise #0.75 \teeny \flat " major" }
}
\etudeOneMusic

\tocItem \markup { 
  "Etude No. 14 in F minor"
}
\etudeTwoMusic

\tocItem \markup { 
  "Etude No. 15 in F major"
}
\etudeThreeMusic

\tocItem \markup {
  "Etude No. 16 in A minor"
}
\etudeFourMusic

\tocItem \markup {
  "Etude No. 17 in E minor"
}
\etudeFiveMusic

\tocItem \markup { 
  \concat { "Etude No. 18 in G" \raise #0.75 \teeny \sharp " minor" }
}
\etudeSixMusic

\tocItem \markup { 
  \concat { "Etude No. 19 in C" \raise #0.75 \teeny \sharp " minor" }
}
\etudeSevenMusic

\tocItem \markup { 
  \concat { "Etude No. 20 in D" \raise #0.75 \teeny \flat " major" }
}
\etudeEightMusic

%%% ----
%%% MIDI
%%% ----

\etudeOneMidi
\etudeTwoMidi
\etudeThreeMidi
\etudeFourMidi
\etudeFiveMidi
\etudeSixMidi
\etudeSevenMidi
\etudeEightMidi
