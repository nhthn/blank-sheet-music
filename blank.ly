\version "2.19.44"

#(set-global-staff-size 26)

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  
  indent = 0\cm
  ragged-last-bottom = ##f
  page-count = #1
  
  top-margin = 1\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
}

\score {
  \new Staff {
    \repeat unfold 12 {
      s1 \bar "" \break
    }
  }
  \layout {
    \context {
      \Staff
      \remove "Clef_engraver"
      \remove "Time_signature_engraver"
      \override StaffSymbol.color = #(x11-color 'gray)
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}