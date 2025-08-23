// poster.typ: Your reusable poster template

// Imports must be at the top level, outside the function.
#import "@preview/ctheorems:1.1.3": *
#let axiom = thmbox("axiom", "Axiom", fill: rgb("#CDE6C7"))
#let theorem = thmbox("theorem", "theorem", fill: rgb("#eeffee")).with(numbering: none)
#let corollary = thmplain("corollary", "Corollary", base: "theorem", titlefmt: strong)
#let definition = thmbox("definition", "Definition", fill: rgb("#e3f9ff")).with(numbering: none)
// Define the main template function.
#let poster(
  // === Template Arguments with Default Values ===
  paper: "a0",
  columns: 2,
  header-text: "Default Header",
  title: none,
  author: none,
  // The 'body' argument captures all the content the template is applied to.
  body,
) = {
  // === Apply Scoped Rules and Settings ===
  // These settings will only apply to the 'body' content.

  // 1. Configure the page layout using function arguments.
  set page(
    paper: paper,
    columns: columns,
    numbering: "1",
    margin: (top: 2.5cm, bottom: 1.5cm, x: 2.5cm),
    header: align(right)[#text(24pt, header-text)], // Use the argument here
  )

  // 2. Set up theorem and math styles.
  show: thmrules.with(qed-symbol: $square$)
  set math.cases(gap: 1em)

  // 3. Define the custom heading style for level 1.
  show heading: it => {
    if it.level == 1 {
      rect(
        fill: rgb("#ffdec4"),
        width: 100%,
        inset: 15pt,
        radius: 10pt,
      )[#it]
    } else {
      it // Use default style for other levels
    }
  }

  // === Define Local Environments ===
  // These definitions will be available inside the template's scope.


  // === Render the Final Document Content ===

  // Optional: Display a title and author block if they are provided.
  if title != none {
    place(top + left, float: true, scope: "parent", text(94pt, weight: "bold", blue)[
      #title\
    ])
  }
  if author != none {
    place(top + right, float: true, scope: "parent", text(48pt, weight: "bold", blue)[
      #text(48pt, black)[
        #author\ \
      ]
    ])
  }

  // Finally, render the user's main content.
  body
}
