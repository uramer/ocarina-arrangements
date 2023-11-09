\version "2.24.2"
\language english

\header {
  title = "A Santa Maria mui bon servir faz"
  subtitle = "Cantigas de Santa Maria"
}


high = \relative a' {
  f4 f2 |
  g4 a2 |
  c4 (bf) a |
  g4 (a) bf |
  a8 (g) f2 |
  e2. |

  f4 f2 |
  g4 a2 |
  c4 (bf) a |
  g4 (a) bf |
  a8 g f4 (e) |
  f2. |

  c'4 c2 |
  d4 c2 |
  bf2 a4 |

  c4 c2 |
  d4 c2 |
  bf4 (a2) |

  c4 c2 |
  d4 c2 |
  bf2 a4 |

  c4 c2 |
  d4 c2 |
  bf4 (a2) |

  c4 c2 |
  d4 c2 |
  bf2 a4 |
  g4 (a) bf |
  a8 g8 f2 |
  e2. |

  f4 f2 |
  g4 a2 |
  c4 (bf) a |
  g4 (a) bf |
  a8 g f4 (e) |
  f2. |
}

low = \relative c' {
  \repeat unfold 2 {
    \repeat unfold 5 {f2.~} f2.
  }
  \repeat unfold 4 {
    \repeat unfold 2 {f2.~} f2.
  }
  \repeat unfold 2 {
    \repeat unfold 5 {f2.~} f2.
  }
}

multiStaff = \transpose c e {
  <<
    \new Staff {
      \clef treble
      \time 3/4
      \key f \major

      \high
    }
    \new Staff {
      \clef treble
      \time 3/4
      \key f \major

      \low
    }
  >>
}

\score {
  \multiStaff
  \layout {}
}
\score {
  \unfoldRepeats {
    \multiStaff
  }
  \midi {}
}

