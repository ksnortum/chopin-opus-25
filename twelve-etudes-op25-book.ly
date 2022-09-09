\version "2.23.12"
\language "english"

%%% ------
%%% Pieces
%%% ------

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/etude-op25-no1-parts.ily"
\include "includes/etude-op25-no2-parts.ily"
\include "includes/etude-op25-no3-parts.ily"

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
\score {
  \header {
    opus = "Opus 15, No 1"
  }
  \keepWithTag layout
  \etudeOneMusic
}

\tocItem \markup { 
  "Etude No. 14 in F minor"
}
\score {
  \header {
      opus = "Opus 15, No 2"
    }
  \keepWithTag layout
  \etudeTwoMusic
}

\tocItem \markup { 
  "Etude No. 15 in F major"
}
\score {
  \header {
    opus = "Opus 15, No 3"
  }
  \keepWithTag layout
  \etudeThreeMusic
}

%%% ----
%%% MIDI
%%% ----

\etudeOneMidi
\etudeTwoMidi
\etudeThreeMidi
