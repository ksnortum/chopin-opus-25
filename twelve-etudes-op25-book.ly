\version "2.23.13"
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

%%% ----
%%% MIDI
%%% ----

\etudeOneMidi
\etudeTwoMidi
\etudeThreeMidi
\etudeFourMidi
