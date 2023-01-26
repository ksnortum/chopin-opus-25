\version "2.24.0"
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
\include "includes/etude-op25-no9-parts.ily"

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
  \concat { "Etude No. 1 in A" \raise #0.75 \teeny \flat " major" }
}
\etudeOneMusic

\tocItem \markup { 
  "Etude No. 2 in F minor"
}
\etudeTwoMusic

\tocItem \markup { 
  "Etude No. 3 in F major"
}
\etudeThreeMusic

\tocItem \markup {
  "Etude No. 4 in A minor"
}
\etudeFourMusic

\tocItem \markup {
  "Etude No. 5 in E minor"
}
\etudeFiveMusic

\tocItem \markup { 
  \concat { "Etude No. 6 in G" \raise #0.75 \teeny \sharp " minor" }
}
\etudeSixMusic

\tocItem \markup { 
  \concat { "Etude No. 7 in C" \raise #0.75 \teeny \sharp " minor" }
}
\etudeSevenMusic

\tocItem \markup { 
  \concat { "Etude No. 8 in D" \raise #0.75 \teeny \flat " major" }
}
\etudeEightMusic

\tocItem \markup {
  \concat { "Etude No. 9 in G" \raise #0.75 \teeny \flat " major" }
}
\etudeNineMusic

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
\etudeNineMidi
