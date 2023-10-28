\version "2.24.2"
\language english

\header {
  title = "Danse Real"
  subtitle = "(manuscrit du Roi, Paris)"
}

music = {
  \transpose f e {
    <<
      \new Staff {
        \clef treble
        \time 3/4
        \key f \major
        \relative {
          \repeat volta 2 {
            c''2 c4 |
            c2 bf8 a |
            bf2. |
            bf2 r4 |
            d2 d4 |
            d2 c8 bf |
            c2. |
            c2 r4 |
            \break

            \alternative {
              {
                f,2 g4 |
                bf2 bf4 |
                c4 bf8 a bf4 |
                bf2 r4 |
              }

              {
                f2 g4 |
                bf2 a4 |
                g2 a4 |
                g2 r4 |
              }
            }
          }
          \break

          \repeat volta 2 {
            f'2 e4 |
            d2 c4 |
            d2. |
            d2 r4 |
            d2 g,4 |
            g2 a4 |
            f2. |
            f2 r4 |
            \break

            \alternative {
              {
                f2 g4 |
                bf2 bf4 |
                c4 bf8 a8 bf4 |
                bf2 r4 |
              }
              {
                f2 g4 |
                bf2 a4 |
                g2 a4 |
                g2 r4 |
              }
            }
          }
          \break

          \repeat volta 2 {
            bf2 c4 |
            d2 d4 |
            c2 d4 |
            g,2 r4 |
            bf2 c4 |
            bf8 a bf4 g4 |
            a2. |
            a2 r4 |
            \break

            \alternative {
              {
                f2 g4 |
                bf2 bf4 |
                c4 bf8 a bf4 |
                bf2 r4 |
              }
              {
                f2 g4 |
                bf2 a4 |
                g2 a4 |
                g2 r4 |
              }
            }
          }
        }
      }
      \new Staff {

        \clef treble
        \time 3/4
        \key f \major

        \relative {

          \repeat volta 2 {
            \repeat unfold 2 { f'2.~ f2.~ f2.~ f2 r4 }
            \alternative {
              {
                f2.~ f2.~ f2.~ f2 r4
              }
              {
                f2.~ f2.~ f2.~ f2 r4
              }
            }
          }
          \repeat volta 2 {
            \repeat unfold 2 { f2.~ f2.~ f2.~ f2 r4 }
            \alternative {
              {
                f2.~ f2.~ f2.~ f2 r4
              }
              {
                f2.~ f2. g2.~ g2 r4
              }
            }
          }
          \repeat volta 2 {
            g2.~ g2.~ g2.~ g2 r4
            f2.~ f2.~ f2.~ f2 r4
            \alternative {
              {
                f2.~ f2.~ f2.~ f2 r4
              }
              {
                f2.~ f2. g2.~ g2 r4
              }
            }
          }
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

