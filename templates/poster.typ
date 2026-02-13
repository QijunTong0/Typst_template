// poster.typ: Template for academic posters
#import "@preview/cjk-spacer:0.2.0": *
#import "@preview/theorion:0.4.1": *
#import cosmos.clouds: *

#let poster(
  paper: "a0",
  header-text: "Default Header",
  title: none,
  author: none,
  body,
) = {
  show: show-theorion
  show: cjk-spacer
  // 1. Page settings
  set page(
    paper: paper,
    numbering: none,
    margin: (top: 2.0cm, bottom: 1.5cm, x: 2.5cm),
    header: align(right)[#text(32pt, header-text)],
  )

  // 2. Set main color
  let primary-color = rgb("#1a2a85")

  // 3. Heading style (Level 1)
  show heading: it => {
    if it.level == 1 {
      set align(center)
      set text(fill: primary-color, size: 48pt)
      set block(above: 1em, below: 0.5em)

      stack(
        dir: ttb,
        spacing: 0.3em,
        it,
        line(length: 100%, stroke: 4pt + primary-color),
      )
    } else {
      it
    }
  }

  if title != none or author != none {
    block(
      width: 100%,
      stroke: none, // No border (since there is a background color)
      inset: (x: 40pt, y: 40pt),
      fill: primary-color, // Set background to navy blue
      below: 0.5cm,
    )[
      // Place logo at the bottom right (relative to the block)
      #place(bottom + right, dx: 1.2cm, dy: 1cm)[
        #image("../img/organization_logo.svg", width: 10%)
      ]

      // Text placement
      #set align(left)
      #set text(fill: white) // Set text color to white

      #if title != none {
        text(96pt, weight: "bold")[#title]
      }
      #v(-30pt)
      #if author != none {
        text(54pt, weight: "bold")[#author]
      }
    ]
    v(25pt) // Space between title and body
  }

  // 5. Render body in 2 columns (This is also a modification point)
  columns(2, gutter: 40pt)[
    #body
  ]
}
