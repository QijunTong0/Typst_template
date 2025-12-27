#import "../templates/article_ja.typ": *

// テンプレート関数を適用
#show: project.with(
  title: "進捗報告",
  author: "Qijun Tong",
)

本稿では，3つの核心的な公理に基づいた公理的量子物理学について簡潔に紹介する.

= はじめに

まず，物理系は「状態」と呼ばれる数学的対象と，通常は微分方程式によって支配されるその「時間発展」によって記述されることを想起しよう.古典物理学において，状態は一般化座標 $q=(q_1,...,q_f)$ とそれに対応する一般化運動量 $p=(p_1,...,p_f)$ によって定義される. そして時間発展は*ハミルトン関数*および *ハミルトンの正準方程式*によって決定される.量子系の状態の定義を，以下の公理として与える.

#axiom[
  量子系の *状態* は，複素ヒルベルト空間 $cal(H)$ における単位ベクトル（ *状態ベクトル* と呼ばれる）によって表される.
  任意の状態ベクトル$psi in cal(H)$と，絶対値が1である任意の複素数$alpha$に対して，ベクトル$psi$と$alpha psi$は同一の物理的状態を表す.
  任意の観測可能な物理量は$cal(H)$上の自己共役作用素によって表される.
]
#remark[
  自己共役作用素が用いられるのは，物理量の測定値の候補に対応するその固有値が，常に実数となるからである.
]

量子物理学において，状態 $psi in cal(H)$ における観測可能量$T$は確率的である.そこで，確率変数$T_psi$を定義する．ここで確率空間 $(Omega,cal(B)(bb(R)),P)$ 上の $T_psi$ に関する公理を追加する.

#axiom[
  $B in cal(B)(bb(R))$とすると$P(T_psi in B)=||E_T(B) psi||^2$である.ここで，$E_T$は$T$のスペクトル測度である.
]

#theorem(
  title: text[@sample より],
)[
  確率変数$T_psi$の期待値は$E[T_psi] = chevron.l psi, T psi chevron.r$で与えられる.
]

#proof[
  $P_T_psi$を$T_psi$の確率分布とする.

  $
    E[T_psi] = integral_bb(R) lambda d P_T_psi (lambda) = integral lambda d||E_T(B) psi||^2
    &= integral_bb(R) lambda d chevron.l E_T(B)psi, E_T(B)psi chevron.r \
    & = integral_bb(R) lambda d chevron.l psi, E_T(B)^2 psi chevron.r && (E_T(B) "は自己共役作用素であるため") \
    & = integral_bb(R) d chevron.l psi, lambda E_T(B) psi chevron.r && (E_T(B) "は射影作用素であるため") \
    & = chevron.l psi, T psi chevron.r && (E_T(B) "はスペクトル測度であるため")
  $
]

#bibliography("../bib/cite.bib")
