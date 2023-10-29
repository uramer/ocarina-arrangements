\version "2.24.2"
\language english

\header {
  title = "Aos seus accomendados"
  subtitle = "Cantigas de Santa Maria"
}


music = {
  \transpose c e {
    <<
      \new Staff {
        \clef treble
        \time 3/4
        \key f \major

        \relative f' {
          f2 g4 |
          a2 a4 |
          a2 g4 |
          bf4 (a4) g4 |
          f8 (e d4) e8 d |
          c2 d4 |
          f2 g4 |
          f2 (e4) |
          \section
          f2. |
          f2 g4 |
          a2 bf4 |
          bf4 (a4) f4 |
          g8 (a8 g4 f4) |
          f2. |
          f2 g4 |
          a2 a4 |
          a4 (g4) f4 |
          g8 (a8 g4 f4) |
          f2. |
          f2 g4 |
          a2 a4 |
          a2 g4 |
          bf4 (a4) g4 |
          f8 (e d4) e8 (d8) |
          c2 d4 |
          f2 g4 |
          f2 (e4) |
          f2.

        }
      }
      \new Staff {
        \clef treble
        \time 3/4
        \key f \major

        \relative {
          f'2.~ f2.~ f2.~ f2.
          f2.~ |
          f2.~ |
          f2 f4 |
          f2. |
          \section
          f2. |
          \repeat unfold 2 {
            \repeat unfold 4 {f2.~} f2.
          }
          \repeat unfold 3 {f2.~} f2.
          f2.~ f2.~
          f2 f4 |
          f2. f2.
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

