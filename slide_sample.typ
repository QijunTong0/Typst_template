#import "./templates/slide.typ": *
#set text(
  font: "Meiryo UI",
  size: 12pt,
)
#show: slides.with(
  title: "Presentation Title",
  subtitle: "Affiliation",
  date: "date",
  authors: "Author",
  layout: "large",
  title-color: blue.darken(60%),
  toc: false,
  count: "number",
)
#set cite(style: "alphanumeric")

== Index
#list([content1], [content2], [content3])

== Abstract

/ *term1*: #lorem(10)
/ *term2*: #lorem(10)

== slide title
#keymsg[Some key message]

#lorem(19)

#figure(
  image("img/sample.png", width: 50%),
  numbering: none,
)

== slide title
#keymsg[#lorem(10)]
@sample say that
$
  y=integral x d x.
$

== reference
#bibliography("./bib/cite.bib")
