\version "2.24.2"
\language english

\header {
  title = "Summer is icumen in"
  subtitle = "(England, ca. 1310)"
}

music = {
  \transpose f e {
    <<
      \new Staff {
        \clef treble
        \time 6/8
        \key f \major

        \relative {
          f''4 f8 d4 d8 |
          f4 f8 e8 d8 c8 |
          a4 a8 bf4 g8 |
          a4. r4. |
          f4 a8 g4 bf8 |
          a4 a8 g4 f8 |
          a4 c8 d4 d8 |
          c4. r4. |
          f4. d4. |
          f4. r4. |
          c4 a8 bf4 g8 |
          a4 c8 bf4 a8 |
          f4 a8 g4 g8 |
          f4. r4. |
          a4 a8 g4 bf8 |
          c4 c8 d4 e8 |
          c4 c8 d4 d8 |
          c4. r4. |
          f4. d4. |
          f4. d4. |
          f,4 a8 bf4 g8 |
          a4 c8 d4 c8 |
          a4 c8 g4 g8 |
          f2. |
        }
      }
      \new Staff {
        \clef treble
        \time 3/4
        \key f \major

        \relative {
          f'4. g4. |
          f2. |
          f4. g4. |
          f4. r4. |
          f4. g4. |
          f2. |
          f4. g4. |
          f4. r4. |
          \repeat unfold 3 {
          f4. g4. |
          f4. r4. |
          f4. g4. |
          f2. |
          }
          f4. g4. |
          f2. |
          f4. g4. |
          f2. |
        }
      }
    >>
  }
}

\score {
  \music
  \layout {}
}
\score {
  \unfoldRepeats {
    \music
  }
  \midi {}
}

