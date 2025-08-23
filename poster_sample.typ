#import "./templates/poster.typ": *
#show: poster.with(
  title: "Poster",
  author: "Author",
  header-text: "International Conference",
)

#set heading(numbering: none)
#set text(
  font: "Meiryo UI",
  //font: "Hiragino Sans",
  size: 32pt,
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
  image("img/sample.png", width: 50%),
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
#lorem(200)
= next section
#theorem[

  (1) some theorem @sample
  $
    min_(P in cal(P)(Omega)) H(P || R_epsilon)
  $


]

#bibliography("bib/cite.bib", title: none)

