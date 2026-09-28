---
title: "Diffusion in GHD — Detailed Study Notes"
authors:
  - admin
date: 2026-09-28
summary: "Detailed Markdown study notes on diffusion in generalized hydrodynamics, with rendered equations and derivations through the first question of section 2.4."
tags:
  - generalized hydrodynamics
  - GHD
  - quantum many-body physics
  - diffusion
  - integrable systems
featured: true
math: true
---

{{% callout note %}}
This study note was generated with GPT assistance during guided reading, then source-checked and tutor-reviewed. It is a personal learning reference; verify equations, conventions, and interpretations against the original paper before citing or reusing it.
{{% /callout %}}

De Nardis, Bernard and Doyon, *SciPost Phys.* **6**, 049 (2019), arXiv:1812.00767v4.

**Coverage:** the introduction, §§2.1–2.3, Appendix B, and only the first question in §2.4: why a local-density improvement matters at diffusive order. The rest of §2.4 and §§2.5–6 are intentionally left for our future discussion. This page records what we have worked through; consult the [original paper on arXiv](https://arxiv.org/abs/1812.00767) for the complete source.

## Reading map

The chain we are building is

conservation laws → hydrodynamic closure → density correlations → current correlations → Drude and Onsager matrices → diffusion matrix → choice of local density → quasiparticle calculation later.

The first five arrows are general hydrodynamics. They do not require Bethe Ansatz. The paper will later supply the microscopic quasiparticle calculation of the transport coefficients.

Three matrices must stay distinct:

| Symbol | Meaning | Where it enters |
| --- | --- | --- |
| \(D_{ij}\) | Drude matrix | Coefficient of ballistic \(t^2\) growth in Eq. (2.14) |
| \(\mathfrak L_{ij}\) | Onsager matrix | Coefficient of subleading \(t\) growth in Eq. (2.14) |
| \(\mathfrak D_i{}^j\) | Diffusion matrix | Coefficient of the first spatial gradient of the mean current in Eq. (2.9) |

The distinction matters: \(D\) and \(\mathfrak L\) describe spreading extracted from correlations; \(\mathfrak D\) is a coefficient in a particular hydrodynamic description. Section 2.4 exposes why the latter description needs a choice of local density.

## 1. What the paper is trying to add

### Physics first

At Euler order a quasiparticle packet travels with an effective velocity. Interactions are already present: dressing and the background state determine \(v^{\rm eff}\). The next question is whether the packet also broadens. In a normal-mode sketch,

\[
\omega_a(k)=v_a k-\frac{i}{2}\gamma_a k^2+O(k^3).
\]

The real term moves the centre by \(v_at\); the imaginary \(k^2\) term produces a width of order \(\sqrt{\gamma_at}\). This dispersion is a useful interpretation, not a derivation of this paper's \(\mathfrak D\). The later quasiparticle sections will connect one particle–hole processes to Euler propagation and two particle–hole processes to the diffusive correction. At our current reading point, that connection is a preview of what the authors seek to establish.

**Classification.** The new physical target is broadening in an interacting integrable fluid. Replacing a full microscopic state by slow conserved-density profiles is the standard hydrodynamic assumption. The matrix and functional notation organizes that assumption.

## 2. Section 2.1: exact conservation and approximate closure

The microscopic continuity equation and charge definition are exact:

\[
\partial_t q_i(x,t)+\partial_x j_i(x,t)=0,\qquad
Q_i=\int dx\,q_i(x,t). \tag{2.1–2.2}
\]

Taking expectations gives \(\partial_t\bar q_i+\partial_x\bar j_i=0\), where \(\bar q_i=\langle q_i\rangle\). It does **not** tell us the current from the density. The closure problem is to express the mean current using the slow profile \(\{\bar q_j(y,t)\}\) on one time slice.

The paper assumes local relaxation to maximum-entropy states constrained by the conserved quantities. A homogeneous stationary state is formally \(Z^{-1}\exp(-\sum_i\beta_iQ_i)\), Eq. (2.3). In an inhomogeneous situation the parameters vary slowly across space. The strong hydrodynamic postulate is Eq. (2.4): at sufficiently long scales, local averages are functionals of the conserved-density profile. This is an **assumption**, not a consequence of continuity.

Locality turns that functional into a gradient expansion. Equations (2.9)–(2.10) read

\[
\bar j_i=F_i(\bar q)-\frac12\mathfrak D_i{}^j(\bar q)\,\partial_x\bar q_j+O(\partial_x^2),
\]
\[
\partial_t\bar q_i+\partial_xF_i(\bar q)
=\frac12\partial_x\!\left(\mathfrak D_i{}^j(\bar q)\partial_x\bar q_j\right).
\]

Here \(F_i\) is the current measured in a **homogeneous** state; \(A_i{}^j=\partial F_i/\partial\bar q_j\) is its Jacobian, Eq. (2.20). The second term in the current is the first correction forced by inhomogeneity. The factor \(1/2\) is the paper's convention. Neither formula is an operator identity \(j_i=F_i(q)\): it is a constitutive relation for expectations.

**A distinction that prevented confusion in our earlier discussion.** For one fixed inhomogeneous state \(\rho\), differentiating \(\langle o(x)\rangle_\rho\) with respect to \(x\) acts on the operator's position. For a family \(\rho_x\) of locally homogeneous states, differentiating \(\langle o(x)\rangle_{\rho_x}\) also changes the state. These are different derivatives. Likewise, a hydrodynamic “time slice” is a profile at fixed \(t\), not an average over time.

**Reproduce:** substitute the current expansion into continuity and keep track of the outer \(\partial_x\). If \(\mathfrak D\) depends on \(\bar q\), that outer derivative generates products of gradients; one must not silently treat it as constant.

## 3. Section 2.2: how correlations measure transport

Work in one homogeneous stationary background. Define the ordered connected density correlator and susceptibility,

\[
S_{ij}(x,t)=\langle q_i(x,t)q_j(0,0)\rangle^{\rm c},\qquad
C_{ij}=\int dx\,S_{ij}(x,t). \tag{2.11–2.12}
\]

Conservation makes \(C\) time independent; it does not freeze the shape of \(S(x,t)\). Define the spatially integrated current correlator

\[
K_{ij}(t)=\int dx\,\langle j_i(x,t)j_j(0,0)\rangle^{\rm c}
\]

and the density-correlation moments \(M_n(t)=\int dx\,x^nS(x,t)\). Their second moment records both transport of the centre and spreading.

### Derivation backbone of the sum rule

Use continuity on each density insertion. Stationarity and translation invariance convert the derivatives at the second insertion into derivatives of the coordinate difference. With \(G_{ij}(x,t)=\langle j_i(x,t)j_j(0,0)\rangle^{\rm c}\),

\[
\partial_t^2 S_{ij}(x,t)=\partial_x^2G_{ij}(x,t).
\]

Multiplying by \(x^2\) and integrating by parts twice gives \(M_2''(t)=2K(t)\), assuming the boundary terms vanish. Applying this relation to \(t\) and \(-t\) produces the symmetrized sum rule (2.13):

\[
\frac{M_2(t)+M_2(-t)}2-M_2(0)
=\int_{-t}^{t}du\, (t-|u|)K(u).
\]

The triangular weight is the time-integrated effect of the current correlation. This is the short derivation to remember; the exact integration-by-parts proof in Appendix A is machinery.

The paper defines, componentwise,

\[
D=\lim_{T\to\infty}\frac{1}{2T}\int_{-T}^{T}du\,K(u), \tag{2.15}
\]
\[
\mathfrak L=\lim_{T\to\infty}\int_{-T}^{T}du\,[K(u)-D]. \tag{2.16}
\]

If \(K(t)\) has a persistent component \(D\), the triangular integral grows as \(Dt^2\): ballistic transport. If the remainder has a finite integrated area, it contributes \(\mathfrak L t\): the diffusive-scale correction in Eq. (2.14). A decaying remainder need not have a finite area, so ordinary finite diffusion is an additional long-time condition. \(M_2\) is an *uncentered correlation moment*, not automatically a probability variance or merely a packet width.

**Memorize the meaning, derive the relation:** persistent current correlation \(\leftrightarrow D\); integrated remainder \(\leftrightarrow\mathfrak L\); continuity links these to the \(t^2\) and \(t\) terms of density spreading.

## 4. Section 2.3 and Appendix B: turn closure into a correlation equation

This is a bridge, not a new quasiparticle calculation. The paper wants to relate the measured \(D,\mathfrak L\) to the hydrodynamic \(A,\mathfrak D\). For positive time, exact continuity gives

\[
\partial_t S_{ij}(x,t)
+\partial_x\langle j_i(x,t)q_j(0,0)\rangle^{\rm c}=0. \tag{B.1}
\]

To evaluate the current–density correlator, perturb the *initial ensemble* by a source that inserts \(q_j(0,0)\). Appendix B's response assumption is Eq. (B.3),

\[
\frac{\delta\langle o(x,t)\rangle}{\delta\eta_j(y)}
=\langle o(x,t)q_j(y,0)\rangle^{\rm c}.
\]

We use \(\eta\) to distinguish this positive response coordinate from the negative-sign thermodynamic \(\beta\) in Eq. (2.3). In a commuting ensemble, differentiating the normalized exponential shows the connected subtraction directly: the derivative of \(Z^{-1}\) subtracts \(\langle o\rangle\langle q_j\rangle\). For generic noncommuting quantum sources, an exponential derivative gives a Kubo–Mori insertion; the ordinary ordered insertion here requires the paper's additional response assumption at diffusive order.

### The functional chain rule, explicitly

Linearize the constitutive relation around a *homogeneous* background:

\[
\frac{\delta\bar j_i(x,t)}{\delta\bar q_k(y,t)}
=A_i{}^k\delta(x-y)
-\frac12\mathfrak D_i{}^k\,\partial_x\delta(x-y).
\]

This is a continuum matrix kernel. Its \(\delta(x-y)\) says that the Euler response is local; the derivative of the delta function carries the gradient correction. A variation of \(\mathfrak D(\bar q)\) multiplies the background gradient and therefore vanishes in this homogeneous linearization. The variation of \(F\) does **not** vanish: it gives \(A\).

Equation (B.4) applies the chain rule:

\[
\begin{aligned}
\langle j_i(x,t)q_j(0,0)\rangle^{\rm c}
&=\int dy\,
\frac{\delta\bar j_i(x,t)}{\delta\bar q_k(y,t)}
\frac{\delta\bar q_k(y,t)}{\delta\eta_j(0)}\\
&=A_i{}^kS_{kj}(x,t)
-\frac12\mathfrak D_i{}^k\,\partial_xS_{kj}(x,t).
\end{aligned}
\]

The repeated \(k\) is summed. Substitute this into (B.1):

\[
\boxed{\partial_tS=-A\,\partial_xS
+\frac12\mathfrak D\,\partial_x^2S,\qquad t>0.} \tag{2.19, positive branch}
\]

The essential lesson is that we differentiated a closure for *mean currents* to obtain a long-wavelength correlator equation. We did not replace the microscopic current operator by \(F(q)-\mathfrak D\partial_xq/2\).

### Why negative time requires a different argument

For \(t<0\), a state at time \(0\) cannot be used as initial data for a dissipative approximation at the earlier time \(t\). The authors first prove an exact correlator identity. Write

\[
J_{ij}=\langle j_i(x,t)q_j(0,0)\rangle^{\rm c},\qquad
H_{ij}=\langle q_i(x,t)j_j(0,0)\rangle^{\rm c}.
\]

Continuity at the first insertion gives \(\partial_tS_{ij}=-\partial_xJ_{ij}\). Continuity at the second insertion, together with translation invariance, gives \(\partial_tS_{ij}=-\partial_xH_{ij}\). Thus \(\partial_x(J-H)=0\); clustering removes the remaining spatial constant:

\[
\boxed{J_{ij}(x,t)=H_{ij}(x,t).} \tag{B.5}
\]

Now translate *both* insertions:

\[
H_{ij}(x,t)=
\langle q_i(0,0)j_j(-x,-t)\rangle^{\rm c}.
\]

No operators have been exchanged. Because \(t<0\), the current \(j_j\) now appears at the later time \(-t>0\). Apply the corresponding right-insertion response to its constitutive relation. Its spatial coordinate is \(z=-x\), so \(\partial_z=-\partial_x\); this flips the sign of the gradient term:

\[
J_{ij}=A_j{}^kS_{ik}
+\frac12\mathfrak D_j{}^k\partial_xS_{ik}.
\]

The \(j\) index sits on \(A_j{}^k\) and \(\mathfrak D_j{}^k\), while the sum runs over the *second* density index \(k\) of \(S_{ik}\). Hence \(S_{ik}A_j{}^k=(SA^{\mathsf T})_{ij}\), not \((AS)_{ij}\). Inserting this \(J\) into continuity gives

\[
\boxed{\partial_tS=-(\partial_xS)A^{\mathsf T}
-\frac12(\partial_x^2S)\mathfrak D^{\mathsf T},\qquad t<0.}
\tag{2.19, negative branch}
\]

The minus sign on diffusion is a sign in the negative-time equation. If one uses \(\tau=-t>0\), the diffusion term in the equation for \(S(x,-\tau)\) has positive sign. It is not a claim of physical antidiffusion.

**Operator-order limit of the argument.** Eq. (B.5) relates two different current–density correlators by conservation and clustering. Translating \(H\) preserves its order, with \(q_i\) left of \(j_j\). In a generic quantum ensemble the usual left-source response in (B.3) does not by itself generate that right-ordered correlator. The paper uses a symmetric response step; treat its ordered-response validity as an input, rather than silently commuting the operators.

### Match the moments

Define the initial first moment \(E_{ij}=\int dx\,xS_{ij}(x,0)\), Eq. (2.22). With \(C=M_0\), Eq. (2.23) gives \(AC=CA^{\mathsf T}\), while Eq. (2.21) gives \(M_1(t)=ACt+E\). Integrating the positive- and negative-time branches of Eq. (2.19) yields

\[
\begin{aligned}
M_2(t)-M_2(0)&=A^2Ct^2+(2AE+\mathfrak DC)t,\\
M_2(-t)-M_2(0)&=A^2Ct^2+(C\mathfrak D^{\mathsf T}-2EA^{\mathsf T})t.
\end{aligned}
\]

Half-sum these expressions and compare with Eq. (2.14). The ballistic relation is \(D=A^2C=ACA^{\mathsf T}\). Direct integration gives the subleading relation

\[
\mathfrak L=
\tfrac12(\mathfrak DC+C\mathfrak D^{\mathsf T})
+AE-EA^{\mathsf T}.
\]

**Source caution, not new physics:** printed Eqs. (2.26)–(2.27) place an additional factor \(1/2\) on the \(E\) terms. The direct two-branch integration above gives the displayed coefficient. The discrepancy is *apparent*, not an author-confirmed erratum; a separate source-audit review informed this caution. Do not set \(E=0\) or simplify to \(\mathfrak L=\mathfrak DC\) at this stage.

## 5. Section 2.4, first question: why the local-density choice matters

The charge \(Q_i\) does not uniquely specify its local density. If boundary terms vanish, Eq. (2.28) permits

\[
q_i'=q_i+\partial_xo_i,\qquad
j_i'=j_i-\partial_to_i.
\]

The spatial integral of \(\partial_xo_i\) vanishes, so \(Q_i'=Q_i\). The paired current change preserves continuity because mixed derivatives commute:

\[
\partial_tq_i'+\partial_xj_i'
=\partial_tq_i+\partial_xj_i
+\partial_t\partial_xo_i-\partial_x\partial_to_i=0.
\]

**Why Euler data are safe.** Homogeneous stationary states have \(\langle\partial_xo_i\rangle=\langle\partial_to_i\rangle=0\). They therefore have the same homogeneous charges and currents after the change. Thus \(C\), the equation of state \(F\), \(A=\partial F/\partial\bar q\), and consequently \(D=A^2C\) are unchanged. The last implication uses Eq. (2.27).

**Why the diffusion matrix is sensitive.** In a slowly varying state,

\[
\bar q_i'-\bar q_i=\partial_x\bar o_i=O(\partial_x).
\]

The current also changes by \(-\partial_t\bar o_i\). Using only the Euler equation inside that correction, \(\partial_t\bar q=-A\partial_x\bar q+O(\partial_x^2)\), shows \(\partial_t\bar o_i=O(\partial_x)\). Both changes occur at exactly the gradient order at which \(\mathfrak D\) is defined in Eq. (2.9). Thus the numerical matrix \(\mathfrak D_i{}^j\) can depend on the selected local representative even though the total conserved charges do not.

The paper asserts that the Onsager matrix \(\mathfrak L\), defined from the long-time spreading in Eq. (2.14), remains invariant under this change, using a hydrodynamic-projection assumption; see Appendix C.1. The first moment \(E\) and \(\mathfrak D\) individually transform so that the measurable combination stays fixed. This is why the authors must choose a gauge before assigning a definite diffusion matrix. Here **gauge** means freedom to choose a local representative of the same conserved charge. It is not electromagnetic or Yang–Mills gauge symmetry.

**Connection forward.** PT symmetry will supply a natural representative and simplify the relation between \(\mathfrak L\) and \(\mathfrak D\). We have not worked through that fixing argument yet.

## What to know now

| Reproduce yourself | Recognize, then postpone |
| --- | --- |
| Continuity + two integrations by parts: \(M_2''=2K\). | The full Appendix A integration. |
| Response chain rule: mean-current closure → positive-time Eq. (2.19). | General quantum source construction beyond the paper's ordered-response assumption. |
| Eq. (B.5), translation without operator exchange, and why the negative-time matrices are transposed. | Detailed PT gauge-fixing machinery in Appendix C. |
| Gradient order counting in Eq. (2.28): \(\partial_xo\) and \(-\partial_to\) can affect \(\mathfrak D\). | Exact transformation formulas for every gauge-dependent matrix. |

**One checkpoint for our current stopping point:** If \(Q_i'=Q_i\), why does that protect the Euler current \(F_i\) but fail to protect the coefficient of \(\partial_x\bar q_j\) in the current?
