#import "@preview/ctheorems:1.1.3": *
#show: thmrules.with(qed-symbol: $square$)
#set heading(numbering: "1.")
= Axiomatic quantum physics
#let axiom = thmbox("axiom", "Axiom", fill: rgb("#CDE6C7"))
#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
  "corollary",
  "Corollary",
  base: "theorem",
  titlefmt: strong,
)
#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))

#let proof = thmproof("proof", "Proof")
We give an brief introduction of *axiomatic quantum physics* in the article.
There are three main axioms in axiomatic quantum physics.
At the first, we recall that a physical system is represented as a state, a mathematical components, and its time evolution, which is often determined by a differential equation of the state. In classic physics, the state is represented by a general coordinates $q=(q_1,...,q_f)$ and general momentum $p=(p_1,...,p_f)$.
#axiom[The *state* in quantum system is represented as an unit vector(:=*state vector*) in a complex Hilbert space $cal(H)$. Note that for any state vector $psi in cal(H)$ and a complex number $alpha$, $phi$ and $alpha psi$ represent the same state.]

#axiom[Any observable physical quantity is represented as an self-adjoint operator on $cal(H)$.hogehoge]
