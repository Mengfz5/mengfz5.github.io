---
title: "Diffusion in GHD — Detailed Study Notes"
authors:
  - admin
date: 2026-09-28
summary: "A guided study of diffusion in generalized hydrodynamics through sections 2.1–2.5 and section 3.1 effective velocities, Eq. (3.20), with local ensemble equivalence, pseudoenergy, charge/current formulas and supporting derivations."
tags:
  - generalized hydrodynamics
  - GHD
  - quantum many-body physics
  - diffusion
  - integrable systems
featured: true
math: true
lastmod: 2026-10-06
---

{{% callout note %}}
This study note was generated with GPT assistance during guided reading, then source-checked and tutor-reviewed. It is a personal learning reference; verify equations, conventions, and interpretations against the original paper before citing or reusing it.
{{% /callout %}}

**Companion slides:** [GHD presentation and PDF download](/study-note/ghd-presentation/). The slide deck covers the earlier material through dressing, Eq. (3.9); this detailed note continues through effective velocity, Eq. (3.20).

J. De Nardis, D. Bernard and B. Doyon, *Diffusion in generalized hydrodynamics and quasiparticle scattering*, SciPost Phys. **6**, 049 (2019), arXiv:1812.00767v4.

We have studied the introduction, §§2.1–2.5, Appendix B, and the opening of §3.1 through dressing, local ensemble equivalence, the meaning of the pseudoenergy equation (3.14), the density and current formulas (3.16), (3.18), and the effective velocity in scattering and dressed form, Eqs. (3.19)–(3.20). The entropy and free-energy derivations remain to be studied. This note follows that material in the order needed to understand the argument. The later sections appear only in the roadmap.

