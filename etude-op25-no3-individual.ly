\version "2.23.12"
\language "english"

\include "includes/header-paper.ily"
\include "includes/etude-op25-no3-parts.ily"
\paper {
  ragged-right = ##f
  ragged-last-bottom = ##t
}

\score {
  \keepWithTag layout
  \etudeThreeMusic
}

\etudeThreeMidi
