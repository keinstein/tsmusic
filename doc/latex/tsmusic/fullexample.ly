\version "2.4.0"
\include "deutsch.ly"

\header {
        title = "Full Example"
        composer = "Nobody"
}

melody =  \relative f' {
        \key f \major
        f1 e1 a1 e1 f1 e1 a1 e1 f1 e1 a1 e1
        \bar "|."
}

text = \lyricmode {
  \set stanza = "1."
  Full Ex -- amp -- le.
  \set stanza = "2."
  Full Ex -- amp -- le.
  \set stanza = "3."
  Full Ex -- amp -- le.
}

accompaniment = \chordmode {
  f1 c1:7 f1 c1:7
  f1 c1:7 f1 c1:7
  f1 c1:7 f1 c1:7
}

\score {
  \simultaneous {
    \context ChordNames \accompaniment
    \context Staff = "mel" {
      \time 4/4
      \context Voice="melodie" {
        <<
        \melody
        \addlyrics \text
        >>
      }
    }
  }
  \layout { }
  \midi {
    \tempo 4 = 120
  }
}
