#import "@preview/ctheorems:1.1.3": *
#show: thmrules.with(qed-symbol: $square$)
#set heading(numbering: none)
#set text(
  font: "Meiryo UI",
)
#set page(paper: "a0", numbering: "1", columns: 2, margin: 4cm, header: align(
  right,
)[#text(24pt)[統計サマーセミナー2025年8月4日\@香川県]])
#place(top + left, float: true, scope: "parent", text(72pt, weight: "bold", blue)[
  Bernstein過程(reciprocal過程)とその応用\
])
#place(top + left, float: true, scope: "parent", text(24pt, weight: "bold", blue)[
  \
])
#place(top + right, float: true, scope: "parent", text(48pt, weight: "bold", blue)[
  #text(48pt, black)[童 祺俊[Tong Qijun](Accenture株式会社)]\
  #text(24pt, black)[※本発表内容は所属組織の見解を代表するものではありません]
])
#set text(
  size: 36pt,
  font: "Meiryo UI",
)

#let axiom = thmbox("axiom", "Axiom", fill: rgb("#CDE6C7"))
#let theorem = thmbox("theorem", "命題", fill: rgb("#eeffee")).with(numbering: none)
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong,
)
#let definition = thmbox("definition", "定義", fill: rgb("#e3f9ff")).with(numbering: none)



#let proof = thmproof("proof", "Proof")
#rect(fill: rgb("#ffdec4"), width: 100%, inset: 15pt, radius: 10pt)[
  = Bernstein過程とは
]
確率過程において、補間を扱う汎用的な問題設定である.

Bernstein過程(またはreciprocal process)とは通常の確率過程とは異なり,過去からの順方向と未来からの逆方向の発展の双方によって特徴づけられる確率過程であり,マルコフ過程の拡張として定義される.
#definition[確率過程${X_t}_{0<=t<1}$がBernstein過程であるとは前向きと後向きのフィルトレーション$cal(F)_s^+,cal(F)_t^-$に対して $P(X_t in A|cal(F)_t,cal(F)_s)=P(X_t in A|X_t,X_s)$を満たす確率過程である.]

== マルコフ性を持つBernstein過程
マルコフ性を持つBernstein過程は初期分布・終端分布・遷移カーネル$h$を用いて特徴づけられる.

#theorem[
  $h(x,t,y)$を遷移核,$X_0 ~mu,X_1~nu$ とする.このとき、Bernstein過程${X_t}_{0<=t<1}$の時刻 $t$ での密度関数 $Q$ は
  $
    q(x,t_1;z,t_2;y,t_3):= (g(x,t_1-t_2,z)g(z,t_2-t_3,y))/g(x,t_3-t_1,y) #text[として]\
    Q(x,t;F,r;y,s)=integral q(x,t;z,r;y,s) d z
  $
]
== Schrödinger bridgeとエントロピー正則化最適輸送
Schrödinger bridgeはマルコフ性を持つBernstein過程の重要な例である.
Schrödinger bridgeは発展方程式の作用素は以下のシュレーディンガー方程式の解によって求まる.
bernstein過程の周辺分布は対となる発展方程式によって記述される.
この解はエントロピー正則化最適輸送問題の双対問題の双対変数と一致することが知られている.

#rect(fill: rgb("#ffdec4"), width: 100%, inset: 15pt, radius: 10pt)[
  = Bernstein過程の応用
]
マルコフ性を持つBernstein過程は既に以下のような応用がある.
== Bernstein過程を用いた量子系の記述
量子力学の文脈において、2対の発展方程式の作用素を複素行列値ハミルトニアンとその随伴$(H,H^*)$で表すことで、量子状態を記述するBernstein過程を構成することができる.これは複素数行列値連続確率過程+スピンのジャンプ過程を融合したマルコフBernstein過程によるモデリングである.
#definition[パウリタイプのBernstein過程の密度関数は以下の発展で支配される.

  $cases(
    (diff eta(x, t))/(diff t)=H eta(x, t),
    (diff eta^*(x,t))/(diff t)=H^* eta(x, t)
  ),#text[境界条件] cases(eta(x, a)=kai(x), eta^*(x, b)=kai^*(x))$]
== Schrödinger bridgeによる生成モデル/サンプリング
Schrödinger bridgeからのサンプリングは以下のランジェバン方程式によって構成され、オイラー丸山法によってサンプリングが可能となる。
== Schrödinger Bridgeによる軌道推定
シングルセル解析などにおいて、観測値から途中の対象の経路を推定することが
#rect(fill: rgb("#ffdec4"), width: 100%, inset: 15pt, radius: 10pt)[
  = オープンプロブレム
]
== Schrödinger Bridge以外のマルコフ性を持つBernstein過程のモデル化
マルコフ過程の確率制御,最適輸送理論によるモデル化は
== 非マルコフ過程のBernstein過程
マルコフ性を持たないBernstein過程は,一般の非マルコフ過程よりは良い性質を持っている.そこには非マルコフ過程よりも扱いやすい
定式化が存在するのではないかと考える
== 逆問題解析への応用
確率的なシステム(例えば量子系)において,観測の機会が限られる場合,限られた観測から,その中間の状態を推定する逆問題への応用が考えられる.Bernstein過程の発展方程式を近似するPhysics-informed machine learningを構築できるのではないかと考えている

=== 参考文献
