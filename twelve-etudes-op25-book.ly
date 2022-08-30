\version "2.23.12"
\language "english"

%%% ------
%%% Pieces
%%% ------

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/etude-op25-no1-parts.ily"
\include "includes/etude-op25-no2-parts.ily"

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
\score {
  \keepWithTag layout
  \etudeOneMusic
}

\tocItem \markup { 
  "Etude No. 2 in F minor"
}
\score {
  \header {
    title = ##f
    composer = ##f
    opus = ##f
  }
  \keepWithTag layout
  \etudeTwoMusic
}

%%% ----
%%% MIDI
%%% ----

\etudeOneMidi
\etudeTwoMidi
