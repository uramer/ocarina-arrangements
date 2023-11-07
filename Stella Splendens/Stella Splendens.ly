\version "2.24.2"
\language english

\header {
  title = "Stella splendens"
  subtitle = "Llibre Vermeil de Montserrat, 1370"
}

star = \relative a' {
  a4. (g8) a4 f4 |
  a4 f g2 (|
  bf8 a f g) g4 a |
  f4 g g8 (f)
}

shining = {
  d2 d4 f4 |
  d4 d4 c2 ( |
  f2 ) e4 d4 |
  d4 c
}

high = \relative a' {
  \repeat volta 3 {
    \mark \markup {\bold "3×"}
    \repeat unfold 2 {
      \star
      \alternative {
        { a4 | c2 r2 }
        { g4 | a2 r4 }
      }
    }
    \repeat unfold 2 {
      a4 |
      a4 a b d |
      b4 (c8 a) g4 b |
      c4 a4 g8 (f) f (e) |
      a2
      \alternative {
        { r4 }
        { r2 }
      }
    }
  }
  \repeat unfold 2 {
    \star
    \alternative {
      { a4 | c2 r2 }
      { g4 | a1 }
    }
  }
}

low = \relative c' {
  \repeat volta 3 {
    \repeat unfold 2 {
      \shining
      \alternative {
        {f4 d | c2 r2}
        {f4 d8 (e16 c) | d2 r4}
      }
    }
    \repeat unfold 2 {
      d4 |
      d4 d d d |
      f4 % g4 in the original, M3 replaced with a P4
      (f) e e |
      c4 d f e |
      d2
      \alternative {
        { r4 }
        { r2 }
      }
    }
  }
  \repeat unfold 2 {
    \shining
    \alternative {
      {
        f4 % g4 in the original, P1 and M2 swapped
        d | c2 r2
      }
      {f4 d8 (e16 c) | d1 }
    }
  }
}

singleStaff = \transpose c e {
  \new Staff {
    \clef treble
    \time 4/4
    \key c \major

    <<
      \new Voice = "High" { \voiceOne \high }
      \new Voice = "Low" {\voiceTwo \low }
    >>
  }
}

multiStaff = \transpose c e {
  <<
    \new Staff {
      \clef treble
      \time 4/4
      \key c \major

      \high
    }
    \new Staff {
      \clef treble
      \time 4/4
      \key c \major

      \low
    }
  >>
}

\score {
  \multiStaff
  \layout {}
}
\score {
  \singleStaff
  \layout {}
}
\score {
  \unfoldRepeats {
    \multiStaff
  }
  \midi {}
}

