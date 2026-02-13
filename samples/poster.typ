#import "../templates/poster.typ": *
#show: poster.with(
  title: "Poster Title",
  author: "Author Names",
  header-text: "XXth International Conference@somewhere",
)

#set heading(numbering: none)
#set text(
  size: 32pt,
  //font: "Meiryo", //for japanese article
)
#set cite(style: "alphanumeric")


= Introduction
#lorem(40)
#definition[#lorem(19)
  $
    cal(F)_t^+=sigma({X_s | s in[0,t_0]}),quad
    cal(F)_t^-=sigma({X_s | s in[t_1,1]})
  $
  $ P(X_t in A | cal(F)_(t_0)^+,cal(F)_(t_2)^-)=P(X_t in A | X_t_0,X_t_1) $
]

exsample: #lorem(10)
$
  R_(a b):=(W_t | W_(t_0)=a,W_(t_1)=b)
$

#figure(
  image("../img/sample.png", width: 50%),
  caption: [
    caption
  ],
  numbering: none,
)
= Results

== 1.subsection
#lorem(10)
#theorem[
  #lorem(20)
]
#lorem(100)
#figure(
  table(
    columns: 3,
    align: left,
    stroke: none,
    inset: (x: 8pt, y: 16pt),

    table.vline(x: 1, stroke: 0.5pt),

    [#h(5%)], [column1#h(5%)], [column2],
    table.hline(stroke: 1pt),

    [$"KL"$],
    [$"Tr"(Sigma_nu^(-1) Sigma_mu)- d + log (frac(|Sigma_nu|, |Sigma_mu|, style: "horizontal"))$],
    [$infinity$],

    table.hline(stroke: 0.5pt),

    [$"W"$],
    [$"Tr"(Sigma_mu+Sigma_nu)-2"Tr"(Sigma_mu^(1/2)Sigma_nu Sigma_mu^(1/2))^(1/2)$],
    [$"Tr"(R_mu+R_nu)-2"Tr"(R_mu^(1/2)R_nu R_mu^(1/2))^(1/2)$],
  ),
  caption: text[#underline(text[Figure1.* Figure Title*])],
  numbering: none,
)
#lorem(100)

#colbreak()
= Disscussion
#theorem[

  (1) some theorem @sample
  $
    min_(P in cal(P)(Omega)) H(P || R_epsilon)
  $


]

#bibliography("../bib/cite.bib", title: none)

