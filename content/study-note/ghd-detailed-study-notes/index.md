---
title: "Diffusion in GHD — Detailed Study Notes"
authors:
  - admin
date: 2026-09-28
summary: "Detailed Markdown notes on diffusion in generalized hydrodynamics, covering sections 2.1–2.5, Appendix B, and the opening of section 3.1 through state variables and dressing, Eq. (3.9)."
tags:
  - generalized hydrodynamics
  - GHD
  - quantum many-body physics
  - diffusion
  - integrable systems
featured: true
math: true
lastmod: 2026-10-04
---

{{% callout note %}}
This study note was generated with GPT assistance during guided reading, then source-checked and tutor-reviewed. It is a personal learning reference; verify equations, conventions, and interpretations against the original paper before citing or reusing it.
{{% /callout %}}

De Nardis, Bernard and Doyon, *SciPost Phys.* **6**, 049 (2019), arXiv:1812.00767v4.

**Coverage:** the introduction, §§2.1–2.5, Appendix B, and the opening of §3.1 through the state variables and dressing, Eq. (3.9). The rest of §§3–6 is left for our future discussion. This page records what we have worked through; consult the [original paper on arXiv](https://arxiv.org/abs/1812.00767) for the complete source.

**How to use this note:** read the physical explanation first, then reproduce the displayed derivation steps. Equations labelled with the paper's numbers can be located in the source, but the reasoning needed for the material covered here is written out below. New discussions are incorporated into the relevant conceptual section rather than appended as a conversation log. “Paper states” identifies an assertion in the article; “inference” identifies a consequence we draw from it; “outside perspective” identifies an illustrative calculation added for intuition.

**Later review:** the [minimum note](/notes/ghd-sections-1-to-2-3-minimal.pdf) selects the main storyline, important formulas, short derivation reminders, and essential cautions from this detailed account. “Minimum” means selective and useful for recall; it has no fixed page limit. Its current coverage is §§1–2.5.

## Reading map

### The problem that organizes the paper

Given a slowly varying initial state of an interacting integrable system, predict how its conserved-density profiles move and broaden. Euler GHD already describes propagation through state-dependent effective velocities. The missing ingredient is the leading diffusive correction and its microscopic origin.

The central task is to compute the diffusion matrix \(\mathfrak D(\bar q)\) from the integrable model and insert it into
\[
\partial_t\bar q_i+\partial_xF_i(\bar q)
=\frac12\partial_x\!\left[
\mathfrak D_i{}^j(\bar q)\partial_x\bar q_j\right]
 +\text{higher-gradient terms}.
\]
This is the hydrodynamic structure of Eq. (2.10). It is not yet a prediction until the state-dependent coefficients are supplied. The paper develops a formula for \(\mathfrak D\) using thermodynamics and quasiparticle scattering, subject to its hydrodynamic and form-factor assumptions.

A useful physical sketch is a localized perturbation on a uniform background. Euler dynamics determines propagation, schematically a packet centre \(vt\). Diffusion gives additional variance growth of order \(t\), or width of order \(\sqrt t\) around propagation. In a many-charge fluid a perturbation can excite many modes and velocities; this single-packet sketch is an illustration, not an assertion that every density correlation is Gaussian or that its total width grows only as \(\sqrt t\).

### The route from the missing coefficient to the answer

Our explanatory order is:

1. Specify the coefficient we need in the hydrodynamic equation.
2. Relate that coefficient to measurable equilibrium current correlations.
3. Describe the equilibrium state and its excitations in quasiparticle language.
4. Evaluate the correlations and identify the scattering contribution to diffusion.
5. Use the resulting coefficient to predict dissipative hydrodynamics.

| Part of the paper | Question it answers | Output needed by the next part |
| --- | --- | --- |
| §2 | How can a hydrodynamic diffusion coefficient be extracted from microscopic correlations? | The bridge \(\mathfrak L=\mathfrak DC\), with \(\mathfrak L\) a current-correlation integral and \(C\) static susceptibility, in the paper's PT gauge |
| §3 | How do we represent a stationary integrable state and calculate correlations in it? | Quasiparticle thermodynamics and thermodynamic particle–hole form factors; an Euler-scale check |
| §4 | Which microscopic processes generate the diffusive contribution, and what is its value? | Diffusion from two-particle–hole contributions, interpreted through quasiparticle scattering |
| §5 | How does the calculated diffusion enter the evolution of actual profiles? | GHD with diffusion, entropy increase, and applications to profile evolution |
| §6 | What does the result predict for a concrete interacting spin chain? | Gapped XXZ spin diffusion, including half-filling |

The §3–§6 entries are source-grounded previews from the introduction and section structure. Their formulas and assumptions remain to be worked through.

### Section 2 completes the bridge, not the microscopic calculation

Start from the missing matrix \(\mathfrak D\). Section 2 makes it calculable by rewriting the task:
\[
\boxed{
\text{compute }\mathfrak D
\ \longleftarrow\
\mathfrak D=\mathfrak LC^{-1}
\ \longleftarrow\
\text{compute equilibrium current correlations and }C.
}
\]
The inverse is on the independent susceptibility sector, and the displayed identification follows the paper's PT gauge. Our ordered-quantum-correlation qualification remains in the detailed §2.4 discussion.

| Subsection | Why we need it | What it contributes to the bridge |
| --- | --- | --- |
| §2.1 | Conservation fixes continuity but does not determine the current from a density profile | Introduce \(F\) and the missing first-gradient current coefficient \(\mathfrak D\), Eqs. (2.9)–(2.10) |
| §2.2 | We need microscopic quantities that distinguish persistent transport from diffusion | Relate density spreading to current correlations by (2.13); define ballistic \(D\) and residual \(\mathfrak L\), (2.15)–(2.16) |
| §2.3 | A correlation-defined coefficient is not automatically the coefficient in the hydrodynamic equation | Evolve density correlations and match their moments to \(\mathfrak D\), yielding (2.27) |
| §2.4 | Local representatives of the same charge can give different gradient coefficients | Fix a PT-compatible density convention and obtain the simple bridge (2.35) |
| §2.5 | The bridge should immediately explain a special transport constraint | If \(j_0=q_1\), the integrated current is conserved; its Onsager row and the corresponding diffusion row vanish |

The density-correlation moments in §§2.2–2.3 are intermediate tools with a specific purpose: they let conservation translate microscopic current fluctuations into the coefficient of macroscopic spreading. Appendix B supports that translation from hydrodynamic means to correlation evolution. Appendix C treats the ambiguity in local density representatives. These are supporting branches of the bridge.

Section 2 uses general hydrodynamics rather than Bethe Ansatz. At its end we know what equilibrium correlation to compute, how to remove its persistent part, and how to turn the remainder into a diffusion matrix. We have not yet computed the interacting model's diffusion matrix. That is the open task carried into §§3–4.

### Reading strategy after our Section 2 reflection

The user identified a gap in our learning method: being able to reproduce each derivation did not provide a clear overall goal. Subsequent explanations should start with the current physical question and the missing ingredient, place the subsection within the route above, and end by stating what has been obtained and what remains unknown. Technical branches should be introduced by the job they perform for the main argument. When returning from a branch, explicitly reconnect to that argument.

Checkpoints should test the connection to the physical goal as well as local algebra. At major transitions, pause for a synthesis rather than automatically adding another derivation. For the present transition, our position is: the hydrodynamic-to-correlation bridge is established within the paper's stated framework; the next goal is to evaluate its inputs using quasiparticles.

Our last transport checkpoint also needs an explicit correction. For a nonzero constant integrated current correlation \(K_{0j}(s)=k_j\), the answers are
\[
D_{0j}=k_j,\qquad \mathfrak L_{0j}=0.
\]
It is the residual Onsager coefficient that vanishes, not the Drude weight. The user's observation that \(q_1\) dynamics can affect the \(q_0\) profile explains why the zero diffusion row does not freeze that profile.

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

### Where does \(\langle j_i\rangle=F_i(\bar q)\) come from?

The authors introduce \(F_i\) as the zero-gradient term in Eq. (2.9), and explain its meaning in the paragraph immediately after Eq. (2.10): it expresses current means in terms of density means in homogeneous, stationary, maximal-entropy states. This is a definition of the equation-of-state function, supported by the assumption that the chosen conserved densities fully parametrize that family of states. Conservation alone does not establish it.

To construct the function, first parametrize the homogeneous GGE by its thermodynamic sources:

\[
\rho_{\boldsymbol\beta}=Z^{-1}e^{-\sum_k\beta_kQ_k},
\qquad
\bar q_k(\boldsymbol\beta)=\operatorname{Tr}(\rho_{\boldsymbol\beta}q_k),
\qquad
\bar j_i(\boldsymbol\beta)=\operatorname{Tr}(\rho_{\boldsymbol\beta}j_i).
\]

Whenever the full density vector \(\bar q\) is a valid local coordinate for these states, eliminate \(\boldsymbol\beta\) and define

\[
F_i(\bar q):=\bar j_i\big(\boldsymbol\beta(\bar q)\big).
\]

One chosen GGE gives one point on this function: its density vector and its current value. Varying the GGE parameters constructs the local equation-of-state function; varying neighboring states determines its Jacobian \(A_i{}^j\). This also explains the gauge-invariance argument in §2.4: Eq. (2.28) preserves both means for every homogeneous GGE, so it preserves every point of the relation and therefore its derivative.

The equality \(\langle j_i\rangle=F_i(\bar q)\) then says that we evaluate the same state using density coordinates instead of source coordinates. \(F_i\) depends on the full set of densities, not only \(\bar q_i\). Its actual values are model-dependent and must be computed; writing \(F_i\) does not calculate them. Equivalently, all gradient terms in Eq. (2.9) vanish on a uniform density profile, leaving its homogeneous current \(F_i(\bar q)\). Homogeneity by itself does not guarantee this closure for an arbitrary microscopic state: the restricted maximal-entropy state family and completeness of its thermodynamic variables matter.

**Fixed state versus family of states.** For one fixed inhomogeneous state \(\rho\), differentiating \(\langle o(x)\rangle_\rho\) with respect to \(x\) acts on the operator's position. For a family \(\rho_x\) of locally homogeneous states, differentiating \(\langle o(x)\rangle_{\rho_x}\) also changes the state. These are different derivatives. Likewise, a hydrodynamic “time slice” is a profile at fixed \(t\), not an average over time.

**Reproduce:** substitute the current expansion into continuity and keep track of the outer \(\partial_x\). If \(\mathfrak D\) depends on \(\bar q\), that outer derivative generates products of gradients; one must not silently treat it as constant.

## 3. Section 2.2: how correlations measure transport

Work in one homogeneous stationary background. Define the ordered connected density correlator and susceptibility,

\[
S_{ij}(x,t)=\langle q_i(x,t)q_j(0,0)\rangle^{\rm c},\qquad
C_{ij}=\int dx\,S_{ij}(x,t). \tag{2.11–2.12}
\]

Conservation makes \(C\) time independent; it does not freeze the shape of \(S(x,t)\).

### Why the integrated susceptibility is symmetric

The paper states symmetry after Eq. (2.12). For ordered quantum correlations, translation invariance alone should not be mistaken for permission to exchange two local operators. A useful derivation for the homogeneous commuting-charge GGE starts on a periodic ring of finite length \(L\). At equal time, let
\[
Q_i=\int_0^L dx\,q_i(x),\qquad
C^{(L)}_{ij}=\int_0^L dr\,\langle q_i(r)q_j(0)\rangle^{\rm c}.
\]
Translation invariance and periodicity give
\[
\begin{aligned}
\langle Q_iQ_j\rangle^{\rm c}
&=\int_0^L dx\int_0^L dy\,
\langle q_i(x)q_j(y)\rangle^{\rm c}\\
&=L\int_0^L dr\,\langle q_i(r)q_j(0)\rangle^{\rm c}
=L C^{(L)}_{ij}.
\end{aligned}
\]
Thus the susceptibility is the **connected covariance of total charges per unit length**. For mutually commuting charges, \([Q_i,Q_j]=0\), the products \(Q_iQ_j\) and \(Q_jQ_i\) agree, and the connected subtraction is symmetric. Hence \(C^{(L)}_{ij}=C^{(L)}_{ji}\). Taking a homogeneous thermodynamic limit with finite susceptibility gives
\[
\boxed{C=C^{\mathsf T}.}
\]
Clustering alone need not ensure integrability; the limit and finiteness of the spatial integral are part of this conclusion's regularity assumptions. This argument does **not** require local densities to commute, nor does it assert \(S_{ij}(x,0)=S_{ji}(x,0)\) at each separation.

For the same finite-volume GGE, \(\rho_\beta=Z^{-1}e^{-\beta_kQ_k}\), the negative source convention gives an equivalent thermodynamic check:
\[
\bar q_i=-\frac1L\partial_{\beta_i}\log Z,\qquad
C^{(L)}_{ij}=-\partial_{\beta_j}\bar q_i
=\frac1L\partial_{\beta_i}\partial_{\beta_j}\log Z.
\]
The Hessian is symmetric where these derivatives exist. For Hermitian commuting charges its covariance is real and positive semidefinite; inverse metrics below are restricted to an independent positive-definite sector.

### Current correlations and density moments

Define the spatially integrated current correlator

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

Here is the normalization step rather than a slogan. For a commuting initial ensemble, write

\[
\rho_\eta=\frac{\exp(\int dy\,\eta_k(y)q_k(y,0))}{Z[\eta]}.
\]

Differentiating the numerator inserts \(q_j(y,0)\); differentiating \(Z[\eta]^{-1}\) contributes minus \(\langle q_j(y,0)\rangle\). Thus

\[
\frac{\delta\langle o(x,t)\rangle_\eta}{\delta\eta_j(y)}
=\langle o(x,t)q_j(y,0)\rangle_\eta
-\langle o(x,t)\rangle_\eta\langle q_j(y,0)\rangle_\eta.
\]

This is an *initial-ensemble* derivative, not the Hamiltonian Kubo response to a force applied at a later time. It creates the fluctuation of \(q_j\) at time \(0\) and observes what that fluctuation correlates with at time \(t\).

### The functional chain rule, explicitly

Linearize the constitutive relation around a *homogeneous* background:

\[
\frac{\delta\bar j_i(x,t)}{\delta\bar q_k(y,t)}
=A_i{}^k\delta(x-y)
-\frac12\mathfrak D_i{}^k\,\partial_x\delta(x-y).
\]

This is a continuum matrix kernel. Its \(\delta(x-y)\) says that the Euler response is local; the derivative of the delta function carries the gradient correction. A variation of \(\mathfrak D(\bar q)\) multiplies the background gradient and therefore vanishes in this homogeneous linearization. The variation of \(F\) does **not** vanish: it gives \(A\).

The functional derivative is with respect to the *entire profile at fixed \(t\)*. In a discrete analogy, \(y\) is a continuous component label. In particular, \(\delta\bar q_i(x,t)/\delta\bar q_k(y,t)=\delta_i{}^k\delta(x-y)\); it is not an isolated \(\delta(0)\). The derivative-of-delta term is also concrete:

\[
\int dy\,\partial_x\delta(x-y)\,S_{kj}(y,t)
=\partial_x S_{kj}(x,t).
\]

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

The second factor in the first line equals \(S_{kj}(y,t)\) by the assumed source response. The repeated \(k\) is summed. Substitute the resulting current–density correlator into (B.1):

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

Here \(J_{ij}\) is the current–density connected correlator and \(H_{ij}\) is the density–current connected correlator; **\(H_{ij}\) is not the Hamiltonian**. Both depend on \((x,t)\). Continuity at the first insertion gives \(\partial_tS_{ij}=-\partial_xJ_{ij}\). To track the second insertion explicitly, homogeneity and stationarity give
\[
S_{ij}(x,t)=\langle q_i(0,0)q_j(-x,-t)\rangle^{\rm c}.
\]
Differentiating in \(t\), then using continuity on \(q_j\) at \((z,s)=(-x,-t)\), gives
\[
\partial_t S_{ij}
=-\langle q_i(0,0)\partial_s q_j(z,s)\rangle^{\rm c}
=\langle q_i(0,0)\partial_z j_j(z,s)\rangle^{\rm c}
=-\partial_x H_{ij}(x,t).
\]
Consequently \(\partial_x(J_{ij}-H_{ij})=0\): their difference is an integration constant in space, \(f_{ij}(t)\), not necessarily a constant in time.

At **fixed \(t\)**, spatial clustering says that the *unconnected* products factorize:
\[
\langle j_i(x,t)q_j(0,0)\rangle
\longrightarrow\langle j_i\rangle\langle q_j\rangle,\qquad
\langle q_i(x,t)j_j(0,0)\rangle
\longrightarrow\langle q_i\rangle\langle j_j\rangle
\quad (|x|\to\infty).
\]
These two factorized products need not equal each other. Each **connected** correlator subtracts its own product, however, so \(J_{ij}\to0\) and \(H_{ij}\to0\). Evaluating their spatially constant difference at infinity gives \(f_{ij}(t)=0\), hence

\[
\boxed{J_{ij}(x,t)=H_{ij}(x,t).} \tag{B.5}
\]

This proof uses continuity, homogeneity, stationarity, and clustering, not an operator swap or a time-reversal assumption. Mere vanishing of the connected correlators at infinity is enough to remove this constant; no spatial integration is needed. By contrast, an \(x\)-weighted integration by parts contains \([xF(x)]_{-\infty}^{+\infty}\): it requires \(xF(x)\to0\) as well as convergence of the relevant integrals (for example, integrability of \(F\) in \(\int x\partial_xF=-\int F\)). Clustering \(F\to0\) alone supplies neither condition; higher moments require their corresponding stronger boundary and moment assumptions.

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

### Why moments are enough for the transport question

Equation (2.19) governs the whole long-wavelength shape of \(S_{ij}(x,t)\), but the transport coefficients in Eq. (2.14) are defined by one spatial integral weighted by \(x^2\). We can therefore integrate the differential equation against \(1\), \(x\), and \(x^2\) instead of solving its full spatial profile. This is the shortest route from the hydrodynamic coefficients \(A,\mathfrak D\) to the spreading coefficients \(D,\mathfrak L\).

Define a matrix for each moment,

\[
M_n(t)_{ij}:=\int dx\,x^n S_{ij}(x,t).
\]

These are *correlation* moments. They can be complex or sign-changing before an appropriate symmetrization, so “centre” and “width” below are physical analogies rather than a claim that \(S\) is always a probability distribution. Every integration by parts in this subsection assumes sufficiently rapid spatial decay.

#### Zeroth moment: conserved correlation weight

Integrate either branch of Eq. (2.19) over \(x\). Every spatial derivative becomes a boundary term, hence

\[
\frac{dM_0}{dt}=0,\qquad M_0(t)=C. \tag{2.12}
\]

The static susceptibility \(C\) supplies the weight that the hydrodynamic motion transports. A sharp packet and a broad packet can have the same \(C\).

#### First moment: propagation

For \(t>0\), multiply Eq. (2.19) by \(x\) and integrate. The two required integrals are

\[
\int dx\,x\,\partial_xS=-\int dx\,S=-C,
\qquad
\int dx\,x\,\partial_x^2S=0.
\]

The second equality shows explicitly why the diffusive term does not directly shift the first moment. Consequently

\[
\frac{dM_1}{dt}=AC,\qquad
\boxed{M_1(t)=AC\,t+E},\qquad
E_{ij}:=M_1(0)_{ij}=\int dx\,xS_{ij}(x,0). \tag{2.21–2.22}
\]

\(E\) is an *initial* displacement of the chosen density-correlation representative. Nothing in §2.3 lets us set it to zero.

For \(t<0\), the matrices in Eq. (2.19) act on the right. The same integration gives \(dM_1/dt=CA^{\mathsf T}\). The paper states the identity

\[
\boxed{AC=CA^{\mathsf T}.} \tag{2.23}
\]

This ensures the positive- and negative-time calculations describe the same slope \(M_1'(t)\). Here is a microscopic/thermodynamic derivation for the homogeneous commuting-charge GGE, using the exact identity (B.5), rather than inferring symmetry by commuting local operators.

**Uniform source response and the chain rule.** Recall that \(A_i{}^k=\partial F_i/\partial\bar q_k\) is the flux Jacobian, while \(C_{kj}\) is the density susceptibility. Introduce a separate **current–density susceptibility**
\[
\mathcal B_{ij}:=\int dx\,\langle j_i(x,0)q_j(0,0)\rangle^{\rm c}
=\langle j_i(0,0)Q_j\rangle^{\rm c}.
\]
The second equality uses translation invariance, with no operator exchange. Here \(\mathcal B\) is not the normalized matrix \(B=C^{-1/2}AC^{1/2}\) used below (nor the improvement Jacobian denoted \(B_i{}^j\) later in §2.4). Integrated expressions are understood through finite-volume charge insertions and a homogeneous thermodynamic limit with finite mixed susceptibility.

In \(\rho_\beta=Z^{-1}e^{-\beta_kQ_k}\), mutual commutativity of the total charges implies
\[
\partial_{\beta_j}\rho_\beta
=-\rho_\beta\big(Q_j-\langle Q_j\rangle\big).
\]
Trace cyclicity then gives the uniform response of a source-independent observable \(o\):
\[
-\partial_{\beta_j}\langle o\rangle
=\langle oQ_j\rangle^{\rm c}.
\]
It does not require \([Q_j,o]=0\). Applying it to densities and currents yields
\[
-\partial_{\beta_j}\bar q_k=C_{kj},\qquad
-\partial_{\beta_j}\bar j_i=\mathcal B_{ij}.
\]
Since \(\bar j_i=F_i(\bar q)\) throughout the homogeneous GGE family, the ordinary thermodynamic chain rule gives
\[
\mathcal B_{ij}
=-\frac{\partial F_i}{\partial\bar q_k}\partial_{\beta_j}\bar q_k
=A_i{}^k C_{kj},\qquad \boxed{\mathcal B=AC}.
\]
This is a derivative relation among **means in nearby states**, not the microscopic operator identity \(j_i=A_i{}^kq_k\).

**Why the mixed susceptibility is symmetric.** Integrating (B.5) at equal time, then retaining the order of the total-charge insertion, gives
\[
\begin{aligned}
\mathcal B_{ij}
&=\int dx\,J_{ij}(x,0)
=\int dx\,H_{ij}(x,0)\\
&=\langle Q_i j_j(0,0)\rangle^{\rm c}
=\langle j_j(0,0)Q_i\rangle^{\rm c}
=\mathcal B_{ji}.
\end{aligned}
\]
Only the step with the **total charge** uses equilibrium trace cyclicity. In a finite-volume regulator, \([Q_i,\rho_\beta]=0\) implies
\[
\operatorname{Tr}(\rho_\beta Q_i j_j)
=\operatorname{Tr}(j_j\rho_\beta Q_i)
=\operatorname{Tr}(j_j Q_i\rho_\beta)
=\operatorname{Tr}(\rho_\beta j_jQ_i).
\]
The connected subtraction is unchanged. No assumption \([Q_i,j_j]=0\), local operator swap, or time-reversal symmetry was needed. The equality of the two spatial integrals comes from (B.5) in the clustering thermodynamic state; finite-volume traces regulate the total-charge insertions before that limit.

Combining \(\mathcal B=AC\), \(\mathcal B=\mathcal B^{\mathsf T}\), and \(C=C^{\mathsf T}\) gives
\[
AC=(AC)^{\mathsf T}=C^{\mathsf T}A^{\mathsf T}=CA^{\mathsf T},
\]
which is Eq. (2.23). These steps reconstruct the identity stated by the paper; the intervening symbol \(\mathcal B\) is our explanatory notation, not a new numbered equation from the source.

**Uniform charges versus quantum local sources.** This exact uniform GGE derivative involves a commuting total charge \(Q_j\). A spatially varying source coupled to quantum local densities generally differentiates a noncommuting exponential and produces a Kubo–Mori imaginary-time averaged insertion, not automatically the ordinary ordered local correlator. Thus this derivation does not remove the separate qualification of Appendix B's local ordered-response assumption (B.3). For a uniform commuting-charge variation, the insertion commutes with the GGE exponent and the Kubo–Mori integral reduces to the covariance above.

**Which metric makes \(A\) self-adjoint?** Eq. (2.23) does **not** say \(A=A^{\mathsf T}\). For density perturbation vectors \(u,v\) on a positive-definite susceptibility sector, the natural inverse-covariance inner product is
\[
(u,v)_{C^{-1}}=u^{\mathsf T}C^{-1}v,\qquad
C^{-1}A=A^{\mathsf T}C^{-1}.
\]
Therefore \((u,Av)_{C^{-1}}=(Au,v)_{C^{-1}}\): \(A\) is self-adjoint in the **\(C^{-1}\) metric for density perturbations**, not generally in the \(C\) metric in those same coordinates. If \(C\) has null directions, first restrict to the independent positive-definite sector.

Set \(B=C^{-1/2}AC^{1/2}\). Equation (2.23) implies \(A^{\mathsf T}=C^{-1}AC\), so \(B^{\mathsf T}=C^{1/2}A^{\mathsf T}C^{-1/2}=C^{-1/2}AC^{1/2}=B\). This is ordinary symmetry in the fluctuation-normalized coordinates \(C^{-1/2}\delta\bar q\). **Inference:** for a finite-dimensional independent sector, the linearized Euler modes can therefore be chosen with real velocities even when \(A\) looks nonsymmetric in the original density coordinates; infinitely many charges additionally require the appropriate operator-domain and spectral assumptions. Physically, \(AC\) combines velocity response with equilibrium fluctuation weights.

#### Second moment: see exactly where \(t^2\) and \(t\) arise

For \(t>0\), the two integrations by parts needed are

\[
\int dx\,x^2\partial_xS=-2M_1(t),\qquad
\int dx\,x^2\partial_x^2S=2C.
\]

Multiplying Eq. (2.19) by \(x^2\) therefore gives

\[
\frac{dM_2}{dt}=2AM_1(t)+\mathfrak DC. \tag{from 2.24}
\]

The factor \(2\) in the first term comes from differentiating \(x^2\). In the second term it cancels the \(1/2\) in the paper's constitutive convention. Substitute \(M_1(t)=ACt+E\) *before* integrating:

\[
\begin{aligned}
M_2(t)-M_2(0)
&=\int_0^t ds\,\big[2A(ACs+E)+\mathfrak DC\big]\\
&=\boxed{A^2Ct^2+(2AE+\mathfrak DC)t}.
\end{aligned}
\]

This equation exposes the mechanism. Propagation \(A\) acts on a first moment already growing as \(t\), producing \(t^2\). Diffusion acts on the constant zeroth moment \(C\), producing \(t\). The initial offset \(E\), transported by \(A\), also produces a term proportional to \(t\); it must not be mistaken for intrinsic diffusion.

For the \(t<0\) branch, the same spatial integrals yield

\[
\frac{dM_2}{dt}=2M_1(t)A^{\mathsf T}-C\mathfrak D^{\mathsf T}.
\]

Now set \(t=-\tau\), where \(\tau>0\), and integrate from \(0\) to \(-\tau\). The reversed time interval changes the signs of the terms linear in \(\tau\):

\[
\begin{aligned}
M_2(-\tau)-M_2(0)
&=\int_0^{-\tau}ds\,
\big[2(ACs+E)A^{\mathsf T}-C\mathfrak D^{\mathsf T}\big]\\
&=AC A^{\mathsf T}\tau^2
+(C\mathfrak D^{\mathsf T}-2EA^{\mathsf T})\tau\\
&=\boxed{A^2C\tau^2
+(C\mathfrak D^{\mathsf T}-2EA^{\mathsf T})\tau}.
\end{aligned}
\]

The last line uses \(AC=CA^{\mathsf T}\), which implies \(ACA^{\mathsf T}=A^2C\). No matrices were silently commuted.

**Why this is not unstable backward diffusion.** The negative-\(t\) equation is a relation for a stationary correlator with its two insertions ordered oppositely in time. It is not an instruction to reconstruct a lost microscopic state by running a dissipative initial-value problem backward. With \(\tau=-t>0\), the diffusion term in the evolution of \(S(x,-\tau)\) has the usual forward sign. The right-acting transpose keeps track of which insertion is later.

#### Match the two measurements of spreading

Section 2.2 defines \(D\) and \(\mathfrak L\) through the time-symmetrized second moment [Eq. (2.14)]:

\[
\frac{M_2(\tau)+M_2(-\tau)}{2}-M_2(0)
=D\tau^2+\mathfrak L\tau+o(\tau),\qquad \tau\to+\infty.
\]

Average the two expressions just derived. Matching the \(\tau^2\) coefficient gives

\[
\boxed{D=A^2C=ACA^{\mathsf T}.}
\]

**Physical meaning:** Euler-scale propagation and the equilibrium fluctuation weight determine the ballistic Drude term. Matching the \(\tau\) coefficient gives, by direct algebra,

\[
\boxed{\mathfrak L=
\tfrac12(\mathfrak DC+C\mathfrak D^{\mathsf T})
+AE-EA^{\mathsf T}.}
\]

**Physical meaning:** \(\mathfrak D\) broadens the fluctuations weighted by \(C\), but the chosen density representative may also carry the initial first moment \(E\). Thus one cannot yet identify \(\mathfrak L\) with \(\mathfrak D\) alone.

**Source caution, not new physics:** printed Eqs. (2.26)–(2.27) place an additional factor \(1/2\) on the \(E\) terms. The direct two-branch integration above gives the displayed coefficient. The discrepancy is *apparent*, not an author-confirmed erratum; the review records the audit. It does not affect the later PT-gauge relation when \(E=0\). At our current stopping point, do not assume that gauge choice has already been made.

**Outside perspective (one scalar mode).** If the background produces advection at speed \(v\) and ordinary diffusion coefficient \(\nu=\mathfrak D/2\), a normalized Gaussian solution has \(M_0=C\), \(M_1=Cvt\), and \(M_2=C(v^2t^2+2\nu t)\) when its initial first and second moments vanish. This elementary cartoon reproduces \(D=v^2C\) and the \(C\mathfrak D\,t\) term. In the interacting multi-charge problem the matrices, gauge choice, and correlation ordering require the fuller derivation above.

## 5. Section 2.4, first question: why the local-density choice matters

### The physical problem before the word “gauge”

The previous section related the measurable spreading coefficients \(D,\mathfrak L\) to the hydrodynamic coefficients \(A,\mathfrak D\), but the relation still contained the first moment \(E\). Before computing \(\mathfrak D\) microscopically, the authors must specify which local density defines the hydrodynamic field. The total charge \(Q_i\) alone does not do that.

**Outside perspective (discrete cartoon).** On a lattice, replacing \(q_i(n)\) by \(q_i(n)+o_i(n+1)-o_i(n)\) moves a little charge weight from one cell to its neighbor. Summing over \(n\) telescopes, so the total is unchanged. The continuum version is a spatial derivative. This is a change in how we assign local weight, not a change of the physical state.

If boundary terms vanish, Eq. (2.28) permits

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

### Why the homogeneous equation of state and its Jacobian are unchanged

The gauge transformation changes the operators used to represent the density and current. It preserves \(Q_i\), so it also preserves the entire family of homogeneous GGEs \(Z^{-1}\exp(-\sum_i\beta_iQ_i)\). We compare old and new operators in the *same* state, at every choice of the thermodynamic parameters.

Homogeneity and stationarity mean that, for any local observable \(o_i\), its one-point function in that fixed state is independent of \(x\) and \(t\). They do not mean the operator itself has zero derivatives. Taking expectations of Eq. (2.28) gives

\[
\langle q'_i\rangle=\langle q_i\rangle+\partial_x\langle o_i\rangle
=\langle q_i\rangle,\qquad
\langle j'_i\rangle=\langle j_i\rangle-\partial_t\langle o_i\rangle
=\langle j_i\rangle.
\]

The equation of state is defined by the homogeneous maximal-entropy state family, as explained in the §2.1 discussion above: \(F_i(\bar q)=\langle j_i\rangle\). Since both means are unchanged throughout that family, \(F'_i(\bar q)=F_i(\bar q)\) as functions, not merely at one background point. Thus Eq. (2.20) gives \(A'_i{}^j=\partial F'_i/\partial\bar q_j=\partial F_i/\partial\bar q_j=A_i{}^j\). This thermodynamic derivative compares different homogeneous states. It is not the spatial derivative \(\partial_xF_i\) within one homogeneous state: spatial uniformity does not imply \(A=0\).

Agreement of the current in one GGE would establish only one common value of \(F_i\), not equality of its derivative. Nearby GGEs, parametrized by their density vectors, are needed to compare the slopes. The gauge argument works because it gives agreement throughout the homogeneous GGE family.

### Why the integrated susceptibility is unchanged

The physical interpretation gives a short route. Put the homogeneous state on a periodic ring of length \(\ell\). Translation invariance gives

\[
\langle Q_iQ_j\rangle^{\rm c}
=\int_0^\ell dx\int_0^\ell dy\,
\langle q_i(x)q_j(y)\rangle^{\rm c}
=\ell\int_0^\ell dr\,S_{ij}(r,0).
\]

Thus the finite-volume integrated susceptibility is the total-charge covariance per unit length. Under the clustering assumptions, its thermodynamic limit is \(C_{ij}\) in Eq. (2.12). Since Eq. (2.28) leaves the total charge operators and the state unchanged, it leaves this covariance unchanged. The local allocation of charge can change the spatial shape of its correlations while preserving their integrated weight. This interpretation follows directly from the charge definition and translation invariance.

One-point invariance alone does not prove invariance of a two-point function. Use Eq. (2.12) and transform both insertions. At equal time define

\[
R_{ij}(x)=\langle o_i(x)q_j(0)\rangle^{\rm c},\quad
U_{ij}(x)=\langle q_i(x)o_j(0)\rangle^{\rm c},\quad
V_{ij}(x)=\langle o_i(x)o_j(0)\rangle^{\rm c}.
\]

Translation invariance makes a derivative at the second insertion equal to minus a derivative of the separation \(x\). Expanding without exchanging operators therefore gives

\[
S'_{ij}(x,0)=S_{ij}(x,0)+\partial_xR_{ij}(x)
-\partial_xU_{ij}(x)-\partial_x^2V_{ij}(x).
\]

Integrating over all space,

\[
C'_{ij}-C_{ij}
=\big[R_{ij}(x)-U_{ij}(x)-\partial_xV_{ij}(x)\big]_{-\infty}^{+\infty}
=0,
\]

where the final step uses decay of connected correlations and their relevant derivatives. The local correlator \(S'(x,0)\) can change while its integrated weight \(C\) stays the same. Finally the ballistic relation in Eq. (2.27) gives \(D'=(A')^2C'=A^2C=D\). This concerns the Drude matrix \(D\), not the gradient coefficient \(\mathfrak D\).

### Why preserving \(C\) does not preserve the first moment \(E\)

The equality \(C'=C\) constrains only the integral of the correlation profile, not its value at each separation. The first moment in Eq. (2.22), \(E_{ij}=\int dx\,xS_{ij}(x,0)\), weights the profile by position. For example, the term \(\partial_xR_{ij}\) in the transformation of \(S\) contributes zero to \(C\), but contributes

\[
\int dx\,x\,\partial_xR_{ij}(x)
=\big[xR_{ij}(x)\big]_{-\infty}^{+\infty}
-\int dx\,R_{ij}(x)
=-\int dx\,R_{ij}(x)
\]

to \(E\), assuming the stronger boundary decay required for the first moment. Using the full transformation of \(S\) above gives

\[
E'_{ij}-E_{ij}=-\int dx\,R_{ij}(x)+\int dx\,U_{ij}(x).
\]

The double-derivative term from \(V_{ij}\) contributes zero after two integrations by parts. The remaining integrals need not vanish; they may vanish or cancel for particular improvements, so \(E\) can change rather than necessarily changing. Thus a local redistribution can leave the total correlation weight fixed while changing its first moment. These formulas are consequences of Eqs. (2.22), (2.28), translation invariance, and the stated boundary conditions. They explain why the \(E\) terms in the general transport relation must be tracked before a density representative is fixed.

**Why the diffusion matrix is sensitive.** In a slowly varying state,

\[
\bar q_i'-\bar q_i=\partial_x\bar o_i=O(\partial_x).
\]

The current also changes by \(-\partial_t\bar o_i\). Using only the Euler equation inside that correction, \(\partial_t\bar q=-A\partial_x\bar q+O(\partial_x^2)\), shows \(\partial_t\bar o_i=O(\partial_x)\). Both changes occur at exactly the gradient order at which \(\mathfrak D\) is defined in Eq. (2.9). Thus the numerical matrix \(\mathfrak D_i{}^j\) can depend on the selected local representative even though the total conserved charges do not.

Here is the order counting with indices. At Euler order write \(\bar o_i=O_i(\bar q)\) and \(B_i{}^j=\partial O_i/\partial\bar q_j\).

The time derivative is evaluated by the chain rule and the Euler equation:

\[
-\partial_tO_i(\bar q)
=-\frac{\partial O_i}{\partial\bar q_j}\partial_t\bar q_j
=\frac{\partial O_i}{\partial\bar q_j}A_j{}^k\partial_x\bar q_k
+O(\partial_x^2).
\]

It is therefore first-gradient order even though it was originally written as a time derivative. The diffusive correction in the equation for \(\partial_t\bar q_j\) is second-gradient order; using it here would change the mean current only at \(O(\partial_x^2)\), beyond the coefficient defined by Eq. (2.9). Thus

\[
\bar q'_i=\bar q_i+B_i{}^j\partial_x\bar q_j+O(\partial_x^2),
\qquad
-\partial_t\bar o_i
=B_i{}^jA_j{}^k\partial_x\bar q_k+O(\partial_x^2).
\]

The first expression changes the variable used to parametrize the current; the second directly changes the current. Reexpressing \(F_i(\bar q)\) in terms of \(\bar q'\) adds a term involving \(A_i{}^jB_j{}^k\partial_x\bar q'_k\). These effects both live at first-gradient order and need not cancel when the charge indices mix. This is the concrete reason a coefficient of \(\partial_x\bar q\) can change while \(Q_i\), \(F_i\), and \(A_i{}^j\) do not. The exact transformation law is deferred; the source-audit review records its convention subtlety.

### Why the Onsager matrix can remain invariant while \(\mathfrak D\) changes

The paper asserts that the Onsager matrix \(\mathfrak L\), defined from the long-time spreading in Eq. (2.14), remains invariant under this change, using a hydrodynamic-projection assumption; see Appendix C.1. The route is through the exact sum rule (2.13). Define its double time integral, for \(t>0\),

\[
I_{ij}(t)=\int_0^t ds\int_0^t ds'\int dx\,
\langle j_i(x,s)j_j(0,s')\rangle^{\rm c}.
\]

Replacing \(j_i\) by \(j_i-\partial_s o_i\) and \(j_j\) by \(j_j-\partial_{s'}o_j\) adds total time derivatives to this integrand. Integration produces endpoint correlators evaluated at time \(0\) or \(t\), rather than the original bulk double integral. Appendix C.1 invokes hydrodynamic projection to conclude that the combined correction is \(O(t^0)\). A boundary contribution is not automatically bounded: this long-time estimate is the substantive input in the argument.

By the sum rule, the coefficients of \(t^2\) and \(t\) in \(I(t)\) are \(D\) and \(\mathfrak L\). A correction of order \(t^0\) changes neither, hence \(D'=D\) and \(\mathfrak L'=\mathfrak L\), under the stated assumption. Equality of total charges alone would not establish this estimate.

As a counterfactual check, a correction \(bt+O(1)\) would shift \(\mathfrak L\) by \(b\) while leaving \(D\) unchanged. This is why the boundedness estimate, rather than merely the appearance of time-boundary terms, matters.

The first moment \(E\) and \(\mathfrak D\) individually transform so that the combination describing this spreading stays fixed. This is why the authors must choose a gauge before assigning a definite diffusion matrix. Here **gauge** means freedom to choose a local representative of the same conserved charge. It is not electromagnetic or Yang–Mills gauge symmetry.

### Why PT enters next

The unresolved problem is to choose one local density from all the representatives of the same \(Q_i\). The paper uses a strong PT assumption: its antiunitary involution preserves the Hamiltonian, momentum, and every \(Q_i\), and sends local observables to local observables. Space and time both reverse. Hence the PT transform of \(q_i(x,t)\) is another local density of the same conserved charge. The paper asserts that these two local representatives can differ by a total spatial derivative:

\[
T q_i(x,t)T^{-1}
=q_i(-x,-t)+\partial_x a_i(-x,-t). \tag{2.29}
\]

The total-derivative term is the same kind of local rearrangement as Eq. (2.28), not a new transport effect. Its existence uses locality beyond the statement that the spatial integrals agree.

### Existence of a PT-adapted density: average the two representatives

Here is an equivalent short construction of the existence result; the notation in this paragraph is introduced for the explanation. Define the PT partner at the same spacetime point by

\[
\widetilde q_i(x,t):=Tq_i(-x,-t)T^{-1}.
\]

It is local by the strong PT assumption, and its spatial integral is \(TQ_iT^{-1}=Q_i\). Equation (2.29) implies that it differs from \(q_i\) by a total spatial derivative, which we write as \(\widetilde q_i-q_i=\partial_xb_i\) with a local \(b_i\). Define

\[
q_i^{\rm PT}:=\frac12(q_i+\widetilde q_i)
=q_i+\partial_x\left(\frac{b_i}{2}\right).
\]

This is an allowed change of representative under Eq. (2.28), so it preserves \(Q_i\). Applying the combined reflection and conjugation twice returns the original density, because \(T\) is an involution. It therefore exchanges \(q_i\) and \(\widetilde q_i\), leaving their average invariant:

\[
Tq_i^{\rm PT}(x,t)T^{-1}=q_i^{\rm PT}(-x,-t).
\]

This is the density transformation law in Eq. (2.30). Antiunitarity does not obstruct the averaging because its coefficient \(1/2\) is real. The physical input is the strong PT symmetry; the averaging is a choice of representative. Appendix C.2 gives the construction using \(a_i\), with \(o_i=-a_i/2\), Eq. (C.6), and treats the proper-gauge reality and uniqueness conditions. Those details are deferred here. The average preserves \(Q_i\) precisely because it differs from \(q_i\) by an allowed total derivative; equivalently, both densities have spatial integral \(Q_i\).

### Why the current can obey the same PT transformation law

After the density improvement, take its accompanying current from Eq. (2.28), so continuity is preserved. In this paragraph \(q_i\) denotes that PT-adapted density and \(j_i\) its accompanying current. Define \(\widetilde j_i(x,t)=Tj_i(-x,-t)T^{-1}\). Applying PT and reflecting coordinates in continuity gives

\[
\partial_tq_i(x,t)+\partial_x\widetilde j_i(x,t)=0.
\]

Both derivatives acquire a minus sign from coordinate reflection, so the transformed equation differs only by an overall sign. In particular, no additional minus sign on the current is needed under combined PT. Compare this equation with the original continuity equation to obtain

\[
\partial_x(\widetilde j_i-j_i)=0.
\]

Thus both currents give the same local rate of change of the chosen density. A useful explicit construction is to average them:

\[
j_i^{\rm PT}:=\frac12(j_i+\widetilde j_i).
\]

Its divergence equals that of \(j_i\), so it satisfies the same continuity equation. The involution exchanges the two summands, yielding \(Tj_i^{\rm PT}(x,t)T^{-1}=j_i^{\rm PT}(-x,-t)\), Eq. (2.31). Under the locality property used in Appendix C.2, a local observable with zero spatial derivative is proportional to the identity. Consequently this adjustment of the current amounts to an irrelevant constant shift. Such a shift does not change connected current correlations. This fixes the current's PT transformation without another change of the density.

The physical content is that charge conservation is compatible with the combined spacetime reflection. The remaining constant choice is bookkeeping. Our checkpoint established the reason: a spatially constant addition has zero divergence, so it cannot change the local density evolution.

### The GGE must also respect PT

A symmetry of the equations does not automatically imply that every state respects it. Here the strong hypothesis preserves every charge entering the GGE. For real thermodynamic sources,

\[
\rho_\beta=Z^{-1}\exp\left(-\sum_i\beta_iQ_i\right),
\qquad TQ_iT^{-1}=Q_i
\quad\Longrightarrow\quad
T\rho_\beta T^{-1}=\rho_\beta.
\]

This uses the GGE of Eq. (2.3), with the usual finite-volume definition before taking a thermodynamic limit. Antiunitarity conjugates scalar coefficients; the real \(\beta_i\) are unchanged. We now have both a PT-invariant state and PT-adapted local densities.

### Antiunitarity: why reflection also conjugates the correlation

We use the Heisenberg picture in Eq. (2.11). The stationary GGE density matrix \(\rho\) is fixed, and
\[
q_i(x,t)=e^{iHt/\hbar}q_i(x,0)e^{-iHt/\hbar},\qquad
S_{ij}(x,t)=\operatorname{Tr}[\rho q_i(x,t)q_j(0,0)]^{\rm c}.
\]
Stationarity means \([\rho,H]=0\); it does not mean every local operator is time independent. The time label in the correlation is operator evolution. A Schrödinger-picture calculation gives the same correlation when the evolution factors and operator insertions are retained. It is not generally equivalent to an equal-time product in the state evolved to \(t\).

Changing quantum-mechanical picture and applying a symmetry are different operations. Heisenberg versus Schrödinger determines where time evolution is written. PT maps states and observables to symmetry partners, in either picture.

Why is the symmetry action on an observable \(O'=TOT^{-1}\)? If \(|\psi'\rangle=T|\psi\rangle\), then
\[
O'|\psi'\rangle=TO|\psi\rangle.
\]
This requires \(O'T=TO\), hence the conjugation formula. For a Hermitian observable, an eigenvalue \(a\) is real, and \(O|\psi\rangle=a|\psi\rangle\) implies \(O'T|\psi\rangle=aT|\psi\rangle\). The transformed observable measures the same real outcome in the transformed state.

One can transform the state as well:
\[
\rho'=T\rho T^{-1},\qquad O'=TOT^{-1}.
\]
For antiunitary \(T\), the general relation is
\[
\operatorname{Tr}(\rho'O')=[\operatorname{Tr}(\rho O)]^*.
\]
For a Hermitian \(O\), the expectation is real, so corresponding measurement outcomes agree. For an ordered product \(O=AB\), the expectation can be complex and the conjugation matters. In our GGE, \(\rho'=\rho\); transforming the state returns the same state. Therefore the general relation becomes \(\langle TOT^{-1}\rangle_\rho=\langle O\rangle_\rho^*\). The state transformation was used through its invariance, rather than omitted.

An antiunitary operator is conjugate-linear:

\[
T(c|\psi\rangle)=c^*T|\psi\rangle,\qquad
\langle T\psi|T\phi\rangle=\langle\phi|\psi\rangle.
\]

In particular, \(TiT^{-1}=-i\). In a chosen orthonormal basis one can write \(T=UK\), where \(K\) conjugates vector components and \(U\) is unitary. Thus
\(TOT^{-1}=UO^*U^\dagger\), where the star here means entrywise complex conjugation of a matrix, not its adjoint.

For a PT-invariant density matrix, \(U\rho^*U^\dagger=\rho\). Consequently

\[
\begin{aligned}
\langle TOT^{-1}\rangle
&=\operatorname{Tr}(\rho UO^*U^\dagger)\\
&=\operatorname{Tr}(U^\dagger\rho UO^*)\\
&=\operatorname{Tr}(\rho^*O^*)\\
&=[\operatorname{Tr}(\rho O)]^*
=\langle O\rangle^*.
\end{aligned}
\]

This is a finite-volume derivation of the expectation identity. The first complex conjugation is a matrix operation; the final one conjugates a complex number. A unitary symmetry would give equality without this final conjugation.

Conjugation by \(T\) preserves product order:

\[
T(AB)T^{-1}=(TAT^{-1})(TBT^{-1}).
\]

It does not give the reversed product. Set
\(A=q_i(x,t)\), \(B=q_j(0,0)\) and use the PT gauge (2.30). Then

\[
\begin{aligned}
\langle q_i(x,t)q_j(0,0)\rangle^*
&=\langle T[q_i(x,t)q_j(0,0)]T^{-1}\rangle\\
&=\langle q_i(-x,-t)q_j(0,0)\rangle.
\end{aligned}
\]

The subtracted one-point product transforms in exactly the same way. Applying the identity to the connected correlator defined in Eq. (2.11) therefore gives

\[
\boxed{S_{ij}(x,t)^*=S_{ij}(-x,-t).}
\]

Neither \(i,j\) nor the two insertions were exchanged. Coordinate reflection came from the transformation of the densities; complex conjugation came from the antiunitary transformation of the expectation value.

Why can this correlation be complex if both densities are Hermitian? A product of Hermitian operators need not be Hermitian:
\((AB)^\dagger=BA\). With real one-point means,

\[
\langle AB\rangle^{\rm c}
=\frac12\langle\{A,B\}\rangle^{\rm c}
 +\frac12\langle[A,B]\rangle.
\]

Here the connected anticommutator means subtraction of \(2\langle A\rangle\langle B\rangle\). The first term is real; the second is purely imaginary. Therefore
\(\operatorname{Im}\langle AB\rangle^{\rm c}
=\langle[A,B]\rangle/(2i)\). Noncommutativity permits, but does not require, an imaginary part. At unequal times it is especially important not to assume the two densities commute.

As a simple algebraic illustration, take \(A=\sigma_x\), \(B=\sigma_y\), and a spin-up state along \(z\). Both one-point means vanish, but \(AB=i\sigma_z\), hence \(\langle AB\rangle^{\rm c}=i\). This example only illustrates the product issue; it is not a model of the paper's PT-adapted densities.

Writing \(S=R+iI\) with real \(R,I\), the PT relation means

\[
R_{ij}(-x,-t)=R_{ij}(x,t),\qquad
I_{ij}(-x,-t)=-I_{ij}(x,t).
\]

At equal time, the real part is even in \(x\), while the imaginary part is odd. Its first moment can therefore be imaginary:

\[
E_{ij}^*
=\int dx\,xS_{ij}(-x,0)
=-E_{ij}.
\]

To conclude \(E_{ij}=0\) from this identity, one also needs \(E_{ij}\) real. Commuting observables or a real symmetrized correlation can supply reality; locality and possible contact terms must be considered when using equal-time microscopic densities. The displayed antiunitary identity alone does not settle those additional properties.

Correction to our earlier explanation: changing variables always gives
\(E_{ij}=-\int dx\,xS_{ij}(-x,0)\).
PT identifies the integrand's correlation with \(S_{ij}(x,0)^*\), yielding \(E_{ij}=-E_{ij}^*\), not directly \(E_{ij}=-E_{ij}\). The earlier last equality assumed reality without establishing it. The results quoted next are the paper's assertions, with their elementary reflection proof conditional on real relevant moments. We have not established those reality conditions for every ordered quantum correlator.

There is an essential quantum qualification. For an antiunitary symmetry in an invariant state,
\(\langle T O T^{-1}\rangle=\langle O\rangle^*\). Transformation preserves the order of a product. Consequently the ordered correlator of Eq. (2.11) satisfies

\[
S_{ij}(x,t)^*=S_{ij}(-x,-t).
\]

It is not justified to erase the complex conjugation for an arbitrary ordered quantum correlator. The reflection argument below applies directly to real classical correlations, and to real hydrodynamic moments. A Hermitian symmetrized quantum correlation supplies one real convention, but the paper does not redefine Eq. (2.11) as that convention. The paper asserts Eqs. (2.32)–(2.34); the elementary proof requires reality of the relevant moments in addition to the displayed antiunitary transformation. For a general unsymmetrized quantum correlator, PT alone gives \(E^*=-E\), which permits an imaginary \(E\). This qualification is retained rather than silently treating an antiunitary operation as unitary.

### The first moment vanishes and the second moment is even in time

The paper asserts Eq. (2.33). The following elementary reflection proof is conditional on the relevant first moment being real; that condition must not be inferred from antiunitarity alone. Recall Eq. (2.22):

\[
E_{ij}=\int dx\,xS_{ij}(x,0).
\]

Changing variable \(x=-y\) and using the actual antiunitary reflection identity gives

\[
E_{ij}=-\int dy\,yS_{ij}(-y,0)
       =-\int dy\,yS_{ij}(y,0)^*=-E_{ij}^*.
\]

If additionally \(E_{ij}=E_{ij}^*\), this becomes \(E_{ij}=-E_{ij}\), hence \(E_{ij}=0\), Eq. (2.33). This is a signed spatial moment of a cross correlation, not a claim that every \(S_{ij}\) is a probability density. The result removes the first-moment contribution that depended on our local representative.

Define the change in the second moment by

\[
N_{ij}(t):=\int dx\,x^2[S_{ij}(x,t)-S_{ij}(x,0)].
\]

Because \(x^2\) is unchanged by reflection, the same PT argument gives \(N(t)=N(-t)\). Thus

\[
\frac12[N(t)+N(-t)]=N(t), \tag{2.32}
\]

which explains why the time-symmetrized spreading in the exact sum rule (2.13) becomes the positive-time spreading alone. With complex ordered quantum moments, the symmetry relation is instead \(N(t)^*=N(-t)\); the equality just used requires their reality.

### Matching the two time branches fixes the matrix order

The integrations of Eqs. (2.24)–(2.25), derived in our §2.3 discussion, give for \(t>0\), at the retained hydrodynamic orders,

\[
\begin{aligned}
N(t)&=A^2Ct^2+(2AE+\mathfrak DC)t,\\
N(-t)&=A^2Ct^2+(C\mathfrak D^{\mathsf T}-2EA^{\mathsf T})t.
\end{aligned}
\]

The transpose in the second line comes from evolution acting on the second charge index; operator order was preserved throughout that derivation. Set \(E=0\), then equate the two branches. Their common ballistic term cancels, leaving

\[
\boxed{\mathfrak DC=C\mathfrak D^{\mathsf T}},\qquad
\mathfrak D_i{}^kC_{kj}=C_{ik}\mathfrak D_j{}^k. \tag{2.34}
\]

This says that \(\mathfrak DC\) is symmetric when \(C=C^{\mathsf T}\); it need not make \(\mathfrak D\) symmetric in the original density coordinates. For example, if
\(C=\operatorname{diag}(c_1,c_2)\), its off-diagonal condition is
\(\mathfrak D_1{}^2c_2=c_1\mathfrak D_2{}^1\). Unequal susceptibilities allow unequal off-diagonal diffusion entries.

When \(C\) is positive definite, use fluctuation coordinates \(u=C^{-1/2}\delta q\). Their covariance is the identity, and their diffusion matrix
\(C^{-1/2}\mathfrak DC^{1/2}\) is symmetric. This is an explanatory consequence of Eq. (2.34), not an additional equation quoted from the paper.

### Why the result is \(\mathfrak L=\mathfrak DC\)

With \(E=0\), the general relation (2.27) reduces to

\[
\mathfrak L=\frac12(\mathfrak DC+C\mathfrak D^{\mathsf T}).
\]

Equation (2.34) makes its two summands equal. Therefore

\[
\boxed{D=A^2C,\qquad \mathfrak L=\mathfrak DC}. \tag{2.35}
\]

Here \(D\) is the Drude matrix and \(\mathfrak D\) is the diffusion matrix. The possible factor discrepancy in the earlier \(E\) terms is irrelevant once \(E=0\).

The factor \(C\) has a physical job. The diffusion matrix describes the evolution of density perturbations. A correlation measures the spreading of fluctuations already present in the state, whose integrated weight is \(C\). The coefficient of the correlation's diffusive second-moment growth therefore combines broadening with this weight.

For one conserved density with Euler speed \(v\), the linearized equation is

\[
\partial_tS+v\partial_xS=\frac{\mathfrak D}{2}\partial_x^2S.
\]

A localized packet of integrated weight \(C\) has variance growth \(\mathfrak D t\). Its unnormalized second moment grows as \(Cv^2t^2+C\mathfrak Dt\), matching \(D=v^2C\) and \(\mathfrak L=\mathfrak DC\). The conventional coefficient \(\nu\) in \(\nu\partial_x^2S\) is \(\nu=\mathfrak D/2\); this explains the factor of two in the paper's convention.

On a sector where \(C\) is invertible,

\[
\mathfrak D=\mathfrak L C^{-1}.
\]

Matrix order matters. Combining this with the current-correlation formula (2.16) is the paper's route to computing diffusion. The static fluctuations supply \(C\), while the time-integrated current fluctuations after ballistic subtraction supply \(\mathfrak L\). For infinitely many charges, inversion is understood on an appropriate nondegenerate sector.

The logical chain is: strong PT supplies a compatible representative and invariant GGE; reflection removes \(E\) and matches the second-moment branches; their matching makes \(\mathfrak DC\) symmetric; the general spreading formula then yields Eq. (2.35). This use of microscopic time reversal does not assert that reversing time in the diffusive initial-value equation produces another forward diffusion process. The two equilibrium correlation branches are related by stationarity and symmetry.

## Section 2.5: when the current is itself a conserved density

Return to the transport argument after the quantum-symmetry clarification. We follow the paper's PT gauge and its asserted relation \(\mathfrak L=\mathfrak DC\), Eq. (2.35). Section 2.5 uses this relation to identify an entire zero row of the diffusion matrix.

The additional microscopic input is the local operator identity
\[
j_0(x,t)=q_1(x,t). \tag{2.36}
\]
Here \(q_1\) is the density of another conserved charge \(Q_1=\int dx\,q_1(x,t)\). This is stronger than equality of current and density expectations in one GGE. It also says much more than conservation of \(Q_0\): ordinary continuity conserves \(Q_0\), but does not generally conserve its integrated current.

With (2.36), that integrated current is conserved:
\[
J_0(t):=\int dx\,j_0(x,t)=Q_1.
\]
Physical examples in the paper are the mass current equal to momentum density in Galilean systems, and energy current equal to momentum density in relativistic systems. The mass normalization matters: particle-number current equals momentum density divided by the particle mass. Another example stated in §2.5 is the XXZ energy current, which belongs to its conserved-charge tower.

To see the consequence, define the spatially integrated current correlation
\[
K_{0j}(s):=\int dx\,\langle j_0(x,s)j_j(0,0)\rangle^{\rm c}.
\]
Apply the operator identity before taking an expectation:
\[
K_{0j}(s)
=\int dx\,\langle q_1(x,s)j_j(0,0)\rangle^{\rm c}
=\langle Q_1j_j(0,0)\rangle^{\rm c}.
\]
The right-hand side has no \(s\) dependence because \(Q_1\) is exactly conserved. The second operator remains fixed and product order remains \(Q_1j_j\). One can define this on a finite periodic ring before taking the thermodynamic limit. Equivalently, differentiating the first density and using its continuity equation gives a spatial boundary term that vanishes.

The expression printed in Eq. (2.38) displays \(q_0\) on its right-hand side. The substitution from Eq. (2.36) requires \(q_1\). This is an apparent index typo, not an author-confirmed erratum; our derivation uses \(q_1\).

Now use the definitions of the transport coefficients, retaining the distinction between Drude \(D\) and diffusion \(\mathfrak D\). Since \(K_{0j}(s)\) is constant,
\[
D_{0j}
=\lim_{t\to\infty}\frac1{2t}\int_{-t}^{t}ds\,K_{0j}(s)
=K_{0j}, \tag{from 2.15}
\]
and therefore
\[
\mathfrak L_{0j}
=\lim_{t\to\infty}\int_{-t}^{t}ds\,[K_{0j}(s)-D_{0j}]
=0. \tag{from 2.16}
\]
The subtraction vanishes at every time. There is no residual integrated current correlation left to generate the Onsager coefficient. The Drude coefficient can still be nonzero.

Equation (2.35) then gives
\[
0=\mathfrak L_{0j}=\mathfrak D_0{}^kC_{kj}.
\]
On an invertible susceptibility sector, multiply on the right by \(C^{-1}\):
\[
\boxed{\mathfrak D_0{}^i=0\quad\text{for every }i.} \tag{2.37}
\]
If \(C\) has null directions, the direct conclusion is that this row annihilates \(C\); the zero-row statement applies to the independent thermodynamic sector. This is the same inversion qualification as in §2.4.

What precisely vanishes? In the constitutive relation (2.9),
\[
\bar j_0
=F_0(\bar q)-\frac12\mathfrak D_0{}^i\partial_x\bar q_i
 +O(\partial_x^2),
\]
all the first-gradient corrections in this current vanish. With the selected density variables, the operator identity gives \(\bar j_0=\bar q_1\) exactly. Thus its continuity equation is \(\partial_t\bar q_0+\partial_x\bar q_1=0\).

This does not remove transport or all broadening of a \(q_0\) profile in a coupled fluid. The \(q_1\) dynamics can involve other fields and dissipative terms, so coupled modes may still damp. Equation (2.37) is a statement about the row of the constitutive diffusion matrix in the chosen variables. It does not imply that every diffusion eigenvalue is zero.

In the PT setting \(\mathfrak L\) is symmetric, so its zero row also gives a zero column. Since \(\mathfrak D=\mathfrak LC^{-1}\), multiplication by \(C^{-1}\) can mix columns; a zero row of \(\mathfrak D\) does not in general imply a zero column in the original density coordinates.

The useful proof to remember is
\[
j_0=q_1
\ \Longrightarrow\ J_0=Q_1\text{ conserved}
\ \Longrightarrow\ K_{0j}(s)\text{ constant}
\ \Longrightarrow\ K_{0j}=D_{0j}
\ \Longrightarrow\ \mathfrak L_{0j}=0
\ \Longrightarrow\ \mathfrak D_0{}^i=0.
\]
The first arrow is a special microscopic identity, the middle arrows use the exact correlation definitions, and the last arrow uses the PT-gauge identification and invertibility. This completes §2. Section 3 introduces quasiparticle variables to calculate the current correlations and susceptibilities entering these formulas.

## Section 3: supply the microscopic inputs to the bridge

Section 2 leaves us with \(\mathfrak D=\mathfrak L C^{-1}\) in the paper's PT framework. We therefore need static density fluctuations and the residual time-integrated current correlation. Section 3 begins by naming the microscopic correlation to compute,
\[
\Gamma_{ij}(x,t)=\langle j_i(x,t)j_j(0,0)\rangle^{\rm c}. \tag{3.1}
\]
Then \(K_{ij}(t)=\int dx\,\Gamma_{ij}(x,t)\) enters the Drude and Onsager definitions. Its value depends on the background stationary state, so we must first specify that state in variables adapted to the integrable model.

Our route within §3 is: §3.1 describes a homogeneous state with quasiparticles; §3.2 lets that state vary slowly in space and time to recover Euler GHD; §3.3 introduces particle–hole excitations and form factors to compute correlations; §3.4 checks the machinery against Euler-scale transport. Section 4 then uses it for diffusion. These later steps are previews; the current unit supplies the first state variables and dressing.

### Section 3.1, first unit: from Bethe roots to a stationary macrostate

Initially the paper takes a ring of length \(L\), one quasiparticle type, real rapidities, and \(p'(\theta)>0\). An eigenstate has Bethe roots \(\{\theta_a\}\). Rather than retaining their individual positions, define a rapidity density by counting roots in a small bin:
\[
\#\{\theta_a\in[\theta,\theta+d\theta]\}
\simeq L\rho_{\rm p}(\theta)d\theta.
\]
The bin is small on the variation scale of the smooth density but contains many roots in the thermodynamic limit. Consequently \(\int d\theta\,\rho_{\rm p}(\theta)=N/L\). This is a density per physical length and per rapidity, not a probability distribution.

Many eigenstates share the same smooth \(\rho_{\rm p}\); specifying it discards microscopic information. It describes a macrostate. Within the thermodynamic description and equivalence of ensembles for local observables, this provides a way to represent the local properties of a homogeneous GGE. We are not identifying an arbitrary pure state with a mixed GGE as density matrices.

This is the physical reason quasiparticle variables help: instead of tracking infinitely many separate charges, we describe which quasiparticles populate the state. A quasiparticle carrying a one-particle charge eigenvalue \(h_i(\theta)\) contributes to the charge density through the root distribution. The explicit charge and current formulas will be taken up later in §3.1.

### Three densities and one filling

In the Bethe counting description, \(\rho_{\rm s}(\theta)\) counts available rapidity modes, \(\rho_{\rm p}(\theta)\) counts occupied ones, and \(\rho_{\rm h}(\theta)=\rho_{\rm s}(\theta)-\rho_{\rm p}(\theta)\) counts holes. All three are densities per length and rapidity. Their ratio is
\[
n(\theta)=\frac{\rho_{\rm p}(\theta)}{\rho_{\rm s}(\theta)}. \tag{3.6}
\]
The fermionic Bethe occupation interpretation gives \(0\leq n\leq1\). “Fermionic” here concerns occupation of Bethe modes and need not mean the microscopic physical particles are fermions. The paper later treats more general statistics; the literal hole interpretation should not be imposed unchanged on every such model.

For an illustrative bin of 100 available Bethe modes, 30 occupied modes give \(n=0.3\) and 70 holes. But the available-mode density itself changes with the background distribution in an interacting Bethe system. Occupying modes does not simply fill a rigid free-particle list.

### Scattering changes the available-mode density

The model supplies a bare momentum \(p(\theta)\) and a two-body scattering amplitude \(S(\theta,\alpha)\). In Eq. (3.3), this \(S\) is a scattering amplitude, not our earlier density correlation \(S_{ij}(x,t)\). Its differential phase is
\[
T(\theta,\alpha)=\frac{1}{2\pi i}\partial_\theta\log S(\theta,\alpha). \tag{3.3}
\]
This \(T\) is a real integral kernel in the physical cases considered here, not the antiunitary PT operator of §2.4. Context distinguishes the notation.

Differentiating the Bethe counting equation gives
\[
\boxed{\rho_{\rm s}(\theta)=\frac{p'(\theta)}{2\pi}
+\int d\alpha\,T(\theta,\alpha)\rho_{\rm p}(\alpha).} \tag{3.4}
\]
The first term is the bare mode density. For free quantization \(Lp(\theta)=2\pi I\), differentiation gives \(L^{-1}dI/d\theta=p'/(2\pi)\). The integral term is the change from scattering with all occupied rapidities in the background. Its sign depends on the model's differential phase; it need not always increase the density of states.

The paper assumes \(T(\theta,\alpha)=T(\alpha,\theta)\), Eq. (3.5), for this initial presentation. That symmetry is a model/convention condition here, not the definition of every possible scattering kernel.

### Dressing solves this background feedback

Insert \(\rho_{\rm p}=n\rho_{\rm s}\) into Eq. (3.4):
\[
\rho_{\rm s}(\theta)=\frac{p'(\theta)}{2\pi}
+\int d\alpha\,T(\theta,\alpha)n(\alpha)\rho_{\rm s}(\alpha). \tag{3.7}
\]
Given \(n\), solve for \(\rho_{\rm s}\), then recover \(\rho_{\rm p}=n\rho_{\rm s}\). Thus \(n\) and \(\rho_{\rm p}\) are alternative state descriptions, under the stated solvability conditions.

For any function \(h\), define its dressing by the same integral equation:
\[
\boxed{h^{\rm dr}(\theta)=h(\theta)
+\int d\alpha\,T(\theta,\alpha)n(\alpha)h^{\rm dr}(\alpha).}
\]
In the paper's operator notation,
\[
h^{\rm dr}=(1-Tn)^{-1}h,\tag{3.9}
\]
\[
2\pi\rho_{\rm s}=(1-Tn)^{-1}p'=(p')^{\rm dr}. \tag{3.8}
\]
The order \(Tn\) matters:
\((Tnh)(\theta)=\int d\alpha\,T(\theta,\alpha)n(\alpha)h(\alpha)\),
whereas \((nTh)(\theta)=n(\theta)\int d\alpha\,T(\theta,\alpha)h(\alpha)\).
They are generally different. The inverse notation assumes an appropriate solvable integral equation. A formal series \(h+Tnh+(Tn)^2h+\cdots\) illustrates repeated background feedback, but is not a convergence claim for every state.

Dressing is a state-dependent modification by the occupied background. For \(T=0\), it disappears: \(h^{\rm dr}=h\) and \(\rho_{\rm s}=p'/(2\pi)\), independent of the filling. Dressing already contributes to Euler-scale quantities; it is not itself the diffusion term. We still need current correlations and their residual part to compute \(\mathfrak L\).

Our completed piece of the story is now:
\[
\text{stationary state}
\ \leftrightarrow\ \rho_{\rm p}\text{ or }n
\ \longrightarrow\ \rho_{\rm s}\text{ and dressing in that background}.
\]
The next piece of §3.1 will relate the state to GGE sources and quasiparticle statistics and produce the charge/current data needed for fluctuations and propagation. The particle–hole correlation machinery comes afterward.

## Which inputs are assumptions?

| Input | Why it is needed | Status here |
| --- | --- | --- |
| Local relaxation and hydrodynamic closure, Eqs. (2.4), (2.8) | Replace microscopic states by slow density profiles | Hydrodynamic postulate |
| Local gradient expansion, Eq. (2.9) | Define \(F\) and \(\mathfrak D\) | Long-wavelength assumption |
| Decay of correlations and finite transport limits | Discard spatial boundary terms and obtain finite \(D,\mathfrak L\) | Regularity conditions |
| Ordered initial-source response, Eq. (B.3) | Convert the closure of means into correlator equations | Explicit paper input at diffusive order; quantum ordering needs care |
| Hydrodynamic projection in Appendix C.1 | Show \(\mathfrak L\) is invariant under Eq. (2.28) | Paper's assumption in its gauge argument |
| Strong PT hypothesis in §2.4 | Supply a symmetry-adapted local representative and invariant GGE | Model-dependent symmetry assumption |
| Reality of the relevant correlation moments | Turn antiunitary conjugate reflection into the equalities used for (2.32)–(2.34) | Automatic classically; requires care for ordered quantum correlations |

## What to know now

| Reproduce yourself | Recognize, then postpone |
| --- | --- |
| Continuity + two integrations by parts: \(M_2''=2K\). | The full Appendix A integration. |
| Response chain rule: mean-current closure → positive-time Eq. (2.19). | General quantum source construction beyond the paper's ordered-response assumption. |
| Eq. (B.5), translation without operator exchange, and why the negative-time matrices are transposed. | Detailed PT gauge-fixing machinery in Appendix C. |
| Gradient order counting in Eq. (2.28): \(\partial_xo\) and \(-\partial_to\) can affect \(\mathfrak D\). | Exact transformation formulas for every gauge-dependent matrix. |

**One checkpoint for our current stopping point:** At fixed bare momentum and scattering kernel, why can changing the filling \(n\) change the available-mode density \(\rho_{\rm s}\) in an interacting model? What changes in the case \(T=0\)?
