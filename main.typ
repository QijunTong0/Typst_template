#import "@preview/ctheorems:1.1.3": *
#show: thmrules.with(qed-symbol: $square$)
#set heading(numbering: "1.")
#set text(
  font: "Meiryo UI",
)
#set page(paper: "a0", numbering: "1", columns: 2, margin: 4cm, header: align(
  right,
)[#text(24pt)[統計サマーセミナー2025年8月4日\@香川県]])
#place(top + left, float: true, scope: "parent", text(72pt, weight: "bold", blue)[
  Bernstein過程(reciprocal過程)とその推定について\
])
#place(top + left, float: true, scope: "parent", text(24pt, weight: "bold", blue)[
  \
])
#place(top + right, float: true, scope: "parent", text(48pt, weight: "bold", blue)[
  #text(48pt, black)[童 祺俊(Accenture株式会社)]\
  #text(24pt, black)[※本発表内容は所属組織の見解を代表するものではありません]
])
#set text(
  size: 36pt,
  font: "Meiryo UI",
)

#let axiom = thmbox("axiom", "Axiom", fill: rgb("#CDE6C7"))
#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong,
)
#let definition = thmbox("definition", "定義", fill: rgb("#e3f9ff"))



#let proof = thmproof("proof", "Proof")
#rect(fill: rgb("#ffdec4"), width: 100%, inset: 15pt, radius: 10pt)[
  = #text(42pt)[Bernstein過程(reciprocal過程)]
]
Bernstein過程(またはreciprocal process)とは通常の確率過程とは異なり、現在までの情報だけではなく未来からの情報の双方向によって特徴づけられる確率過程である
#definition[${X_t}$を$a<=t<=b$で定義される確率過程とする.$X_t$がBernstein過程であるとは$cal(F)_s$:forward filteration,$cal(F)_t:$backword filterationに対して $P(X_t in A|cal(F)_t,cal(F)_s)=P(X_t in A|X_t,X_s)$を満たす確率過程である.]
bernstein過程$X_t$の周辺分布は時刻$s$の初期分布と$t$の終端分布そして遷移確率カーネルによって定まる.
#definition[${X_t}$]
bernstein過程の周辺分布は対となる発展方程式によって記述される.

#rect(fill: rgb("#ffdec4"), width: 100%, inset: 15pt, radius: 10pt)[
  = #text(42pt)[Schrödinger bridgeとエントロピー正則化最適輸送]
]
Bernstein過程の定義の通り,一般にBernstein過程はマルコフ性を持たない。Bernstein過程かつマルコフ性を持つ確率過程はSchrödinger bridgeに帰着できることが知られている。
Schrödinger bridgeはエントロピー正則化最適輸送と密接に関係し,その発展方程式の作用素は以下のシュレーディンガー方程式の解によって求まる.
この解はエントロピー正則化最適輸送問題の双対問題の双対変数と一致する.

#rect(fill: rgb("#ffdec4"), width: 100%, inset: 15pt, radius: 10pt)[
  = #text(42pt)[Bernstein過程の応用]
]
== 複素行列値確率過程への拡張
量子力学の文脈において、2対の発展方程式の作用素を複素行列値ハミルトニアンとその随伴$H,H^*$で表すことで、量子状態を記述するBernstein過程を構成することができる.
#definition[パウリタイプのBernstein過程の密度関数は以下の発展で支配される.

  $cases(
    (diff eta(x, t))/(diff t)=H eta(x, t),
    (diff eta^*(x,t))/(diff t)=H^* eta(x, t)
  ),#text[境界条件] cases(eta(x, a)=kai(x), eta^*(x, b)=kai^*(x))$]
== Schrödinger bridgeからのサンプリング
Schrödinger bridgeからのサンプリングは以下のランジェバン方程式によって構成され、オイラー丸山法によってサンプリングが可能となる。
== 平均場ニューラルネットワークによる軌道推定

#rect(fill: rgb("#ffdec4"), width: 100%, inset: 15pt, radius: 10pt)[
  = #text(42pt)[オープンプロブレム]
]
