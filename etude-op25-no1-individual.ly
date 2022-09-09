\version "2.23.12"
\language "english"

\include "includes/header-paper.ily"
\include "includes/etude-op25-no1-parts.ily"

\paper {
  ragged-last-bottom = ##t
}

\score {
  \keepWithTag layout
  \etudeOneMusic
}

\etudeOneMidi