The [minimum note](/notes/ghd-sections-1-to-2-3-minimal.pdf) is the companion for quick review. Here we explain the reasoning in full sentences and work through the essential calculations. Longer supporting proofs are collected at the end, where you can return to them without losing the main story. The source-audit review records apparent discrepancies in the [paper on arXiv](https://arxiv.org/abs/1812.00767).

**Pace of our lessons.** We will work through one physical question and one main result at a time. Each lesson will briefly locate that question in the paper's larger argument, explain the necessary steps, and then pause for questions and reflection before introducing another result. The note gathers these smaller discussions into a continuous explanation; its chapter boundaries do not determine how much we cover in a single lesson.

## 1. The question that connects everything

Imagine preparing an interacting integrable system with a slowly varying density profile. Perhaps one region contains more particles or energy than its surroundings. We want to predict how that profile changes: where its disturbances travel, how rapidly they spread, and which microscopic processes determine that spreading.

Euler generalized hydrodynamics already describes the leading propagation. Its quasiparticles move with effective velocities that depend on the surrounding state. Interactions therefore already affect Euler motion. The question of this paper is what happens at the next order: **how do we calculate the additional diffusive spreading?**

A simple packet gives a useful picture. If it travels at speed \(v\), its centre moves a distance \(vt\). If it also diffuses, its variance acquires a contribution proportional to \(t\), so its additional width grows as \(\sqrt t\). A density disturbance in a many-charge fluid can excite several velocities and split into different packets; the picture of one packet illustrates the distinction between propagation and broadening rather than describing every correlation profile.

The equation we want to make predictive is

\[
\partial_t\bar q_i+\partial_xF_i(\bar q)
=\frac12\partial_x\!\left[
\mathfrak D_i{}^j(\bar q)\partial_x\bar q_j\right]. \tag{2.10}
\]

Here \(\bar q_i\) is a mean conserved density, \(F_i\) is its homogeneous current, and \(\mathfrak D_i{}^j\) is the diffusion matrix. We will define each carefully below. For now, the important point is that the matrix \(\mathfrak D\) is the missing input. Knowing the structure of the equation is only the beginning; we must calculate its coefficients from the microscopic model.

The paper divides this task into successive stages:

| Part | Question answered | What we gain |
| --- | --- | --- |
| §2 | How can microscopic equilibrium correlations determine a diffusion coefficient? | A relation between current fluctuations and the matrix in the hydrodynamic equation. |
| §3 | How can we describe the equilibrium state and evaluate correlations in an integrable model? | Quasiparticle variables and a method based on excitations and form factors. |
| §4 | Which processes contribute to diffusion, and what is their contribution? | A diffusion formula from two-particle–hole contributions, interpreted in terms of scattering. |
| §5 | What evolution follows once this coefficient is known? | GHD with diffusion, entropy production, and examples of profile evolution. |
| §6 | What does the theory predict for a concrete spin chain? | Spin diffusion in the gapped XXZ chain. |

The first stage does not require Bethe Ansatz. It establishes a general relation that the later integrable calculation can use. The previews of §§3–6 come from the paper's introduction and organization; we have not yet worked through their derivations. The paper itself assumes hydrodynamic closure and suitable properties of thermodynamic form factors.

## 2. Section 2.1 — conservation tells us what is missing

### Why continuity does not close the problem

A conserved density \(q_i(x,t)\) and its current \(j_i(x,t)\) obey

\[
\partial_tq_i+\partial_xj_i=0,
\qquad Q_i=\int dx\,q_i(x,t). \tag{2.1–2.2}
\]

This operator equation is exact. After taking an expectation value, it becomes

\[
\partial_t\bar q_i+\partial_x\bar j_i=0,
\qquad \bar q_i=\langle q_i\rangle,
\quad \bar j_i=\langle j_i\rangle.
\]

The equation relates changes in density to spatial variations of current. It does not tell us what current a given density profile produces. To predict the density evolution, we need that additional relation.

Hydrodynamics supplies it by assuming local relaxation. A fluid cell is large compared with microscopic lengths but small compared with the scale on which the profile varies. Within such a cell, the conserved densities specify an approximately stationary maximum-entropy state. The paper's postulate, Eq. (2.4), is that these slow density profiles suffice to determine local averages at the retained hydrodynamic order.

A **closure** is precisely a rule expressing the current in terms of these density variables. If the profile varies slowly and the current depends only on nearby parts of it, the rule can be expanded in spatial derivatives:

\[
\boxed{\bar j_i
=F_i(\bar q)-\frac12\mathfrak D_i{}^j(\bar q)\partial_x\bar q_j
+O(\partial_x^2).} \tag{2.9}
\]

The term \(F_i\) is present even in a uniform state. The next term responds to a density gradient and defines the diffusion matrix. Substituting this expression into continuity gives Eq. (2.10), which we displayed at the start. The outer spatial derivative means that a first-gradient correction to the current produces a second-gradient contribution to density evolution.

These are relations between expectations. We have not asserted an operator identity such as \(j_i=F_i(q)\). Also, if \(\mathfrak D\) depends on the densities, the outer derivative acts on it as well as on \(\partial_x\bar q\). Local relaxation and the derivative expansion are assumptions of this description, not deductions from conservation alone.

### How the equation of state is defined

To understand \(F_i\), consider the family of homogeneous generalized Gibbs ensembles, or GGEs,

\[
\rho_\beta=Z^{-1}e^{-\sum_k\beta_kQ_k}. \tag{2.3}
\]

The real parameters \(\beta_k\) are thermodynamic sources specifying the state. For each choice of sources, calculate the mean densities \(\bar q_k(\beta)\) and mean currents \(\bar j_i(\beta)\). If the full density vector locally identifies the state, we can use it instead of \(\beta\) as a coordinate. We then define

\[
F_i(\bar q)=\bar j_i\big(\beta(\bar q)\big).
\]

This is what the paper means by the current equation of state. One GGE supplies one density vector and one current value. A family of neighboring GGEs supplies the function and its slope:

\[
\boxed{A_i{}^j=\frac{\partial F_i}{\partial\bar q_j}.} \tag{2.20}
\]

The matrix \(A\), called the **flux Jacobian**, measures how the homogeneous current changes when we move to a nearby homogeneous state. Its derivative is a thermodynamic derivative. It is not a spatial gradient inside one uniform state, so spatial uniformity does not imply \(A=0\).

The distinction between a fixed state and a varying family also matters when differentiating local expectations. At fixed \(\rho\), the derivative of \(\langle o(x)\rangle_\rho\) acts on the operator's position. In \(\langle o(x)\rangle_{\rho_x}\), the state itself varies with \(x\), so its derivative contributes too. A hydrodynamic time slice means the entire density profile at one fixed time; it does not mean a time average.

We have now identified the problem that remains: thermodynamics supplies \(F\), but we still need a microscopic way to find \(\mathfrak D\). Section 2.2 introduces fluctuations because their spreading contains that information.

## 3. Section 2.2 — use fluctuations to measure transport

### What the density correlation records

We now work in a homogeneous stationary background and study

\[
S_{ij}(x,t)=\langle q_i(x,t)q_j(0,0)\rangle^{\rm c}. \tag{2.11}
\]

The superscript means **connected**:
\(\langle AB\rangle^{\rm c}=\langle AB\rangle-\langle A\rangle\langle B\rangle\).
Subtracting the product of means isolates fluctuations. The correlation asks how a density fluctuation at the origin is related to a density at another position and time. In quantum mechanics, its displayed operator order is part of its definition.

The total spatial weight is the susceptibility matrix,

\[
C_{ij}=\int dx\,S_{ij}(x,t). \tag{2.12}
\]

Conservation keeps this weight fixed even while the correlation moves or spreads. On a homogeneous periodic ring of length \(L\), it has the useful interpretation

\[
C_{ij}^{(L)}=\frac1L\langle Q_iQ_j\rangle^{\rm c}.
\]

Thus \(C\) measures the covariance of total-charge fluctuations per unit length. For Hermitian mutually commuting GGE charges, it is real, symmetric, and positive semidefinite. This does not require the local densities to commute at each separation. Supporting derivation A below explains the finite-volume identity and its thermodynamic limit.

### Why current fluctuations determine density spreading

Define the local and integrated current correlations by

\[
G_{ij}(x,t)=\langle j_i(x,t)j_j(0,0)\rangle^{\rm c},
\qquad K_{ij}(t)=\int dx\,G_{ij}(x,t).
\]

We also define spatial moments of the density correlation:
\(M_n(t)=\int dx\,x^nS(x,t)\). The second moment gives extra weight to correlations far from the origin, so it detects both propagation and broadening. It need not be a probability variance: a cross correlation can change sign or be complex.

Continuity at both insertions, together with stationarity and translation invariance, gives

\[
\partial_t^2S_{ij}=\partial_x^2G_{ij}.
\]

Multiplying by \(x^2\) and integrating twice by parts yields

\[
\boxed{M_2''(t)=2K(t).}
\]

The boundary terms must vanish for this step. This equation gives the connection we wanted: current correlations determine how the density's second moment grows.

After integrating in time, the sum rule (2.13) becomes, for \(t>0\),

\[
\frac{M_2(t)+M_2(-t)}2-M_2(0)
=\int_{-t}^{t}du\,(t-|u|)K(u).
\]

The triangular weight counts pairs of times in the square \(0\leq s,s'\leq t\) with the same separation \(u=s-s'\). Many pairs have a small separation, while fewer have a separation close to \(\pm t\). Supporting derivation B shows the change of variables explicitly. Neither that geometry nor stationarity requires \(K(u)=K(-u)\).

### Separate the persistent part from the remainder

A current correlation can retain memory for arbitrarily long times. The paper measures this persistent part by the Drude matrix,

\[
D=\lim_{T\to\infty}\frac1{2T}\int_{-T}^{T}du\,K(u). \tag{2.15}
\]

A constant contribution \(D\) produces \(Dt^2\) when integrated against the triangular weight. This is the ballistic contribution to spreading. To isolate the next contribution, subtract the persistent part and integrate what remains:

\[
\mathfrak L=\lim_{T\to\infty}\int_{-T}^{T}du\,[K(u)-D]. \tag{2.16}
\]

The matrix \(\mathfrak L\) is the **Onsager matrix**. Under the paper's finite-limit assumptions, it supplies the term linear in time:

\[
\frac{M_2(t)+M_2(-t)}2-M_2(0)
=Dt^2+\mathfrak Lt+o(t). \tag{from 2.14}
\]

The subtraction of \(M_2(0)\) is convenient and does not change the long-time coefficients. The existence of a finite Onsager limit is an additional condition; a correlation can decay too slowly for its residual time integral to converge.

Keep the following distinction in mind throughout the paper:

| Matrix | What it describes |
| --- | --- |
| \(D\), Drude | The persistent current contribution and ballistic second-moment growth. |
| \(\mathfrak L\), Onsager | The time-integrated residual current contribution and linear second-moment growth. |
| \(\mathfrak D\), diffusion | The density-gradient coefficient in the mean-current equation. |

We have defined two coefficients from microscopic correlations, but we have not yet proved their relation to the coefficient in the hydrodynamic equation. Section 2.3 supplies that relation.

## 4. Section 2.3 — identify the coefficient in the hydrodynamic equation

### Turn a response of means into a correlation equation

For positive time, continuity gives

\[
\partial_tS_{ij}+\partial_xJ_{ij}=0,
\qquad J_{ij}=\langle j_i(x,t)q_j(0,0)\rangle^{\rm c}. \tag{B.1}
\]

To close this equation we need the current–density correlation \(J\). The mean-current closure does not directly give an operator relation for it. Instead, Appendix B perturbs the initial ensemble and differentiates the mean current.

Let \(\eta_j(y)\) denote a positive source coupled to the initial density. We use a different symbol from the thermodynamic \(\beta\), which appears with a minus sign in the GGE exponent. The response relation used in Appendix B is

\[
\frac{\delta\langle o(x,t)\rangle}{\delta\eta_j(y)}
=\langle o(x,t)q_j(y,0)\rangle^{\rm c}. \tag{B.3, response notation}
\]

For a commuting ensemble, this follows by differentiating
\(\rho_\eta=Z[\eta]^{-1}\exp(\int dy\,\eta_k(y)q_k(y,0))\).
The numerator derivative inserts \(q_j(y,0)\); the normalization derivative subtracts its mean:

\[
\frac{\delta\langle o\rangle_\eta}{\delta\eta_j(y)}
=\langle o q_j(y,0)\rangle_\eta
-\langle o\rangle_\eta\langle q_j(y,0)\rangle_\eta.
\]

This response changes the initial statistical ensemble. It is different from adding a force to the Hamiltonian at a later time. For general noncommuting quantum sources, differentiating an exponential produces an insertion averaged along imaginary time, called the **Kubo–Mori insertion**. It is not automatically the ordered product above. We therefore retain the paper's ordered-response step as an input at this hydrodynamic order.

Now differentiate the constitutive relation around a homogeneous background:

\[
\frac{\delta\bar j_i(x,t)}{\delta\bar q_k(y,t)}
=A_i{}^k\delta(x-y)
-\frac12\mathfrak D_i{}^k\partial_x\delta(x-y).
\]

This functional derivative is a continuum version of a matrix derivative: \(y\) labels a component of the density profile at fixed time. The delta function says that the leading response is local. Its derivative represents the gradient term. A variation of \(\mathfrak D\) multiplies the background density gradient, which is zero; a variation of \(F\) remains and gives \(A\).

The chain rule relates the response to the initial source to the response to the current density profile:

\[
\begin{aligned}
J_{ij}(x,t)
&=\int dy\,
\frac{\delta\bar j_i(x,t)}{\delta\bar q_k(y,t)}
\frac{\delta\bar q_k(y,t)}{\delta\eta_j(0)}\\
&=A_i{}^kS_{kj}(x,t)-\frac12\mathfrak D_i{}^k\partial_xS_{kj}(x,t).
\end{aligned}
\]

Here the source response of \(\bar q_k\) equals \(S_{kj}\). Also,
\(\int dy\,\partial_x\delta(x-y)S_{kj}(y,t)=\partial_xS_{kj}(x,t)\).
The delta function is integrated as a kernel; no isolated \(\delta(0)\) is involved. Substituting into continuity gives

\[
\boxed{\partial_tS=-A\partial_xS+\frac12\mathfrak D\partial_x^2S,
\qquad t>0.} \tag{2.19, positive branch}
\]

We obtained this long-wavelength equation by differentiating a relation between means. We did not replace the microscopic current by a function of density operators.

### Why negative time acts on the second index

A dissipative approximation started at time zero should not be used to reconstruct an earlier state. For \(t<0\), the authors first use conservation to move the current to the insertion that can be treated as later.

Besides \(J\), define
\(H_{ij}=\langle q_i(x,t)j_j(0,0)\rangle^{\rm c}\).
This \(H_{ij}\) is a correlation, not the Hamiltonian. Continuity at the first and second insertions gives

\[
\partial_tS_{ij}=-\partial_xJ_{ij}=-\partial_xH_{ij}.
\]

For the second equality, translate the densities to
\(\langle q_i(0,0)q_j(-x,-t)\rangle^{\rm c}\), then differentiate the second insertion. Both its time and position coordinates have minus signs. Consequently \(J-H\) is constant in space, although it could initially depend on time. At each fixed time, spatial clustering makes each connected correlation vanish at large separation, so that spatial constant is zero:

\[
\boxed{J_{ij}=H_{ij}.} \tag{B.5}
\]

Each connected correlation subtracts its own product of means. Those products need not agree; their subtraction makes both connected functions tend to zero separately. This argument needs no exchange of operators or time-reversal symmetry. For later integrations by parts, stronger decay is needed: \(F(x)\to0\) alone does not ensure \(xF(x)\to0\) or convergence of its integral.

We can now translate \(H\) without changing product order:

\[
H_{ij}(x,t)=\langle q_i(0,0)j_j(-x,-t)\rangle^{\rm c}.
\]

When \(t<0\), the time \(-t\) is positive. The later current carries index \(j\), so its constitutive response acts on the second density index. Using the corresponding ordered-response step, and \(\partial_{(-x)}=-\partial_x\), gives

\[
J_{ij}=A_j{}^kS_{ik}+\frac12\mathfrak D_j{}^k\partial_xS_{ik}.
\]

The contraction \(S_{ik}A_j{}^k\) is \((SA^{\mathsf T})_{ij}\). Therefore

\[
\boxed{\partial_tS=-(\partial_xS)A^{\mathsf T}
-\frac12(\partial_x^2S)\mathfrak D^{\mathsf T},\qquad t<0.}
\tag{2.19, negative branch}
\]

The transpose records which index evolves. It does not indicate an operator swap. The quantum response assumption still matters: the ordinary source identity does not, by itself, justify reversing an ordered product. If we use the positive variable \(\tau=-t\), the diffusion term for \(S(x,-\tau)\) has the usual positive sign. We are relating equilibrium correlations at opposite time separations, not running a diffusing state backward.

### Why we calculate moments instead of the full profile

Our target is the coefficients of \(t^2\) and \(t\) in the second moment. We therefore do not need to solve the entire spatial profile. Integrating the correlation equation against \(1\), \(x\), and \(x^2\) extracts just the information needed.

The zeroth moment stays fixed:

\[
M_0=C.
\]

For positive time, the first moment obeys

\[
\int dx\,x\partial_xS=-C,
\qquad \int dx\,x\partial_x^2S=0,
\]

so

\[
M_1(t)=ACt+E,
\qquad E=\int dx\,xS(x,0). \tag{2.21–2.22}
\]

The matrix \(E\) describes an initial signed spatial moment. It can depend on our local definition of the density; we cannot yet set it to zero. The negative-time equation gives the same first-moment slope because the paper states

\[
\boxed{AC=CA^{\mathsf T}.} \tag{2.23}
\]

Supporting derivation C reconstructs this identity using thermodynamic source derivatives and the exact relation (B.5). It also explains the associated symmetry of the Euler modes.

For the second moment, integration by parts gives

\[
\int dx\,x^2\partial_xS=-2M_1,
\qquad \int dx\,x^2\partial_x^2S=2C.
\]

The positive-time equation consequently becomes

\[
\frac{dM_2}{dt}=2AM_1+\mathfrak DC.
\]

Substituting the first moment before integrating makes the different contributions visible:

\[
\begin{aligned}
N(t)&:=M_2(t)-M_2(0)\\
&=\int_0^t ds\,[2A(ACs+E)+\mathfrak DC]\\
&=A^2Ct^2+(2AE+\mathfrak DC)t.
\end{aligned}
\]

Propagation acts on a first moment already growing in time, producing \(t^2\). Diffusion acts on the fixed correlation weight \(C\), producing \(t\). The initial moment \(E\) also contributes linearly when transported by \(A\), which is why every linear term cannot immediately be called diffusion.

For negative time,
\(dM_2/dt=2M_1A^{\mathsf T}-C\mathfrak D^{\mathsf T}\).
Integrating from zero to \(-\tau\), with \(\tau>0\), gives

\[
\begin{aligned}
N(-\tau)
&=\int_0^{-\tau}ds\,[2(ACs+E)A^{\mathsf T}-C\mathfrak D^{\mathsf T}]\\
&=ACA^{\mathsf T}\tau^2+(C\mathfrak D^{\mathsf T}-2EA^{\mathsf T})\tau\\
&=A^2C\tau^2+(C\mathfrak D^{\mathsf T}-2EA^{\mathsf T})\tau.
\end{aligned}
\]

The last equality uses Eq. (2.23); it does not commute arbitrary matrices. These are the integrated forms of Eqs. (2.24)–(2.25).

Averaging the positive and negative branches and comparing with the transport expansion gives

\[
\boxed{D=A^2C=ACA^{\mathsf T},}
\]

\[
\boxed{\mathfrak L=\frac12(\mathfrak DC+C\mathfrak D^{\mathsf T})
+AE-EA^{\mathsf T}.}
\]

The second expression follows direct integration. Printed Eqs. (2.26)–(2.27) have an apparent factor discrepancy in the \(E\) terms; the review records it as an apparent issue, not an author-confirmed erratum. It will not affect the final PT-gauge result, where \(E=0\).

We have now related microscopic spreading to the hydrodynamic coefficients. However, the initial moment and the local density convention still complicate the result. Section 2.4 addresses that remaining obstacle.

## 5. Section 2.4 — choose the local densities consistently

### The total charge does not specify its local density uniquely

On a lattice, adding \(o(n+1)-o(n)\) to a density redistributes its local weight while leaving its spatial sum unchanged. In the continuum, the analogous change is a spatial derivative. Equation (2.28) permits

\[
q_i'=q_i+\partial_xo_i,
\qquad j_i'=j_i-\partial_to_i.
\]

With vanishing spatial boundary terms, \(Q_i'=Q_i\). The two changes preserve continuity because

\[
\partial_tq_i'+\partial_xj_i'
=\partial_tq_i+\partial_xj_i
+\partial_t\partial_xo_i-\partial_x\partial_to_i=0.
\]

The paper calls this freedom a **gauge choice**. Here it means choosing a local density for the same integrated conserved charge.

Since the charge operators are unchanged, their homogeneous GGE family is unchanged. In any one of these states, homogeneity and stationarity make \(\langle o_i\rangle\) independent of position and time. Thus

\[
\langle q_i'\rangle=\langle q_i\rangle,
\qquad \langle j_i'\rangle=\langle j_i\rangle.
\]

These equalities hold for every GGE in the family, not merely one state. They therefore preserve the whole equation of state and its derivative: \(F'=F\) and \(A'=A\). The total-charge covariance also stays fixed, so \(C'=C\), and hence the Drude matrix \(D=A^2C\) is unchanged.

### Why the first moment and diffusion coefficient can change

Preserving the integral of a function does not preserve its position-weighted integral. To see this explicitly, define at equal time

\[
R_{ij}=\langle o_i(x)q_j(0)\rangle^{\rm c},\quad
U_{ij}=\langle q_i(x)o_j(0)\rangle^{\rm c},\quad
V_{ij}=\langle o_i(x)o_j(0)\rangle^{\rm c}.
\]

A derivative at the second insertion is minus a derivative of the separation. Expanding the improved correlation without exchanging operators gives

\[
S'=S+\partial_xR-\partial_xU-\partial_x^2V.
\]

The change in \(C\) is a boundary term. The change in \(E\), however, contains
\(\int dx\,x\partial_xR=-\int dx\,R\), assuming \(xR\) vanishes at infinity. Applying this to all terms gives

\[
C'=C,
\qquad E'-E=-\int dx\,R+\int dx\,U.
\]

The remaining integrals need not vanish, although particular changes can make them cancel. The double derivative of \(V\) contributes zero under the required stronger decay conditions.

The same density change matters at precisely the order where diffusion enters. At leading order, write \(\bar o_i=O_i(\bar q)\) and define the derivative matrix \(B_i{}^j=\partial O_i/\partial\bar q_j\). Then

\[
\bar q'=\bar q+B\partial_x\bar q+O(\partial_x^2).
\]

Using Euler evolution, \(\partial_t\bar q=-A\partial_x\bar q+O(\partial_x^2)\), in the current change yields

\[
-\partial_t\bar o=BA\partial_x\bar q+O(\partial_x^2).
\]

A time derivative has therefore generated a first-gradient correction to the current. Including the diffusive part of density evolution here would only add a second-gradient current term, beyond the coefficient being tracked. Reexpressing \(F(\bar q)\) in the changed variables also contributes at first-gradient order. These changes can alter \(\mathfrak D\) while leaving \(F\), \(A\), and the total charges fixed. We have not assumed that the different derivative matrices commute.

### Why the Onsager matrix can nevertheless remain fixed

The Onsager matrix measures the residual current correlation, whereas \(\mathfrak D\) is a coefficient written in selected density variables. The paper asserts that \(\mathfrak L\) is invariant under the change above, assuming hydrodynamic projection.

The basic idea is that \(-\partial_to_i\), when integrated in time, produces values of \(o_i\) at the endpoints. These endpoint correlations may retain a nonzero contribution from conserved charges. To show invariance, those contributions must cancel between the two endpoints.

**Hydrodynamic projection** identifies the part of an observable correlated with the conserved charges. Its remaining part is assumed to lose the relevant long-time memory. A **plateau** is the constant integrated correlation left by the conserved part after the remaining contribution relaxes. For one charge, the projected part is \(\mathcal Pa=(a,q)_0q/C\), where \((a,q)_0\) denotes their integrated equal-time covariance. The coefficient is chosen so that \(a-\mathcal Pa\) has zero charge covariance.

Under suitable relaxation conditions, the mixed endpoint correlations approach the same conserved values in both time directions. Their differences then vanish, preserving \(\mathfrak L\). Total derivatives alone do not establish this conclusion. Supporting derivation D works through the projection, quantum operator order, exact endpoint formulas, and the additional assumptions needed for bounded corrections.

We can now state the remaining task clearly: choose densities for which the general relation between \(\mathfrak L\) and \(\mathfrak D\) takes a simple form. The paper uses PT symmetry for this purpose.

### Construct densities and currents that transform simply under PT

The paper assumes a strong version of PT symmetry: an antiunitary involution \(T\) preserves the Hamiltonian, momentum, every conserved charge, and locality. An involution returns the original object when applied twice. PT reverses both position and time.

For a density, define its reflected PT partner at the same displayed coordinates:

\[
\widetilde q_i(x,t)=Tq_i(-x,-t)T^{-1}.
\]

It is local and integrates to the same \(Q_i\). Equation (2.29) says that the two representatives differ by a total derivative; write that difference as \(\widetilde q_i-q_i=\partial_xb_i\). Averaging them is therefore an allowed density change:

\[
q_i^{\rm PT}=\frac12(q_i+\widetilde q_i)
=q_i+\partial_x(b_i/2).
\]

The symmetry exchanges the two summands and leaves their average fixed. Thus

\[
Tq_i^{\rm PT}(x,t)T^{-1}=q_i^{\rm PT}(-x,-t), \tag{2.30}
\]

which is the desired simple transformation. The real coefficient \(1/2\) is unchanged by antiunitarity. This explains existence; Appendix C.2 treats the proper-gauge conditions and uniqueness, using \(o_i=-a_i/2\) in Eq. (C.6).

Take the current accompanying this density change and define \(\widetilde j_i=Tj_i(-x,-t)T^{-1}\). Both derivatives in continuity change sign under the coordinate reflection, so the transformed equation has the same chosen density. Comparing the two continuity equations gives

\[
\partial_x(\widetilde j_i-j_i)=0.
\]

The average \(j_i^{\rm PT}=(j_i+\widetilde j_i)/2\) has the same divergence and obeys Eq. (2.31). Under the locality condition used in Appendix C.2, a local observable with zero spatial derivative is an identity constant. Such a current adjustment does not affect connected correlations or density evolution.

### Keep the state transformation and antiunitarity explicit

The correlations use the Heisenberg picture: the state \(\rho\) is fixed, while

\[
q_i(x,t)=e^{iHt/\hbar}q_i(x,0)e^{-iHt/\hbar}.
\]

Stationarity means \([\rho,H]=0\), not that every local operator is constant in time. A Schrödinger-picture calculation gives the same unequal-time correlation when it retains evolution between the insertions. Changing quantum picture and applying PT are different operations.

PT acts on states as \(\rho'=T\rho T^{-1}\) and on observables as \(O'=TOT^{-1}\). The latter transformation is chosen because \(O'T|\psi\rangle=TO|\psi\rangle\): the transformed observable acts on the transformed vector as the transformed original action. For a Hermitian observable, this preserves the real measurement outcome.

Our GGE is invariant because its real sources multiply PT-invariant charges:

\[
T\rho_\beta T^{-1}=\rho_\beta.
\]

Thus we have used the state transformation; it returns the same state. Antiunitarity still conjugates expectation values. To see why, write \(T=UK\), where \(U\) is unitary and \(K\) conjugates vector components in a chosen basis. Then \(TOT^{-1}=UO^*U^\dagger\), with the star denoting entrywise matrix conjugation. State invariance gives \(U^\dagger\rho U=\rho^*\), so

\[
\begin{aligned}
\langle TOT^{-1}\rangle
&=\operatorname{Tr}(\rho UO^*U^\dagger)\\
&=\operatorname{Tr}(U^\dagger\rho UO^*)\\
&=\operatorname{Tr}(\rho^*O^*)
=\langle O\rangle^*.
\end{aligned}
\]

More generally, \(\operatorname{Tr}(\rho'O')=[\operatorname{Tr}(\rho O)]^*\). Hermitian expectations are real, but a product of Hermitian operators need not have a real expectation. For Hermitian \(A,B\),

\[
\langle AB\rangle^{\rm c}
=\frac12\langle\{A,B\}\rangle^{\rm c}
+\frac12\langle[A,B]\rangle.
\]

The connected anticommutator subtracts \(2\langle A\rangle\langle B\rangle\). Its contribution is real; the commutator contribution is purely imaginary. For example, \(\sigma_x\sigma_y=i\sigma_z\), so its connected expectation in a spin-up state along \(z\) is \(i\). This example illustrates the algebra, not the paper's PT density construction.

It is also important that symmetry conjugation preserves product order:

\[
T(AB)T^{-1}=(TAT^{-1})(TBT^{-1}).
\]

Taking an adjoint reverses order, \((AB)^\dagger=BA\) for Hermitian factors, but applying PT does not. For the PT-adapted densities, applying the expectation identity to the ordered product therefore gives

\[
\begin{aligned}
\langle q_i(x,t)q_j(0,0)\rangle^*
&=\langle T[q_i(x,t)q_j(0,0)]T^{-1}\rangle\\
&=\langle q_i(-x,-t)q_j(0,0)\rangle.
\end{aligned}
\]

The disconnected product transforms in the same way, hence

\[
\boxed{S_{ij}(x,t)^*=S_{ij}(-x,-t).}
\]

Reflection changes the coordinates, and antiunitarity conjugates the value. Neither operation exchanges the two indices or the two insertions.

### What the reflection argument establishes, and what it still needs

Writing \(S=R+iI\) with real \(R,I\), the identity above makes the real part even and the imaginary part odd under simultaneous reflection. At equal time, the first moment consequently obeys

\[
E=-\int dx\,xS(-x,0)
=-\int dx\,xS(x,0)^*=-E^*.
\]

Our earlier explanation incorrectly replaced the last expression by \(-E\) without first establishing reality. The corrected identity permits an imaginary first moment. An additional reality condition is needed to conclude \(E=0\).

Likewise, with \(N(t)=M_2(t)-M_2(0)\), reflection gives \(N(t)^*=N(-t)\). The paper asserts the stronger moment statements

\[
E=0,
\qquad \frac12[N(t)+N(-t)]=N(t). \tag{2.32}
\]

The elementary reflection proof establishes these if the relevant moments are real. Reality is automatic for classical correlations; a Hermitian symmetrized quantum correlation is another real convention. However, Eq. (2.11) defines an ordered correlation, and we have not established the needed reality conditions for every such quantum moment. Locality and possible equal-time contact terms require their own analysis. We retain this qualification when using the paper's stated PT-gauge results.

### The result we needed from Section 2

Accepting those PT-gauge moment statements, set \(E=0\) and equate the two second-moment branches derived in §2.3. The ballistic terms already agree; equality of the linear terms gives

\[
\boxed{\mathfrak DC=C\mathfrak D^{\mathsf T}.} \tag{2.34}
\]

This identity makes the two diffusion terms in the general Onsager formula equal. It therefore reduces to

\[
\boxed{D=A^2C,\qquad\mathfrak L=\mathfrak DC.} \tag{2.35}
\]

The matrix \(\mathfrak DC\) is symmetric, but \(\mathfrak D\) need not be. For example, with \(C=\operatorname{diag}(c_1,c_2)\), its off-diagonal condition is \(\mathfrak D_1{}^2c_2=c_1\mathfrak D_2{}^1\). Unequal fluctuation weights allow unequal diffusion entries. On a positive-definite sector, the transformed matrix \(C^{-1/2}\mathfrak DC^{1/2}\) is symmetric in coordinates normalized by the fluctuations.

The factor \(C\) is physically necessary. Diffusion describes the broadening rate; a correlation moment also contains the amount of fluctuation being broadened. In a scalar illustration,

\[
\partial_tS+v\partial_xS=\frac{\mathfrak D}{2}\partial_x^2S.
\]

For a centred initial packet of weight \(C\), its variance increases by \(\mathfrak Dt\), while its unnormalized second-moment change is \(Cv^2t^2+C\mathfrak Dt\). Thus \(D=v^2C\) and \(\mathfrak L=C\mathfrak D\). The familiar coefficient \(\nu\) multiplying \(\partial_x^2S\) is \(\nu=\mathfrak D/2\) in the paper's convention.

On the space of independent charge combinations with nonzero susceptibility, we may invert \(C\) and write

\[
\boxed{\mathfrak D=\mathfrak L C^{-1}.}
\]

The inverse belongs on the right. Redundant charges or charge combinations with zero fluctuation make \(C\) singular, so they must be removed or treated separately. Infinitely many charges additionally require care with the inverse as an operator.

We have completed the general part of the calculation: static fluctuations give \(C\), residual current correlations give \(\mathfrak L\), and their combination determines diffusion in the chosen PT framework. Before introducing quasiparticles, §2.5 checks a special consequence of this relation.

## 6. Section 2.5 — when the current is itself a conserved density

Suppose a model has the exact local identity

\[
j_0(x,t)=q_1(x,t). \tag{2.36}
\]

The current of charge zero is the density of another conserved charge. Its spatial integral is therefore conserved:

\[
J_0(t)=\int dx\,j_0(x,t)=Q_1.
\]

This is more information than conservation of \(Q_0\) alone. It occurs, for example, when mass current equals momentum density in a Galilean system or energy current equals momentum density in a relativistic system. Particle-number current needs the appropriate mass factor. The paper also gives the XXZ energy current as an example from an integrable conserved-charge tower.

Keeping the order of the insertions, we find

\[
K_{0j}(s)=\int dx\,\langle q_1(x,s)j_j(0,0)\rangle^{\rm c}
=\langle Q_1j_j(0,0)\rangle^{\rm c}=:k_j.
\]

Since \(Q_1\) is conserved, this expression has no time dependence. The definitions of the transport coefficients then immediately give

\[
D_{0j}=\lim_{T\to\infty}\frac{2Tk_j}{2T}=k_j,
\qquad
\mathfrak L_{0j}=\lim_{T\to\infty}\int_{-T}^{T}ds\,[k_j-k_j]=0.
\]

The whole integrated correlation belongs to persistent transport. After subtracting the Drude contribution, nothing remains for the Onsager coefficient. This corrects the possible confusion that both coefficients should vanish: \(D_{0j}\) can be nonzero.

Equation (2.35) now gives \(0=\mathfrak D_0{}^kC_{kj}\). On an invertible susceptibility sector,

\[
\boxed{\mathfrak D_0{}^i=0\quad\text{for every }i.} \tag{2.37}
\]

This zero row removes all first-gradient terms in that current. It does not freeze the density profile, because its continuity equation is still \(\partial_t\bar q_0+\partial_x\bar q_1=0\). The dynamics of \(q_1\) can involve other fields and dissipative terms, so coupled modes can still damp. Also, symmetry of \(\mathfrak L\) makes its row and column zero, but multiplying by \(C^{-1}\) can mix columns; a zero row of \(\mathfrak D\) need not be a zero column.

The printed Eq. (2.38) uses \(q_0\) in the substitution where Eq. (2.36) requires \(q_1\). We treat this as an apparent index typo, not an author-confirmed erratum.

At the end of §2, our remaining task is concrete: calculate the equilibrium current correlations and susceptibilities of an interacting integrable model. Section 3 changes to variables suited to that calculation.

## 7. Section 3.1 — describe the stationary background with quasiparticles

### Why the state comes before the correlation calculation

Section 3 introduces the microscopic current correlation

\[
\Gamma_{ij}(x,t)=\langle j_i(x,t)j_j(0,0)\rangle^{\rm c}. \tag{3.1}
\]

Its spatial integral is our \(K_{ij}(t)\), which enters the Drude and Onsager formulas. To calculate it, we must specify the stationary state in which the expectation is taken. The Bethe Ansatz provides a useful description in terms of quasiparticles.

The sequence within §3 is purposeful. Section 3.1 describes a uniform state, §3.2 allows that state to vary slowly and gives Euler GHD, §3.3 supplies excitations and form factors for correlations, and §3.4 checks the method against known Euler transport. We have begun only the first of these steps.

### Replace individual roots with a smooth density

For its initial presentation, the paper takes a ring of length \(L\), one quasiparticle type with real rapidities, and a bare momentum satisfying \(p'(\theta)>0\). An eigenstate is specified by Bethe roots \(\{\theta_a\}\). In the thermodynamic limit, the useful information is their distribution rather than the position of each individual root.

Define the occupied density by counting roots in a small rapidity bin:

\[
\#\{\theta_a\in[\theta,\theta+d\theta]\}
\simeq L\rho_{\rm p}(\theta)d\theta.
\]

The bin is small compared with the scale on which the smooth distribution varies but contains many roots as \(L\) grows. Thus \(\rho_{\rm p}\) counts quasiparticles per physical length and per rapidity, and \(\int d\theta\,\rho_{\rm p}=N/L\). It is not a probability density normalized to one.

Many microscopic Bethe eigenstates can approach the same smooth \(\rho_{\rm p}(\theta)\) as \(L\) grows, even though their individual roots differ. Their shared large-system description is called a **macrostate**. Think of a rapidity histogram: different lists of roots can give the same smooth histogram once we stop resolving each root. The histogram describes populations of quasiparticles, not the complete quantum state. The paper describes a macrostate as averaging over a small shell of microscopic states with this distribution; its notation \(|\rho_{\rm p}\rangle\) does not uniquely specify one finite-size eigenvector.

A **local observable** acts within a fixed finite spatial region while the total system size grows—for example, a spin on one site or a product of spins within a fixed block. Its expectation is the mean measurement outcome, not necessarily one measurement result. Under the representative-state assumption discussed in §3.1, footnote 4, a suitably representative sequence of Bethe eigenstates approaching the macrostate gives the same limiting local expectations as the shell average. This is an assumption about representative states of that macrostate, not a claim about an arbitrary eigenstate or a universal eigenstate-thermalisation principle.

**“Local expectation” does not mean an expectation in a new local eigenstate.** “Local” describes the support of the operator, not the eigenstate used in the calculation. For a finite spin chain, split the Hilbert space into a fixed region \(R\) and its complement \(\bar R\): \(\mathcal H=\mathcal H_R\otimes\mathcal H_{\bar R}\). The normalized Bethe eigenstate \(|\psi_L\rangle\) remains a state of the **whole system**, satisfying \(H_L|\psi_L\rangle=E_L|\psi_L\rangle\). If \(o_R\) acts only in \(R\), its full-system operator is \(o_R\otimes I_{\bar R}\), and

\[
\langle o_R\rangle_{\psi_L}
=\langle\psi_L|(o_R\otimes I_{\bar R})|\psi_L\rangle
=\operatorname{Tr}_R(\rho_R o_R),
\qquad
\rho_R=\operatorname{Tr}_{\bar R}|\psi_L\rangle\langle\psi_L|.
\]

The partial trace discards information accessible only through the rest of the system; it does not select a local eigenvector. The reduced density matrix \(\rho_R\) gives every expectation measurable inside \(R\). It is generally mixed because the global state can be entangled across the boundary. Only in the special case of a product state across this split does the reduced state have a single pure-state vector. Even then, that vector need not be an eigenstate of a Hamiltonian restricted to \(R\): being an eigenstate of the full Hamiltonian does not generally make a subsystem an energy eigenstate, especially when boundary interactions couple it to the rest.

The sandwich \(\langle\psi_L|o|\psi_L\rangle\) is an **expectation value**, or diagonal matrix element of \(o\), not an overlap between two local eigenstates. A bare overlap \(\langle\phi|\psi\rangle\) compares two vectors with no operator insertion. One can formally view the sandwich as the inner product of \(|\psi_L\rangle\) with \(o|\psi_L\rangle\), but both vectors belong to the full-system Hilbert space; the second need not be normalized or an eigenstate.

#### Which density matrix is being decomposed, and can the whole state factorize?

The form “a weighted sum of pure-state projectors” is correct, but the vectors must belong to the Hilbert space on which that density matrix acts. There are two different decompositions here.

For the **global GGE**, take a finite-volume regulator and mutually commuting conserved charges, including the Hamiltonian. In a complete common Bethe eigenbasis,

\[
\rho_{{\rm GGE},L}=\sum_n w_n|n_L\rangle\langle n_L|,
\qquad
Q_k|n_L\rangle=q_{k,n}|n_L\rangle,
\qquad
w_n=Z_L^{-1}e^{-\sum_k\beta_k q_{k,n}}.
\]

Here \(|n_L\rangle\in\mathcal H_R\otimes\mathcal H_{\bar R}\) is a **whole-system eigenstate**, specified by its Bethe rapidities (and any additional labels needed). Thus the interpretation “eigenstates corresponding to sets of rapidities” applies to this global decomposition. A general density matrix need not be diagonal in the energy/charge basis; this choice is justified here by the commuting-charge GGE.

For the **reduced density matrix**, its spectral decomposition instead reads

\[
\rho_R=\sum_a p_a|a_R\rangle\langle a_R|,
\qquad
\rho_R|a_R\rangle=p_a|a_R\rangle,
\qquad
\langle o_R\rangle=\sum_a p_a\langle a_R|o_R|a_R\rangle.
\]

The vectors \(|a_R\rangle\in\mathcal H_R\) are eigenvectors of **\(\rho_R\)**, not generally of a Hamiltonian restricted to \(R\), and need not be Bethe eigenstates with local rapidities. Pure-state ensemble decompositions are generally nonunique and can use nonorthogonal vectors; the spectral choice uses orthonormal density-matrix eigenvectors and fixes the eigenvalues, with basis freedom inside degenerate eigenspaces.

Taking the partial trace of the global GGE gives the exact relation

\[
\rho_R=\sum_n w_n\operatorname{Tr}_{\bar R}
\bigl(|n_L\rangle\langle n_L|\bigr).
\]

Each reduced projector is generally a **mixed** density matrix because the corresponding global eigenstate can be entangled. We cannot simply use the global ket \(|n_L\rangle\) as a vector in \(\mathcal H_R\). These are finite-system quantum-mechanical identities; matching local expectations to a thermodynamic macrostate is a separate assumption below.

**Can we reconstruct the global state as \(\rho_R\otimes\rho_{\bar R}\)? Generally, no.** Here \(\rho_R=\operatorname{Tr}_{\bar R}\rho\) and \(\rho_{\bar R}=\operatorname{Tr}_R\rho\). Equality

\[
\rho=\rho_R\otimes\rho_{\bar R}
\]

means that there are no correlations across this split: for every pair of subsystem observables, \(\langle A_R\otimes B_{\bar R}\rangle=\langle A_R\rangle\langle B_{\bar R}\rangle\). It is stronger than **separability**, which allows a mixture of product states with classically correlated choices. A pure global state factorizes if and only if it has no entanglement across this boundary; a mixed separable state can still fail to factorize.

For example, split a Bell pair into its two qubits:

\[
|\Phi^+\rangle=\frac{|00\rangle+|11\rangle}{\sqrt2},
\qquad
\rho_R=\rho_{\bar R}=\frac{I_2}{2},
\qquad
\rho_R\otimes\rho_{\bar R}=\frac{I_4}{4}
\ne |\Phi^+\rangle\langle\Phi^+|.
\]

The original state has \(\langle\sigma_z\otimes\sigma_z\rangle=1\), whereas the product of its marginals has zero. Partial tracing preserves all measurements within either subsystem but loses joint information. Even the separable mixture \(\tfrac12|00\rangle\langle00|+\tfrac12|11\rangle\langle11|\) has these same marginals and nonzero classical correlations, so absence of entanglement alone is insufficient for a mixed state.

Interactions across the boundary and correlated equilibrium GGEs generally obstruct factorization, although special product states exist. **Homogeneous** means translation invariant, not independent sites. Likewise, the local thermodynamic ensemble equivalence in Eqs. (3.12)–(3.13) does not assert a global tensor-product state.

A **homogeneous GGE** is a position-independent equilibrium ensemble: its thermodynamic parameters and mean local properties do not vary with position. Choose its parameters so that its thermodynamic quasiparticle distribution matches the same \(\rho_{\rm p}(\theta)\). Under the generalized-ensemble equivalence assumed in §3.1, this GGE and the macrostate have the same local expectations. Combining this with the representative-state assumption gives, for a normalized representative state \(|\psi_L\rangle\) and any fixed local operator \(o\),

\[
\lim_{L\to\infty}\langle\psi_L|o|\psi_L\rangle
=\lim_{L\to\infty}\operatorname{Tr}(\rho_{{\rm GGE},L}o),
\qquad
\rho_{{\rm GGE},L}=Z_L^{-1}e^{-\sum_i\beta_iQ_i}.
\]

Here the large-system limit keeps particle density fixed. These are the **thermodynamic expectations**: expectation values after taking that limit. Equation (3.13) states the macrostate–GGE comparison; the arrow in Eq. (3.12) abbreviates this local equivalence, not equality of global density matrices.

For this homogeneous stationary GGE, each \(\beta_i\) is a fixed number, independent of \(x\) and \(t\), while \(Q_i=\int_0^L dx\,q_i(x)\) is a global operator on the entire system. Homogeneity follows from translation-invariant charges; stationarity follows from \([H_L,Q_i]=0\), which implies \([H_L,\rho_{{\rm GGE},L}]=0\). The parameters do not become functions \(\beta_i(x,t)\) until we introduce the separate local-equilibrium description of an inhomogeneous state.

For a fixed finite region \(R\) of a spin chain, write the observable as \(o=o_R\otimes I_{\bar R}\). The GGE expectation obeys the exact finite-size identity

\[
\operatorname{Tr}_{R\bar R}\!\left[
\rho_{{\rm GGE},L}(o_R\otimes I_{\bar R})\right]
=\operatorname{Tr}_R\!\left[\rho^{\rm GGE}_{R,L}o_R\right],
\qquad
\rho^{\rm GGE}_{R,L}
=\operatorname{Tr}_{\bar R}\rho_{{\rm GGE},L}.
\]

Define likewise \(\rho^\psi_{R,L}=\operatorname{Tr}_{\bar R}|\psi_L\rangle\langle\psi_L|\). The ensemble-equivalence statement therefore says

\[
\lim_{L\to\infty}
\operatorname{Tr}_R\!\left[
(\rho^\psi_{R,L}-\rho^{\rm GGE}_{R,L})o_R\right]=0
\]

for every observable supported in each fixed finite \(R\), under the representative-state and ensemble-equivalence assumptions. The partial-trace identity is exact for every \(L\); agreement between the two reduced states is the thermodynamic claim. Agreement for one observable alone would not identify a reduced state, whereas agreement for all operators on a finite-dimensional region identifies its limiting reduced density matrix when that limit exists.

A pure whole-system state can have a mixed description in a small region because that region is entangled with the rest. Thus matching all local expectations means matching the reduced descriptions seen in each fixed finite region in the thermodynamic limit; it does **not** mean \(|\psi_L\rangle\langle\psi_L|=\rho_{{\rm GGE},L}\). An intuitive analogy is one detailed arrangement versus a statistical collection of arrangements that gives the same results for small-window measurements: agreement through those windows does not make the whole objects identical. This is not an exact finite-size identification. It is also distinct from §3.2's additional Euler-scale approximation of an inhomogeneous evolving state by a local GGE.

Quasiparticle variables help because one distribution organizes the populations carrying the different conserved charges. We will later use their one-particle charge values \(h_i(\theta)\) to obtain explicit charge and current formulas.

### Distinguish occupied modes from available modes

The Bethe counting description uses three densities: \(\rho_{\rm p}\) counts occupied modes, \(\rho_{\rm s}\) counts available modes, and \(\rho_{\rm h}=\rho_{\rm s}-\rho_{\rm p}\) counts holes. Their ratio is the filling function,

\[
\boxed{n(\theta)=\frac{\rho_{\rm p}(\theta)}{\rho_{\rm s}(\theta)}.} \tag{3.6}
\]

For fermionic Bethe occupation, \(0\leq n\leq1\). Here “fermionic” describes occupation of the Bethe modes; it does not require the original physical particles to be fermions. More general statistics enter later, so this literal hole-counting interpretation should not be imposed unchanged on every model.

For example, a bin with 100 available modes and 30 occupied modes has filling \(0.3\) and 70 holes. The interacting feature is that the number of available modes in a bin itself depends on the occupied background. We must determine that number along with the occupation.

### Scattering changes the counting of available modes

The model supplies a bare momentum \(p(\theta)\) and a two-body scattering amplitude \(S(\theta,\alpha)\). The derivative of its phase is the kernel

\[
T(\theta,\alpha)=\frac1{2\pi i}\partial_\theta\log S(\theta,\alpha). \tag{3.3}
\]

This \(S\) is a scattering amplitude, not the density correlation \(S_{ij}\). This \(T\) is an integral kernel, not the antiunitary PT operator. The paper initially assumes its symmetry, \(T(\theta,\alpha)=T(\alpha,\theta)\), Eq. (3.5).

Without scattering, quantization would read \(Lp(\theta)=2\pi I\). Differentiating the counting label \(I\) gives the available-mode density \(p'(\theta)/(2\pi)\). In the interacting Bethe equations, scattering with the occupied roots changes this counting relation. Its derivative gives

\[
\boxed{\rho_{\rm s}(\theta)=\frac{p'(\theta)}{2\pi}
+\int d\alpha\,T(\theta,\alpha)\rho_{\rm p}(\alpha).} \tag{3.4}
\]

The first term is the bare density of modes. The second term accounts for their changed quantization in the populated background. Its sign depends on the model, so scattering does not necessarily increase the mode density.

### Dressing solves the background dependence

Suppose the filling \(n(\theta)\) is our chosen description of the stationary state. We know the fraction of modes occupied at each rapidity, but we still need the number of available modes \(\rho_{\rm s}(\theta)\). Equation (3.4) determines that number from the occupied density, while Eq. (3.6) says that the occupied density is \(n\rho_{\rm s}\). Thus the unknown available density enters its own scattering correction. We call the equation self-consistent because its solution must agree with the background occupation used to calculate that correction.

Substituting \(\rho_{\rm p}=n\rho_{\rm s}\) into the counting equation makes this dependence explicit:

\[
\rho_{\rm s}(\theta)=\frac{p'(\theta)}{2\pi}
+\int d\alpha\,T(\theta,\alpha)n(\alpha)\rho_{\rm s}(\alpha). \tag{3.7}
\]

Given a filling, we can solve this integral equation for \(\rho_{\rm s}\), then recover \(\rho_{\rm p}\). Under the appropriate solvability conditions, either \(n\) or \(\rho_{\rm p}\) describes the state.

To see the algebra behind the solution, set \(f(\theta)=2\pi\rho_{\rm s}(\theta)\). Multiplying Eq. (3.7) by \(2\pi\) gives

\[
f(\theta)=p'(\theta)+\int d\alpha\,T(\theta,\alpha)n(\alpha)f(\alpha).
\]

Define \(Tn\) by its action on a function:
\((Tnf)(\theta)=\int d\alpha\,T(\theta,\alpha)n(\alpha)f(\alpha)\).
The equation is then \(f=p'+Tnf\), or \((1-Tn)f=p'\), where \(1\) is the identity operation on functions. If this operation is invertible in the state under consideration, solving gives \(f=(1-Tn)^{-1}p'\), Eq. (3.8). The inverse is the inverse of an integral operator, not the pointwise reciprocal of \(1-T(\theta,\alpha)n(\alpha)\).

The physical interpretation is that scattering phases modify the relation between rapidity and the allowed Bethe quantum numbers, so they change the density of available modes relative to the bare value \(p'/(2\pi)\). Each occupied background mode contributes to this correction, which is why the integrand contains \(\rho_{\rm p}=n\rho_{\rm s}\). This is a counting relation for a stationary interacting state; it does not describe particles dynamically moving between free modes.

The inverse in Eq. (3.8) is an integral-operator inverse. It is different from the **inverse scattering method**, which reconstructs an integrable field or potential from scattering data. Here the kernel \(T\) and filling \(n\) are already specified, and we solve a linear integral equation for \(f\). A possible numerical method is fixed-point iteration,

\[
f^{(m+1)}=p'+Tn f^{(m)}.
\]

Starting with \(f^{(0)}=p'\) produces successive partial sums of \(p'+Tnp'+(Tn)^2p'+\cdots\). This iteration requires a convergence condition, such as the operator norm of \(Tn\) being less than one in a suitable function space. The integral equation can be invertible even when this simple iteration fails to converge; discretizing it and solving the resulting linear system is another option.

The paper uses this same equation structure to define the **dressing** of a function \(h\):

\[
\boxed{h^{\rm dr}(\theta)=h(\theta)
+\int d\alpha\,T(\theta,\alpha)n(\alpha)h^{\rm dr}(\alpha).}
\]

Dressing modifies a bare quantity through its dependence on the occupied background. In operator notation,

\[
h^{\rm dr}=(1-Tn)^{-1}h, \tag{3.9}
\]
\[
\qquad 2\pi\rho_{\rm s}=(p')^{\rm dr}. \tag{from 3.8}
\]

The order in \(Tn\) matters: \(n\) multiplies the integrated variable before the kernel acts,

\[
(Tnh)(\theta)=\int d\alpha\,T(\theta,\alpha)n(\alpha)h(\alpha).
\]

By contrast, \((nTh)(\theta)=n(\theta)\int d\alpha\,T(\theta,\alpha)h(\alpha)\). These operations generally differ. The inverse notation means solving the integral equation; a formal series \(h+Tnh+(Tn)^2h+\cdots\) illustrates repeated feedback but is not a convergence claim for every state.

When \(T=0\), dressing disappears: \(h^{\rm dr}=h\), and \(\rho_{\rm s}=p'/(2\pi)\) no longer depends on the filling. In an interacting model, changing \(n\) changes the background entering the integral equation and can change the available-mode density.

This completes the first part of our microscopic description. We can specify a stationary background by a rapidity distribution or filling and calculate its dressed quantities. Dressing already affects Euler propagation; it does not, by itself, provide the diffusion term. The next part of §3.1 will connect these state variables to thermodynamic sources, statistics, and charge/current data. Later, particle–hole correlations will supply the remaining information for \(\mathfrak L\).

### Pseudoenergy describes how strongly a mode is occupied

The dressing equation takes the filling \(n(\theta)\) as known. Our next question is how that filling is related to the GGE sources \(\beta_i\). The first step is to introduce a variable for the statistical preference between an occupied mode and a hole. For fermionic Bethe occupation, the paper uses the dimensionless pseudoenergy \(\epsilon(\theta)\) through

\[
n(\theta)=\frac{1}{1+e^{\epsilon(\theta)}},
\qquad
\epsilon(\theta)=\log\frac{1-n(\theta)}{n(\theta)}
=\log\frac{\rho_{\rm h}(\theta)}{\rho_{\rm p}(\theta)}.
\]

The ratio formula assumes \(0\lt n\lt 1\); completely empty or full modes are its infinite-pseudoenergy limits. A positive pseudoenergy means holes outnumber occupied modes, while a negative pseudoenergy means occupied modes outnumber holes. Thus \(\epsilon=0\) corresponds to \(n=1/2\), and increasing \(\epsilon\) suppresses occupation.

This relation follows from the statistics function immediately preceding Eq. (3.10). The paper calls that function \(F(\epsilon)\); here we write \(\mathcal F(\epsilon)\) to distinguish it from the current equation of state \(F_i(\bar q)\). For fermionic modes,

\[
\mathcal F(\epsilon)=-\log(1+e^{-\epsilon}),
\qquad
n=\frac{d\mathcal F}{d\epsilon}
=\frac{1}{1+e^\epsilon}.
\]

The exponential has a dimensionless argument. Consequently pseudoenergy is not generally the microscopic energy \(E(\theta)\) of a quasiparticle. In a free ordinary grand-canonical ensemble, it reduces to \(\beta[E(\theta)-\mu]\). An interacting GGE must determine it from its thermodynamic sources and the background through a further equation.

We have therefore reparametrized the filling, not yet calculated it from the sources. The sequence is: determine \(\epsilon\) from GGE thermodynamics, obtain \(n\) from the occupation formula, and then use \(n\) in the dressing equation. The thermodynamic equation for \(\epsilon\), Eq. (3.14), is the next step to study. The fermionic filling formula by itself does not assert that all Bethe modes are independent in the interacting state.

### The GGE sources determine the pseudoenergy through the TBA equation

We now know how to obtain a filling from a pseudoenergy, but the GGE initially supplies the sources \(\beta_i\). To connect them, let \(h_i(\theta)\) be the value of conserved charge \(Q_i\) carried by one quasiparticle of rapidity \(\theta\). The source contribution of that quasiparticle to the GGE exponent is

\[
d(\theta)=\sum_i\beta_i h_i(\theta).
\]

For additive Bethe charges, an eigenstate with roots \(\{\theta_a\}\) has charge eigenvalues given by sums of these one-particle values, up to any fixed reference-state constants. Its relative GGE weight is therefore \(\exp[-\sum_a d(\theta_a)]\). This explains why \(d\) is the bare thermodynamic driving term. In an ordinary grand-canonical ensemble it is \(\beta[E(\theta)-\mu]\) for particles carrying unit particle number.

The paper states that the pseudoenergy is determined by

\[
\epsilon(\theta)=d(\theta)+
\int d\alpha\,T(\theta,\alpha)\mathcal F(\epsilon(\alpha)). \tag{3.14}
\]

For fermionic Bethe occupation, \(\mathcal F(\epsilon)=-\log(1+e^{-\epsilon})\), so this becomes

\[
\boxed{\epsilon(\theta)=d(\theta)-
\int d\alpha\,T(\theta,\alpha)
\log(1+e^{-\epsilon(\alpha)}) .}
\]

The first term comes directly from the GGE sources. The integral accounts for the effect of scattering on the thermodynamic mode counting. Occupied roots change the available modes through Eq. (3.4), so the entropy of a distribution and the equilibrium filling cannot be obtained by filling an unchanged free-mode list. The correction depends on the occupations of the surrounding rapidities through their pseudoenergies. The sign of its effect depends on the scattering kernel.

This interpretation identifies the job of each term; it is not yet a derivation of Eq. (3.14). That derivation requires maximizing entropy subject to the GGE charge constraints, while imposing the Bethe mode-counting relation. We have not worked through that variational calculation here.

For \(T=0\), the equation reduces to \(\epsilon=d\), and hence \(n=1/(1+e^d)\). With scattering, \(\epsilon\) occurs inside the logarithm on the right, so determining it is a nonlinear integral problem. This differs from dressing, which is a linear equation once \(n\) is fixed. In particular, Eq. (3.14) does not say that \(\epsilon=d^{\rm dr}\).

The state construction is now explicit: specify the sources or a well-defined driving function \(d\), solve the TBA equation for \(\epsilon\), obtain the filling \(n\), and use it to solve the mode-density and dressing equations. The paper emphasizes that the infinite source sum is formal unless its charges and convergence are specified; the driving function \(d(\theta)\) can be taken as the more direct state input.

### Recover the hydrodynamic densities by counting quasiparticle charges

The TBA equation determines the filling, and the mode-counting equation then gives \(\rho_{\rm p}=n\rho_{\rm s}\). We can now return to the original hydrodynamic question: what mean conserved densities does this stationary state have?

An occupied quasiparticle with rapidity \(\theta\) carries the charge value \(h_i(\theta)\). A rapidity bin contains approximately \(L\rho_{\rm p}(\theta)d\theta\) such particles, so its contribution to charge per length is \(h_i(\theta)\rho_{\rm p}(\theta)d\theta\). Summing all bins gives the paper's formula

\[
\boxed{\bar q_i=\int d\theta\,h_i(\theta)\rho_{\rm p}(\theta).} \tag{3.16}
\]

We can also obtain this directly from an additive finite-size Bethe charge:

\[
Q_i|\psi_L\rangle=
\left[\sum_{a=1}^N h_i(\theta_a)\right]|\psi_L\rangle,
\qquad
\lim_{L\to\infty}\frac1L\sum_{a=1}^N h_i(\theta_a)
=\int d\theta\,h_i(\theta)\rho_{\rm p}(\theta).
\]

We use the paper's charge normalization; any reference-state density must be included separately if a model retains one. Homogeneity identifies the total-charge expectation per length with the local density mean. The representative-state and ensemble-equivalence assumptions then allow the same thermodynamic value to be used in the corresponding GGE. The paper introduces Eq. (3.16) by differentiating its thermodynamic free energy; charge counting gives a direct explanation of the resulting formula without performing that separate derivation.

For particle number, \(h_N(\theta)=1\), hence \(\bar q_N=\int d\theta\,\rho_{\rm p}\). For energy and momentum, the corresponding weights are the one-particle eigenvalues \(E(\theta)\) and \(p(\theta)\). A single root distribution therefore specifies many different conserved densities through different weights.

The integrand uses \(h_i\), not \(h_i^{\rm dr}\). This formula counts the additive microscopic charge carried by the occupied roots. The interacting thermodynamic background already enters through the state-dependent distribution \(\rho_{\rm p}\); no replacement by dressed charge is needed for this counting formula. Dressing will also enter other quantities, such as responses and propagation.

Equation (3.16) is evaluated in one homogeneous stationary GGE. Homogeneity makes \(\langle q_i(x,t)\rangle\) independent of \(x\), while stationarity makes it independent of \(t\). Consequently the right-hand side is a constant for that chosen state. These are two distinct properties: spatial uniformity alone would not make a general state stationary. The local operator \(q_i(x,t)\) still has position and Heisenberg-time dependence; only its one-point expectation is constant. Different stationary GGEs can have different values of this constant because their root distributions differ.

Our state construction has now reached the hydrodynamic density:
\(\beta_i\to d\to\epsilon\to n\to\rho_{\rm p}\to\bar q_i\).
The next question is how the same occupied quasiparticles determine a current, which requires their effective velocities.

### A current counts the charge crossing a point

The density formula counts the charge present per physical length. To obtain a current, we need the charge crossing a spatial point per unit time. The paper gives

\[
\boxed{\bar j_i=\int d\theta\,
\rho_{\rm p}(\theta)v^{\rm eff}(\theta)h_i(\theta).} \tag{3.18}
\]

For quasiparticles in a small rapidity interval, \(\rho_{\rm p}(\theta)d\theta\) is their number per length. Multiplying it by their effective velocity gives the signed number crossing a point per time, and multiplying by \(h_i(\theta)\) gives the charge they carry across that point. Right-moving and left-moving quasiparticles make contributions with opposite velocity signs.

This is the physical interpretation of the current formula, not a microscopic proof for a generic quantum model. The paper cites established results and gives an alternative derivation in Appendix D. The simple transport picture helps explain the factors in a result that still requires that derivation.

The effective velocity is the propagation velocity in the occupied background. In an interacting integrable system, scattering changes quasiparticle trajectories, and the surrounding distribution affects this velocity. It need not equal the bare group velocity \(v^{\rm bare}(\theta)=dE/dp=E'(\theta)/p'(\theta)\). We have not yet solved for \(v^{\rm eff}\); Eqs. (3.19)–(3.20) supply the next step. This state-dependent velocity already describes Euler transport and should not be identified with the diffusion coefficient.

To understand the bare group velocity, first consider a narrow packet built from momentum eigenstates near \(p_0\):

\[
\psi(x,t)=\int dp\,a(p)e^{i[px-E(p)t]/\hbar}.
\]

Expand the dispersion to first order, \(E(p)\simeq E(p_0)+E_p'(p_0)(p-p_0)\). The packet envelope then depends on \(x-E_p'(p_0)t\), so its centre moves at \(dE/dp\). This is the group velocity; it describes motion of the envelope rather than the phase velocity \(E/p\) of an individual plane wave. Higher dispersion derivatives can deform or spread the packet even in a free model; such dispersive spreading is not automatically hydrodynamic diffusion.

In Bethe notation, momentum and energy are parametrized by rapidity: \(p=p(\theta)\), \(E=E(\theta)\). The chain rule gives \(dE/dp=E'(\theta)/p'(\theta)\), where the primes now denote rapidity derivatives. For a nonrelativistic particle with \(E=p^2/(2m)\), this is \(p/m\). The word “bare” means that we use the model's one-quasiparticle dispersion before including the trajectory shifts from scattering with an occupied background. It does not mean that the full interacting Hamiltonian has been replaced by a free Hamiltonian. The same bare dispersion can therefore coexist with state-dependent effective propagation velocities.

For particle number, \(h_N=1\), Eq. (3.18) becomes \(\bar j_N=\int d\theta\,\rho_{\rm p}v^{\rm eff}\). For energy, the weight is \(E(\theta)\). As a simple illustration, equal number densities \(a\) moving at velocities \(+v\) and \(-v\) give number density \(2a\) and number current \(av-av=0\). The density can be nonzero while the signed current cancels.

We are still evaluating a homogeneous stationary GGE. Its current mean, like its density mean, is independent of \(x\) and \(t\). It can nevertheless be nonzero: continuity requires \(\partial_x\bar j_i=0\) when the density is stationary, not \(\bar j_i=0\). A constant flow transports charge through the region without changing its mean density.

Together, Eqs. (3.16) and (3.18) describe the same state in terms of its density vector and current vector. Where densities locally parametrize the stationary-state family, these quasiparticle formulas determine the equation of state \(F_i(\bar q)\) introduced in §2.1. We have thus supplied a concrete meaning for that earlier function. Its evaluation still requires the effective velocity, which we will calculate next.

### Effective velocity includes scattering with the occupied background

The bare group velocity follows the one-particle dispersion. In a populated interacting state, a quasiparticle also encounters other quasiparticles. The scattering phases produce shifts of its trajectory, so its mean propagation velocity depends on that background. The paper expresses this dependence as

\[
\boxed{
v^{\rm eff}(\theta)=v^{\rm bare}(\theta)
-\int d\alpha\,\frac{T(\theta,\alpha)}{p'(\theta)}
\rho_{\rm p}(\alpha)
\big[v^{\rm eff}(\theta)-v^{\rm eff}(\alpha)\big].
} \tag{3.19, as printed}
\]

The occupied density \(\rho_{\rm p}(\alpha)\) supplies the number of background quasiparticles in a rapidity interval. The difference of effective velocities describes their relative motion: faster quasiparticles overtake slower ones. The scattering kernel weights how those encounters shift trajectories. The signed difference and scattering convention together determine the correction; scattering need not always reduce the speed. There is an apparent normalization discrepancy in the printed equation: with \(T\) defined by Eq. (3.3), the scattering term requires a factor \(2\pi\) to agree with Eqs. (3.8)–(3.9), (3.20). The calculation below explains this correction; it is not an author-confirmed erratum.

If the two effective velocities agree, that rapidity interval contributes zero to this correction. There is no relative motion between those trajectories. If the scattering kernel is zero, or the background is empty, the entire correction vanishes and \(v^{\rm eff}=v^{\rm bare}\).

We use this as a physical interpretation of the paper's equation, not a full microscopic derivation. The equation couples the unknown velocity at \(\theta\) to the unknown velocities of all populated rapidities. At fixed \(\rho_{\rm p}\), it is a linear integral equation for \(v^{\rm eff}\); unlike the pseudoenergy equation, it does not contain a nonlinear function of the unknown.

This effective velocity is a mean propagation velocity in a fixed stationary state, so the correction already belongs to Euler hydrodynamics. Calculating additional fluctuation-induced diffusive spreading remains a later task. The next step will express this same velocity using the dressing operation, as in Eq. (3.20).

### From the scattering amplitude to a spatial trajectory shift

For the scalar elastic scattering considered here, write the two-body amplitude for real rapidities as \(S(\theta,\alpha)=e^{i\phi(\theta,\alpha)}\), where \(\phi\) is the scattering phase. This amplitude is not a scattering probability: its phase affects the outgoing wave packet even when its modulus is one and the asymptotic rapidities are preserved. Equation (3.3) gives

\[
T(\theta,\alpha)=\frac{1}{2\pi}\partial_\theta\phi(\theta,\alpha).
\]

We can see what this derivative means from a narrow packet, using \(\hbar=1\). A packet is a superposition of nearby momenta, not a single plane wave:

\[
\psi(x,t)=\int dp\,a(p)e^{i\Phi(p;x,t)},
\qquad
\Phi(p;x,t)=px-E(p)t+\phi(p,\alpha).
\]

Assume that \(a(p)\) is concentrated near \(p_0\), with a simple initially centred envelope and no additional rapidly varying phase in \(a\). Each momentum component contributes a complex amplitude at the chosen point \(x,t\). If their phases vary rapidly across the occupied momentum range, their contributions point in different directions in the complex plane and largely cancel. If their phases change little across that range, their contributions reinforce one another and the packet amplitude is large.

For two nearby components, the phase difference is

\[
\Phi(p+\delta p;x,t)-\Phi(p;x,t)
\simeq \partial_p\Phi(p;x,t)\,\delta p.
\]

The condition \(\partial_p\Phi=0\) eliminates the first-order phase difference. “Stationary” here means stationary as a function of the integration variable \(p\), not a particle at rest or a phase constant in time. In a narrow packet, this condition identifies its leading envelope trajectory when it holds near the central momentum.

We can make the envelope explicit by writing \(p=p_0+q\), expanding \(E\) and \(\phi\) to first order, and fixing the partner rapidity \(\alpha\):

\[
\psi(x,t)\simeq e^{i\Phi(p_0;x,t)}
\int dq\,a(p_0+q)e^{iqX},
\qquad
X=x-v^{\rm bare}(p_0)t+\partial_p\phi(p_0,\alpha).
\]

The integral is the Fourier transform of the momentum envelope, evaluated at \(X\). For an initially centred Gaussian amplitude \(a(p_0+q)\propto e^{-q^2/(4\sigma_p^2)}\), it is proportional to \(e^{-\sigma_p^2X^2}\). Its magnitude is largest at \(X=0\), giving the same condition as stationary phase. At sufficiently large \(|X|\), the momentum components cancel strongly. Higher derivatives can change the packet's shape; the first-order calculation identifies its leading displacement. An initial momentum-dependent phase would also contribute its derivative and locate the initial centre.

In the convention where the outgoing packet gains \(e^{i\phi}\), the stationary-phase condition at fixed \(\alpha\) is therefore

\[
x-\frac{dE}{dp}t+\frac{\partial\phi}{\partial p}=0.
\]

Relative to the unshifted trajectory, the packet centre therefore acquires the spatial shift

\[
\Delta x_{\theta|\alpha}
=-\frac{\partial\phi}{\partial p}
=-\frac{\partial_\theta\phi(\theta,\alpha)}{p'(\theta)}
=-\frac{2\pi T(\theta,\alpha)}{p'(\theta)}.
\]

This is the shift in the stated scattering-channel convention. Reversing the ordering of the crossing corresponds to the inverse scattering factor and reverses this phase contribution. The ratio of derivatives converts a phase change with rapidity into a spatial displacement. Thus the normalization-consistent scattering length in the velocity equation is \(2\pi T/p'\), not \(T/p'\) alone.

The same phase derivative appears in the Bethe mode counting. In the convention giving Eq. (3.4), the counting equation has the form \(Lp(\theta)+\sum_b\phi(\theta,\theta_b)=2\pi I\), up to constant phase offsets and self-term effects irrelevant to the bulk thermodynamic limit. Differentiating the counting function gives

\[
\rho_{\rm s}(\theta)
=\frac{p'(\theta)}{2\pi}
+\int d\alpha\,\frac{\partial_\theta\phi(\theta,\alpha)}{2\pi}
\rho_{\rm p}(\alpha).
\]

Consequently a single microscopic scattering phase has two related effects: it changes the density of allowed Bethe modes, and its momentum derivative shifts trajectories.

To interpret the mean velocity, let \(w_{\theta\alpha}=v^{\rm eff}(\theta)-v^{\rm eff}(\alpha)\). In the trajectory picture, encounters with the \(\alpha\) population occur at rate \(\rho_{\rm p}(\alpha)d\alpha\,|w_{\theta\alpha}|\). The ordering of the crossing fixes the corresponding shift sign. Their product gives the signed contribution

\[
dv^{\rm eff}(\theta)
=-\frac{2\pi T(\theta,\alpha)}{p'(\theta)}
\rho_{\rm p}(\alpha)w_{\theta\alpha}\,d\alpha.
\]

Adding these shifts to the bare motion gives the normalization-consistent form

\[
v^{\rm eff}(\theta)=\frac{E'(\theta)}{p'(\theta)}
-\int d\alpha\,\frac{2\pi T(\theta,\alpha)}{p'(\theta)}
\rho_{\rm p}(\alpha)
[v^{\rm eff}(\theta)-v^{\rm eff}(\alpha)].
\]

This packet argument supplies a physical interpretation. An independent algebraic check comes from the dressed ratio in Eq. (3.20). Let \(P=(p')^{\rm dr}=2\pi\rho_{\rm s}\) and \(U=(E')^{\rm dr}=v^{\rm eff}P\). Their dressing equations imply

\[
P=p'+2\pi\int d\alpha\,T(\theta,\alpha)\rho_{\rm p}(\alpha),
\qquad
U=E'+2\pi\int d\alpha\,T(\theta,\alpha)\rho_{\rm p}(\alpha)v^{\rm eff}(\alpha).
\]

Substituting \(U=v^{\rm eff}P\) and rearranging yields exactly the velocity equation with \(2\pi T/p'\). The printed PDF has only \(T/p'\) in Eq. (3.19), while its definitions (3.3), (3.8), (3.9), and (3.20) give the factor above. Our earlier explanation reproduced the printed coefficient without checking this normalization; the corrected interpretation retains the source discrepancy explicitly.

### Dressing gives a compact expression for the effective velocity

The wave-packet discussion explained the microscopic meaning of the scattering correction. We now return to the calculation of the homogeneous current: we need a usable expression for the velocity in \(\bar j_i=\int d\theta\,\rho_{\rm p}v^{\rm eff}h_i\). The paper gives

\[
\boxed{v^{\rm eff}(\theta)=
\frac{(E')^{\rm dr}(\theta)}{(p')^{\rm dr}(\theta)}.} \tag{3.20}
\]

We can derive this ratio from the normalization-consistent scattering equation above. Multiply that equation by \(p'(\theta)\) and collect the terms containing \(v^{\rm eff}(\theta)\):

\[
v^{\rm eff}(\theta)
\left[p'(\theta)+2\pi\int d\alpha\,T(\theta,\alpha)\rho_{\rm p}(\alpha)\right]
=E'(\theta)+2\pi\int d\alpha\,T(\theta,\alpha)
\rho_{\rm p}(\alpha)v^{\rm eff}(\alpha).
\]

By Eqs. (3.4), (3.8), the bracket is \(2\pi\rho_{\rm s}(\theta)=(p')^{\rm dr}(\theta)\). Set \(U(\theta)=v^{\rm eff}(\theta)(p')^{\rm dr}(\theta)\) and use
\(2\pi\rho_{\rm p}=n(p')^{\rm dr}\). The equation becomes

\[
U(\theta)=E'(\theta)
+\int d\alpha\,T(\theta,\alpha)n(\alpha)U(\alpha).
\]

This is the dressing equation with bare input \(E'\). Where its solution is unique, \(U=(E')^{\rm dr}\), which yields Eq. (3.20). The scattering equation and the dressed ratio therefore describe the same mean propagation, with the apparent \(2\pi\) issue in the printed (3.19) kept explicit.

The practical prescription is to use the same filling to dress \(E'\) and \(p'\) separately and then take their ratio. It is generally not correct to dress the ratio \(E'/p'\): dressing is linear but does not preserve quotients. Also, the notation means differentiate the bare energy or momentum with respect to rapidity first, then dress that derivative. It does not automatically mean differentiating \(E^{\rm dr}\) or \(p^{\rm dr}\).

When \(T=0\), both dressing operations become identities and Eq. (3.20) reduces to \(v^{\rm bare}=E'/p'\). We have now supplied the velocity required for the current formula. Together, the TBA state construction, charge-density formula, and current formula determine the homogeneous data that will enter Euler GHD. They do not yet supply the residual current fluctuations needed to calculate diffusion.

## Supporting derivations

The main argument above is complete for the material covered so far. The following calculations explain four steps that deserved closer attention in our discussions. Each begins with its own question, so that you can revisit one proof without having to reconstruct the entire chapter.

## A. Why is the susceptibility symmetric?

We want to justify the symmetry of the susceptibility stated after Eq. (2.12). For ordered quantum correlations, translation invariance alone should not be mistaken for permission to exchange two local operators. To make the total-charge interpretation precise, we consider a homogeneous GGE built from mutually commuting charges on a periodic ring of finite length \(L\). At equal time, let
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
We assume that the thermodynamic limit exists and the spatial correlation integral is finite. A correlation tending to zero at large separation does not, by itself, guarantee a finite integral. This argument does **not** require local densities to commute, nor does it assert \(S_{ij}(x,0)=S_{ji}(x,0)\) at each separation.

For the same finite-volume GGE, \(\rho_\beta=Z^{-1}e^{-\beta_kQ_k}\), the negative source convention gives an equivalent thermodynamic check:
\[
\bar q_i=-\frac1L\partial_{\beta_i}\log Z,\qquad
C^{(L)}_{ij}=-\partial_{\beta_j}\bar q_i
=\frac1L\partial_{\beta_i}\partial_{\beta_j}\log Z.
\]
The matrix of second derivatives, called the Hessian, is symmetric when these derivatives exist and commute. For Hermitian mutually commuting charges, the covariance is also real and positive semidefinite: every real combination of charges has nonnegative variance. To invert this covariance, we restrict to independent combinations with strictly positive variance.

## B. Why does the sum rule have a triangular time weight?

We can derive the triangular weight by keeping track of the allowed time pairs. This change of variables is exact, so it does not introduce a hydrodynamic approximation. For \(t>0\), the paper writes the right-hand side of Eq. (2.13) as
\[
I_{ij}(t)=\int_0^t ds\int_0^t ds'\int dx\,
\langle j_i(x,s)j_j(0,s')\rangle^{\rm c}.
\]
Stationarity translates both time arguments by \(-s'\), keeping the product order fixed:
\[
\langle j_i(x,s)j_j(0,s')\rangle^{\rm c}
=\langle j_i(x,s-s')j_j(0,0)\rangle^{\rm c}.
\]
The spatial integral is therefore \(K_{ij}(s-s')\). Our convention is the time of the first insertion minus that of the second. The paper states this dependence immediately after Eq. (2.13); \(K\) is our abbreviation for its spatial integral.

To carry out the change of variables, set \(u=s-s'\), \(v=s'\). Then \(s=u+v\), \(s'=v\). The Jacobian is
\[
\left|\det\frac{\partial(s,s')}{\partial(u,v)}\right|
=\left|\det\begin{pmatrix}1&1\\0&1\end{pmatrix}\right|=1.
\]
The original square \(0\leq s,s'\leq t\) becomes
\[
0\leq v\leq t,\qquad 0\leq v+u\leq t,
\qquad
\max(0,-u)\leq v\leq\min(t,t-u).
\]
The interval is nonempty only for \(-t\leq u\leq t\). Its length, the measure of time pairs with fixed separation \(u\), is
\[
w_t(u)=
\begin{cases}
t+u,&-t\leq u\leq0,\\
t-u,&0\leq u\leq t,\\
0,&|u|>t.
\end{cases}
\]
Consequently, integrating over \(v\) gives
\[
\boxed{I_{ij}(t)
=\int_{-t}^{t}du\int_{\max(0,-u)}^{\min(t,t-u)}dv\,K_{ij}(u)
=\int_{-t}^{t}du\,(t-|u|)K_{ij}(u),\qquad t>0.}
\]
Geometrically, lines \(s-s'=u\) run parallel to the diagonal of the time square. At \(u=0\), the allowed \(v\)-interval has length \(t\); toward either corner it shrinks linearly, reaching zero at \(u=\pm t\). This is an interval length in \(v\), not the Euclidean diagonal length: the unit Jacobian already accounts for the area measure. The triangular kernel therefore counts how much of the square carries each time difference.

Neither stationarity nor this geometry assumes \(K_{ij}(u)=K_{ij}(-u)\), interchanges \(i,j\), or swaps the current operators. Without an independent evenness assumption, the equivalent positive-time expression is
\[
I_{ij}(t)=\int_0^t du\,(t-u)\big[K_{ij}(u)+K_{ij}(-u)\big],
\]
not automatically \(2\int_0^t du\,(t-u)K_{ij}(u)\). The same domain conversion is used below in the Appendix C.1 discussion; the endpoint-cancellation argument is a separate step.

## C. Why does the flux Jacobian obey \(AC=CA^{\mathsf T}\)?

We can derive Eq. (2.23) for the homogeneous commuting-charge GGE, using the exact identity (B.5), rather than inferring symmetry by commuting local operators.

### Differentiate the homogeneous current with respect to the sources

Recall that \(A_i{}^k=\partial F_i/\partial\bar q_k\) is the flux Jacobian, while \(C_{kj}\) is the density susceptibility. Introduce a separate **current–density susceptibility**
\[
\mathcal B_{ij}:=\int dx\,\langle j_i(x,0)q_j(0,0)\rangle^{\rm c}
=\langle j_i(0,0)Q_j\rangle^{\rm c}.
\]
The second equality uses translation invariance, with no operator exchange. The symbol \(\mathcal B\) is an explanatory name for this mixed response. We define its total-charge insertion at finite volume, then take a homogeneous thermodynamic limit in which the mixed susceptibility remains finite.

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

### Establish the symmetry of that response

Integrating (B.5) at equal time, then retaining the order of the total-charge insertion, gives
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
The connected subtraction is unchanged. This argument does not require \([Q_i,j_j]=0\), an exchange of local operators, or time-reversal symmetry. The equality of the two spatial integrals comes from (B.5) in the clustering thermodynamic state; finite-volume traces regulate the total-charge insertions before that limit.

Combining \(\mathcal B=AC\), \(\mathcal B=\mathcal B^{\mathsf T}\), and \(C=C^{\mathsf T}\) gives
\[
AC=(AC)^{\mathsf T}=C^{\mathsf T}A^{\mathsf T}=CA^{\mathsf T},
\]
which is Eq. (2.23). These steps reconstruct the identity stated by the paper; the intervening symbol \(\mathcal B\) is our explanatory notation, not a new numbered equation from the source.

### Why this proof does not settle the local-source issue

This exact uniform GGE derivative involves a commuting total charge \(Q_j\). A spatially varying source coupled to quantum local densities generally differentiates a noncommuting exponential and produces a Kubo–Mori imaginary-time averaged insertion, not automatically the ordinary ordered local correlator. Thus this derivation does not remove the separate qualification of Appendix B's local ordered-response assumption (B.3). For a uniform commuting-charge variation, the insertion commutes with the GGE exponent and the Kubo–Mori integral reduces to the covariance above.

### Interpret the symmetry in density coordinates

Eq. (2.23) does **not** say \(A=A^{\mathsf T}\). For density perturbation vectors \(u,v\) on a positive-definite susceptibility sector, the natural inverse-covariance inner product is
\[
(u,v)_{C^{-1}}=u^{\mathsf T}C^{-1}v,\qquad
C^{-1}A=A^{\mathsf T}C^{-1}.
\]
Therefore \((u,Av)_{C^{-1}}=(Au,v)_{C^{-1}}\): \(A\) is self-adjoint in the **\(C^{-1}\) metric for density perturbations**, not generally in the \(C\) metric in those same coordinates. If \(C\) has null directions, first restrict to the independent positive-definite sector.

An inner product defines how we compare the lengths and overlaps of density perturbations. Weighting by \(C^{-1}\) compensates for their different equilibrium fluctuation strengths. The equality just obtained says that \(A\) is self-adjoint for this inner product: moving \(A\) from one argument to the other does not change the result.

We can also express this as ordinary matrix symmetry. Define \(\widehat A=C^{-1/2}AC^{1/2}\). Equation (2.23) gives

\[
\widehat A^{\mathsf T}
=C^{1/2}A^{\mathsf T}C^{-1/2}
=C^{-1/2}AC^{1/2}=\widehat A.
\]

The variables \(C^{-1/2}\delta\bar q\) have unit covariance, so they place the charge fluctuations on the same scale. In a finite-dimensional independent sector, the resulting symmetric Euler generator has real eigenvalues, which are the mode velocities. With infinitely many charges, this spectral conclusion also needs appropriate operator-domain assumptions. The physical content is that \(AC\) combines current response with equilibrium fluctuation weights.

## D. Why does the density improvement preserve the Onsager matrix?

The change of local representative is \(q_i'=q_i+\partial_xo_i\), \(j_i'=j_i-\dot o_i\), Eq. (2.28). A dot means the operator's time derivative. Integrating the current change over a time interval gives
\[
\int_{t_1}^{t_2}ds\,[j_i'(x,s)-j_i(x,s)]
=-o_i(x,t_2)+o_i(x,t_1).
\]
So we have changed the assignment of local charge and its accompanying current by an **endpoint change** of the observable \(o_i\). This does not automatically prove transport invariance: we still have to show that the endpoint correlations do not change the long-time transport coefficient.

The needed intuition is that an observable can contain both a part correlated with a conserved charge and a part whose correlations decay. Only the former retains long-time memory. Its endpoint values need not be zero; they must be the **same at the two ends** so that their difference cancels.

Before proving the cancellation, we should specify what is supplied by the source. The paragraph after (2.28) asserts Onsager invariance assuming hydrodynamic projection. Appendix C.1, (C.1)–(C.2) and the following argument, sketches the boundary correction and calls it \(O(t^0)\), meaning bounded as \(t\) grows. Below we give a sufficient reconstruction of that argument, not a claim that the paper states or proves every limit assumption used here. Our correlation symbols and example are explanatory additions.

### One conserved charge: what “projection” and a “plateau” mean

We work in one homogeneous stationary GGE. Homogeneous means translation invariant; stationary means that correlations depend on the time difference, not on a common shift of both times. A **connected** correlation subtracts the product of the two means. Define an equal-time integrated overlap by
\[
(a,b)_0:=\int dx\,\langle a(x,0)b(0,0)\rangle^{\rm c}.
\]
For one conserved density \(q\), the susceptibility is
\[
C=(q,q)_0=\lim_{L\to\infty}\frac{\langle(Q-\langle Q\rangle)^2\rangle}{L},
\qquad Q=\int_0^L dx\,q(x),\qquad C>0.
\]
Thus \(C\) measures the charge fluctuation per length. “Overlap” here means covariance, not an overlap of quantum state vectors.

To extract the part of \(a\) correlated with this charge, choose
\[
\alpha=\frac{(a,q)_0}{C},\qquad
\mathcal Pa=\alpha q,\qquad a_\perp=a-\alpha q.
\]
The division by \(C\) is forced by the requirement
\[
(a_\perp,q)_0=(a,q)_0-\alpha C=0.
\]
This is **covariance projection**: choose the multiple of the charge density that removes the charge overlap of the remainder. The split is algebraically exact. The claim that the remainder's relevant correlations relax is a separate physical assumption.

For an explicit covariance example, let
\[
a=2q+r,\qquad (r,q)_0=(q,r)_0=0,
\qquad C=3,\qquad (a,q)_0=6.
\]
Then \(\alpha=6/3=2\). Suppose the remaining integrated autocorrelation obeys
\[
R(u):=\int dx\,\langle r(x,u)r(0,0)\rangle^{\rm c}
=5e^{-|u|/\tau},\qquad \tau>0.
\]
This exponential is an illustrative relaxation law, not a microscopic GHD calculation; only its large-time decay matters. Conserved-charge overlaps are time independent, so the cross terms stay zero and
\[
\int dx\,\langle a(x,u)a(0,0)\rangle^{\rm c}
=4C+R(u)=12+5e^{-|u|/\tau}\longrightarrow12.
\]
A **conserved plateau** is precisely this nonzero constant left after the relaxing contribution disappears. “Plateaux” is just its plural. The plateau belongs to the integrated correlation; it does not say that \(a\) or a local density stops moving.

In particular, spatial integration selects **zero wave number**: for the Fourier convention
\[
\widetilde S(k,u)=\int dx\,e^{-ikx}S(x,u),\qquad
\int dx\,S(x,u)=\widetilde S(0,u).
\]
The zero-wave-number charge variable is the total \(Q\), which is conserved. The local \(q(x,u)\) need not be static: continuity gives \(\partial_uq=-\partial_xj\), allowing local transport and spreading while the total is fixed. The symbol \(\mathcal Pa=\alpha q\) therefore represents the conserved contribution **for these integrated correlations**, not a claim that \(\alpha q(x,u)\) is pointwise time independent.

**Spatial clustering is not temporal relaxation.** Clustering says a connected correlation vanishes when the positions are far apart at a fixed time. Relaxation here says that, after integrating over position, its nonconserved contribution vanishes when the two times are far apart. A moving or broadening correlation profile can cluster in space while retaining a constant integrated weight. Clustering alone also does not guarantee convergence of the spatial integral.

### Several charges: explain the inverse and the quantum operator order

For several densities \(q_k\), the same zero-overlap requirement gives
\[
\mathcal Pa=(a,q_k)_0(C^{-1})_{k\ell}q_\ell,
\qquad C_{k\ell}=(q_k,q_\ell)_0.
\]
Repeated indices are summed. Before using this inverse, we keep only independent charge combinations that actually fluctuate. This is what restricting to an independent susceptibility sector means. Counting the same charge twice makes \(C\) singular; a charge combination with zero fluctuation also gives a null direction. Remove these directions, or restrict to the nondegenerate fluctuating subspace, before writing \(C^{-1}\). This is the matrix version of requiring \(C>0\) before dividing by \(C\) in the one-charge example. For infinitely many charges, existence and domain of this inverse require further care.

For quantum observables, we must also explain why the two ordered charge covariances agree. The argument uses a total conserved charge and trace cyclicity. Translation invariance turns an integrated density overlap into a total-charge overlap:
\[
(a,q)_0=\langle a(0)Q\rangle^{\rm c},\qquad
(q,a)_0=\langle Qa(0)\rangle^{\rm c}.
\]
We first regulate these identities at finite volume. For mutually commuting GGE charges, \([Q,\rho]=0\), and trace cyclicity gives
\[
\operatorname{Tr}(\rho aQ)
=\operatorname{Tr}(Q\rho a)
=\operatorname{Tr}(\rho Qa).
\]
The connected subtraction is unchanged. Thus these charge overlaps agree, even if \([a,Q]\ne0\); the covariance projection has the required symmetric charge pairings. For Hermitian observables the charge pairing also supplies the usual real covariance with the Hermitian charges.

This is **not permission for arbitrary local-operator swaps**. For generic \(A,B\), cyclicity only gives \(\operatorname{Tr}(\rho AB)=\operatorname{Tr}(B\rho A)\), not \(\operatorname{Tr}(\rho BA)\). The missing step would require moving \(B\) through \(\rho\), or another independent justification. A local density is not automatically interchangeable with its total charge in this respect. We never exchange the local current and improvement operators below.

### What the two time directions mean

The sufficient relaxation assumption used here is that, for the relevant pairs,
\[
\lim_{u\to+\infty}\int dx\,\langle a(x,u)b(0,0)\rangle^{\rm c}
=\lim_{u\to-\infty}\int dx\,\langle a(x,u)b(0,0)\rangle^{\rm c}
=(a,q_k)_0(C^{-1})_{k\ell}(q_\ell,b)_0.
\]
In the one-charge case the right side is \((a,q)_0(q,b)_0/C\). This says that only included conserved-charge contributions survive at large time separation.

This is a relaxation assumption in both time directions: the statement holds when the first insertion is much later **and** when it is much earlier than the second. The variable \(u\) is the difference of two observation times in an equilibrium correlation. No dissipative state is being run backward, and no time-reversal symmetry is assumed. The positive- and negative-time functions may differ at finite \(u\); we require only their corresponding conserved limits to agree. An equilibrium correlation can lose its nonconserved memory as \(|u|\) increases on either side without any reversal of thermodynamic relaxation.

### Apply this picture to the endpoint correction

Define the three integrated correlations in the same state, with the displayed order fixed:
\[
\begin{aligned}
F_{ij}(u)&=\int dx\,\langle o_i(x,u)j_j(0,0)\rangle^{\rm c},\\
G_{ij}(u)&=\int dx\,\langle j_i(x,u)o_j(0,0)\rangle^{\rm c},\\
H_{ij}(u)&=\int dx\,\langle o_i(x,u)o_j(0,0)\rangle^{\rm c}.
\end{aligned}
\]
Here \(F_{ij}\) is not the equation-of-state function \(F_i(\bar q)\). Let \(K_{ij}(u)=\int dx\,\langle j_i(x,u)j_j(0,0)\rangle^{\rm c}\). Stationarity makes a time derivative at the second insertion minus a derivative with respect to \(u\); for example,
\[
\int dx\,\langle j_i(x,u)\dot o_j(0,0)\rangle^{\rm c}
=-\frac{dG_{ij}}{du}.
\]
Expanding both improved currents gives the exact identity
\[
K'_{ij}-K_{ij}=-\frac{dF_{ij}}{du}+\frac{dG_{ij}}{du}
-\frac{d^2H_{ij}}{du^2}=\frac{dB_{ij}}{du},
\qquad B_{ij}:=-F_{ij}+G_{ij}-\frac{dH_{ij}}{du}.
\]
The minus sign in the last term comes from differentiating the second insertion, not from exchanging operators. Integrating yields
\[
\int_{-T}^{T}du\,[K'_{ij}-K_{ij}]=B_{ij}(T)-B_{ij}(-T).
\]
The projection assumption supplies \(F_{ij}(\pm\infty)=f_{ij}\) and \(G_{ij}(\pm\infty)=g_{ij}\). These conserved plateaux can be nonzero and need not equal each other. Each cancels against **itself at the other time endpoint**.

We still need the derivative of \(H\). To control this derivative, we apply the same relaxation assumption to the observable \(\dot o_i\), not just to \(o_i\). Its charge overlap is zero:
\[
\int dx\,\langle o_i(x,u)q_k(0,0)\rangle^{\rm c}
=\langle o_i(0,u)Q_k\rangle^{\rm c}
\quad\text{is time independent},
\qquad (\dot o_i,q_k)_0=0.
\]
To see the time independence, shift both times by \(-u\) using stationarity, and then use \(Q_k(-u)=Q_k(0)\). The same argument in its own order gives \((q_k,\dot o_i)_0=0\). Thus the projection of \(\dot o_i\) is zero. Applying relaxation to the pair \((\dot o_i,o_j)\) gives
\[
\frac{dH_{ij}}{du}
=\int dx\,\langle\dot o_i(x,u)o_j(0,0)\rangle^{\rm c}
\longrightarrow0\qquad(u\to\pm\infty).
\]
We did **not** differentiate a large-time limit of \(H\); a function approaching a constant does not by itself force its derivative to approach zero.

We can now see explicitly why the endpoint correction vanishes:
\[
\boxed{
F_{ij}(\pm\infty)=f_{ij},\quad G_{ij}(\pm\infty)=g_{ij},\quad
\frac{dH_{ij}}{du}(\pm\infty)=0
\quad\Longrightarrow\quad B_{ij}(\pm\infty)=-f_{ij}+g_{ij}.}
\]
Since the endpoint values are bounded, Eq. (2.15) gives \(D'_{ij}-D_{ij}=\lim_{T\to\infty}[B_{ij}(T)-B_{ij}(-T)]/(2T)=0\). We then subtract the same Drude matrix in Eq. (2.16), obtaining
\[
\boxed{\mathfrak L'_{ij}-\mathfrak L_{ij}
=\lim_{T\to\infty}[B_{ij}(T)-B_{ij}(-T)]=0.}
\]
The total derivative has reduced the correction to an endpoint difference. The equality of the endpoint limits is the additional input that makes this difference vanish.

### Reconnect to the diffusion matrix

\(\mathfrak L\) measures residual correlation spreading after the ballistic contribution is removed. \(\mathfrak D\) instead specifies the gradient correction to a current written in chosen local density variables. Both \(\bar q_i'=\bar q_i+\partial_x\bar o_i\) and \(\bar j_i'=\bar j_i-\partial_t\bar o_i\) change that description at first-gradient order. Therefore \(\mathfrak D\) can change without changing \(\mathfrak L\). Its change and that of the first moment \(E\) preserve the spreading combination in (2.27), with the source-convention caution already noted above. The simple relation \(\mathfrak L=\mathfrak DC\) is the paper's PT-gauge identification (2.35), not a formula to impose in every representative. Here “gauge” means choice of local charge density, not electromagnetic gauge symmetry.

### How strong are the assumptions in this proof?

The endpoint calculation requires more than the formal appearance of a total derivative. We use a homogeneous stationary GGE built from mutually commuting charges and take the thermodynamic limit before the long-time limit. The spatial integrals and the differentiations must exist, and any exchanges of these operations must be justified. We also assume the original Onsager limit is finite. Once its endpoint correction tends to zero, the improved limit exists and has the same value.

The projection must include all conserved contributions that survive in the relevant integrated correlations. The pointwise limits used here, including those for the pair \((\dot o_i,o_j)\), are sufficient assumptions. They are stronger than a projection statement holding only after time averaging or at the Euler scale. Appendix C.1 invokes hydrodynamic projection and sketches the cancellation, but does not spell out this full set of assumptions.

We can check the same correction in the double time integral. For \(t>0\), supporting derivation B gives

\[
I_{ij}(t)=\int_{-t}^tdu\,(t-|u|)K_{ij}(u).
\]

Writing \(\Delta I=I'-I\) and integrating the derivatives exactly gives

\[
\begin{aligned}
\Delta I_{ij}(t)={}&-\int_0^tdu\,[F_{ij}(u)-F_{ij}(-u)]\\
&+\int_0^tdu\,[G_{ij}(u)-G_{ij}(-u)]\\
&+2H_{ij}(0)-H_{ij}(t)-H_{ij}(-t).
\end{aligned}
\]

Each conserved plateau cancels within its own difference. This formula keeps the sign convention \(I'-I\) and includes the term involving both improvement operators. It reconstructs the full endpoint correction behind the paper's sketch.

If the residual functions \(F-f\) and \(G-g\) have finite absolute time integrals on both sides and \(H\) is bounded, then \(\Delta I\) stays bounded as \(t\) increases. This is the meaning of the estimate \(O(t^0)\) asserted in Appendix C.1.

A weaker assumption gives a weaker estimate. If those residuals merely tend to zero and \(H\) stays bounded, the correction can still grow, but its ratio to \(t\) tends to zero: \(\Delta I=o(t)\). That is enough to preserve the coefficient linear in time, but it does not prove that the correction is bounded. The direct Green–Kubo endpoint proof above needs equal endpoint limits and derivative-correlation relaxation; it does not require absolute integrability of every mixed residual.
