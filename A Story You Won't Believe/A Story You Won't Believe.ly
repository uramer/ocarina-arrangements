\version "2.24.2"
\language english

\header {
  title = "A Story You Won't Believe"
  subtitle = "from The Witcher 3"
}

core = {
  d8 a' f g4 f8 e4 c8 d4
}

bump = {
  d8 e f g f e d4 c8 d4
}

spike = {
  d4 a'8 f4 r8
}

music = {
  \clef treble
  \time 12/8
  \tempo 2 = 100
  \key c \major

  \relative c'' {
    \core e8 |
    \core r8 |
    \core e8 |
    d8 e f g f e d4. r4. |
    \core e8 |
    \core r8 |
    \core e8 |
    f8 e d c4 d8 d2 r4 |
    d1.~ |
    d2. d8 a' f g r4 |
    d1. |
    a'8 a f g4 f8 e4 c8 d4 r8 |
    \core e8 |
    \bump r8 |
    \core e8 |
    f8 g f e d c d~d2 r8 |
    \core e8 |
    \bump r8 |
    \core e8 |
    f8 g f e d c d4. r4. |
    \repeat unfold 3 { \spike }
    d4 a'8 d,4:16 r8 |
    \repeat unfold 3 { \spike }
    d4. \prall c4 d8 |
    \repeat unfold 6 { \spike }
    d2. \trill d4 c8 d4 r8 |
    \core e8 |
    f8 g f e d c d4 e8 f4 r8 |
    \core e8 |
    f8 g g g f e d~ d2 r8 |

    \repeat unfold 2 {
      a'8 a a g g g f f f e e e |
      d4 c8 d4 e8 
      \alternative {
        {f8 g f e4 r8 }
        {f4 e8 d4 r8}
      }
    }

    \repeat unfold 2 {
      d4 d8 d4 d8 e4 e8 e4 e8 |
      f4 f8 f4 f8 g4 g8 g4 g8 |
      a4 f8 g4 f8 e4
      \alternative {
        {
          d8 c4 d8 |
          e4 f8 g4 f8 e4 c8 d4 r8 |
        }
        {
          c8 d4 e8 |
          f4 g8 f4 e8 d4 c8 d4 r8 |
        }
      }
    }
  }

}

\score {
  \music
  \layout { indent = 0.0 }
}
\score {
  \unfoldRepeats {
    \music
  }
  \midi {}
}

