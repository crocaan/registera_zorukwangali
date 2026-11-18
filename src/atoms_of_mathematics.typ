// =========================================================================
// REGISTERA ZA LOGIC, ALDJEBRA, CALCULUS NTANI MECHATRONICS (RUKWANGALI)
// Master Bilingual Technical Lexicon (kwn <-> en)
// =========================================================================

#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 2cm),
  numbering: "1 / 1",
  header: context {
    if counter(page).get().first() > 1 [
      #set text(size: 8.5pt, fill: luma(110), style: "italic")
      REGISTERA ZOUDIVI WOPAUNDUNGE, ALDJEBRA (kwn–en)
      #h(1fr)
      Muwapaiki: Haita Joseph I.
      #line(length: 100%, stroke: 0.4pt + luma(200))
    ]
  }
)
#set document(
  title: "Registera Zoudivi Wopaundunge, Aldjebra: Formal Mathematical Logic, Botanical Algebra, Calculus & Control Systems Lexicon (Rukwangali – English)",
  author: "Haita Joseph Ihemba",
  keywords: ("Rukwangali", "kwn", "Technical Rukwangali", "STEM lexicon", "Mathematical Logic", "Algebra", "Calculus", "Control Systems", "Bantu terminology"),
  date: datetime(year: 2026, month: 11, day: 16),
)

#set text(font: "Liberation Sans", size: 9.5pt, fill: luma(25))
#set par(leading: 0.65em)

// Custom Section Header Macro
#let lex-section(num, kwn-title, en-title) = {
  v(0.8em)
  block(breakable: false)[
    #text(size: 13pt, weight: "bold", fill: rgb("#1b365d"))[#num. #kwn-title]
    #h(0.5em)
    #text(size: 10.5pt, style: "italic", fill: luma(100))[(#en-title)]
    #v(-0.4em)
    #line(length: 100%, stroke: 1.2pt + rgb("#1b365d"))
  ]
  v(0.3em)
}

// Custom Lexicon Table Macro
#let lex-table(..rows) = {
  table(
    columns: (27%, 25%, 16%, 32%),
    inset: (x: 7pt, y: 6pt),
    align: (left, left, center, left),
    stroke: (x: none, y: 0.4pt + luma(215)),
    fill: (col, row) => if row == 0 { rgb("#1b365d") } else if calc.odd(row) { luma(248) } else { white },
    table.header(
      text(fill: white, weight: "bold")[Rukwangali (kwn)],
      text(fill: white, weight: "bold")[English (en)],
      text(fill: white, weight: "bold")[Sidiviso],
      text(fill: white, weight: "bold")[Fwatururo & Udivi ntungo],
    ),
    ..rows
  )
}

// =========================================================================
// DOCUMENT TITLE BLOCK
// =========================================================================

#align(center)[
  #v(0.5cm)
  #text(size: 20pt, weight: "bold", fill: rgb("#1b365d"))[
    REGISTERA ZOUDIVI WOPAUNDUNGE, ALDJEBRA
  ] \
  #v(0.2cm)
  #text(size: 11.5pt, style: "italic", fill: luma(80))[
    Formal Mathematical Logic, Botanical Algebra, Calculus & Control Systems Lexicon (Rukwangali – English)
  ]
  #v(0.4cm)
  #line(length: 60%, stroke: 1pt + rgb("#1b365d"))
  #v(0.6cm)
]

// =========================================================================
// 1. LOGIC & TRUTH CLASSIFICATIONS
// =========================================================================

#lex-section("1", "Undunge wo-Maturovango ntani Upagano wo-Undipo", "Propositional Logic & Proof Theory")

#lex-table(
  [*Undunge*], [Logic (Noun)], [---], [Science/system of pure reason (from _ndunge_).],
  [*Paundunge*], [Logical / Logically (Adj/Adv)], [---], [Adjectival/adverbial form (prefix _pau-_).],
  [*Konda*], [Reason / Justification], [---], [General rationality and causal reasoning (distinct from formal _undunge_).],
  [*Eturovango*], [Proposition], [$P, Q$], [Pl: _maturovango_; closed statement with truth value $U$ or $Y$.],
  [*Eturovango lyopau-atomu*], [Atomic proposition], [$P, Q$], [Pl: _maturovango_; basic truth-bearing unit.],
  [*Usili*], [True (Truth value)], [$U$], [Replaces English $T$ in native truth tables.],
  [*Yipempa*], [False (Truth value)], [$Y$], [Replaces English $F$ in native truth tables.],
  [*Maligwaneno gopaundunge*], [Logical connectives], [---], [From _kuligwana_ (to meet / link together).],
  [*Elimbo*], [Negation], [$not P$], [Inline: _kapisi P_.],
  [*Etwikakano*], [Conjunction], [$P and Q$], [Inline: _P ntani Q_ (from _kutwikakana_).],
  [*Malizumbo*], [Disjunction], [$P or Q$], [Inline: _P ndi Q_ (inclusive disjunction).],
  [*Sipako setambo*], [Material implication], [$P arrow.r.double Q$], [Inline: _nsene P, mo ngoso Q_.],
  [*Yikaravali*], [Biconditional], [$P arrow.l.r.double Q$], [Inline: _nsene ntani nsene tupu_.],
  [*Nkaro zohepero*], [Necessary condition], [$Q$ for $P$], [_Q hepero ko P_ (from _kuhepa_, to require).],
  [*Nkaro zokugwaneka*], [Sufficient condition], [$P$ for $Q$], [_P kugwaneka ko Q_ (from _kugwaneka_).],
  [*Monyima*], [Converse], [$Q arrow.r.double P$], [Reversed implication direction.],
  [*Elimbiko*], [Inverse], [$not P arrow.r.double not Q$], [Negated components, fixed direction.],
  [*Epirurouwa*], [Contrapositive], [$not Q arrow.r.double not P$], [Reversed and negated (from _kupirura_).],
  [*Usili wekarerero*], [Tautology], [$top$], [From _ekarerero_ (permanence / endurance).],
  [*Elilimbo*], [Contradiction], [$bot$], [Reflexive _li-_ + _elimbo_ (self-refutation).],
  [*Elisikakano lyopaundunge*], [Logical equivalence], [$A equiv B$], [Reciprocal _li-_ + _sikakana_; pl: _malisikakano_.],
  [*Sitafura sousili*], [Truth table], [---], [Pl: _yitafura yousili_.],
  [*Esikiso lyoundipo*], [Completion of proof], [$qed$], [Formal proof closure (Q.E.D.).],
  [*Undipo*], [Formal deductive proof], [---], [Strictly separated from _umbangi_ (evidence).],
  [*Undindiliro*], [Contingency], [---], [From _kudindilira_ (to wait/pend); truth value awaits input assignment.],
  [*Veta zopavali*], [Principle of Bivalence], [---], [Semantic axiom: every proposition is strictly $U$ or $Y$.],
  [*Veta zepirokatji*], [Law of Excluded Middle], [$P or not P equiv top$], [From _kupira_ (to lack/not have) + _katji_ (middle); bars a third middle option.],
  [*Noveta da-De Morogani*], [De Morgan's Laws], [$not(P and Q) equiv not P or not Q$], [Plural _noveta_ (laws) + naturalized proper name _De Morogani_.],
  [*Sihonena selimbo*], [Counterexample], [---], [Pairs _sihonena_ (example) with _elimbo_ (negation/refutation); pl: _yihonena yelimbo_.],
  [*Uhudisa*], [Predicate / Propositional function], [$P(x)$], [Class 14 _u-_ + _hudisa_ (proclaim); property-declaring template.],


)

// =========================================================================
// 2. QUANTIFIERS & SET THEORY
// =========================================================================

#lex-section("2", "Maunzinzipiko ntani Upagano wo-Nompungi", "Quantifiers & Set Theory")

#lex-table(
  [*Maunzinzipiko*], [Quantifiers], [$forall, exists, exists!$], [Sg: _eunzinzipiko_ (from _kuunzinzipika_, to quantify).],
  [*Paunayinye*], [Universal quantifier], [$forall$], [Domain-wide binding ("For all").],
  [*Pekarero*], [Existential quantifier], [$exists$], [Existence of at least one instance ("There exists").],
  [*Ekaro lyokulikarera*], [Unique existential quantifier], [$exists!$], [Existence and strict uniqueness ("There exists a unique").],
  [*Pwa nayinye / Pwa nkenye*], [Universal quantifier], [$forall$], [Domain-wide universal binding (For all).],
  [*Pwakara paununu simwe*], [Existential quantifier], [$exists$], [At least one instance exists.],
  [*Pwakara tupu simwe*], [Unique existential], [$exists!$], [Existence paired with strict uniqueness.],
  [*Kapi pwakara*], [Non-existence], [$not exists$], [Empty domain / absence of satisfying element.],
  [*Mpungi*], [Set], [$S$], [Pl: _nompungi_.],
  [*Rumbembera*], [Element / Member], [$x in S$], [Pl: _marumbembera_.],
  [*Mpungigona*], [Subset], [$A subset.eq B$], [Diminutive _-gona_ sub-collection slice.],
  [*Mpungigona tupu*], [Proper subset], [$A subset B$], [Strict inclusion ($A != B$).],
)

// =========================================================================
// 3. BOTANICAL ALGEBRA & POLYNOMIALS
// =========================================================================

#lex-section("3", "Aldjebra zo Mamutayi", "Botanical Algebra & Polynomials")

#lex-table(
  [*Aldjebra*], [Algebra], [---], [Standard Rukwangali orthography.],
  [*Mpangotanto*], [Theorem], [---], [Systematic governing mathematical law.],
  [*Elisiko*], [Equation], [$A = B$], [Pl: _malisiko_; relational: _kwa hetakana no_.],
  [*Simeno*], [Algebraic term], [$3x^5$], [Pl: _yimeno_ (sprout / individual plant entity).],
  [*Sivhukiso*], [Coefficient / Multiplier], [$a$ in $a x^n$], [Pl: _yivhukiso_ (arithmetic scalar volume).],
  [*Singororo*], [Constant], [$c$], [Pl: _yingororo_ (fixed, unyielding value).],
  [*Mudi*], [Base / Stem], [$x$ in $x^n$], [Pl: _midika_ (central structural column).],
  [*Ehako lyomudi*], [Exponent / Leaf], [$n$ in $x^n$], [Pl: _mahako_; spoken: _x vazerura kon_.],
  [*Mutayi*], [Monomial], [$3x^2$], [Single algebraic branch.],
  [*Mutayivali*], [Binomial], [$x - 1$], [Two-branched expression.],
  [*Mamutayi*], [Polynomial], [$sum a_i x^i$], [Multi-branched structural canopy.],
  [*Ezerurovali*], [Quadratic (2nd degree)], [$x^2$], [Balanced second-level squaring.],
  [*Ezerurotatu*], [Cubic (3rd degree)], [$x^3$], [Third-level degree.],
  [*Ezerurone*], [Quartic (4th degree)], [$x^4$], [Fourth-level degree.],
  [*Ezerurontano*], [Quintic (5th degree)], [$x^5$], [Fifth-level degree.],
  [*Nondandani*], [Roots / Radicals / Zeroes], [$root(n, x)$], [Sg: _ndandani_ (foundational root system).],
  [*Ndandanivali / -tatu / -ne*], [Square / Cube / 4th root], [$sqrt(x), root(3, x), root(4, x)$], [Exact inverse symmetry to _ezeruro-_.],
  [*Sikandopeka*], [Algebraic factor], [$(x - 1)$], [Pl: _yikandopeka_ (structural multiplier block).],
  [*Sikandopeka sokuhwa*], [Common factor], [---], [Shared identical multiplier across terms.],
  [*Rukandopeka*], [Factorization], [---], [Verb: _kandopeka / kukandopeka_.],
  [*Sintaugona*], [Partial fraction], [$A / (x - a)$], [Pl: _yintaugona_ (cleanly split sub-fraction).],
  [*Etezakano yintaugona*], [Partial fraction decomposition], [---], [Leveling a rational expression into parts.],
  [*Sikovhutatu sa-Paskala*], [Pascal's Triangle], [---], [Binomial expansion coefficient triangle.],
  [*Mamvhonga-vhongi ga-Viete*], [Viète's Formulas], [$x_1 + x_2 = -b/a$], [Interwoven root-coefficient relations.],
  [*Supipika / Kusupipika*], [Simplify (Verb)], [---], [From _supipa_ (make concise); clean up structure / combine like terms.],
  [*Nunupika / Kununupika*], [Reduce (Verb)], [---], [From _nunupa_ (make smaller); cancel factors or lower degree/fraction size.],
  [*Hungamesa / Kuhungamesa*], [Justify (Verb)], [---], [From _hungama_ (to be right/justified); cite the governing _veta_ validating a proof step.],

)

	//#pagebreak()
// =========================================================================
// 4. FUNCTIONS, EXPONENTIALS & CALCULUS
// =========================================================================

#lex-section("4", "Marugano, Ehokwa ntani Karkurasi", "Functions, Exponentials & Calculus")

#lex-table(
  [*Erugano*], [Function], [$f(x)$], [Operational input-output mapping.],
  [*Ezerukiso*], [Power function], [$f(x) = x^n$], [Verb: _zerura_ (to raise to a power).],
  [*Ehokwa*], [Exponential function], [$f(x) = b^x$], [From _kuhoka_ (to shoot / surge upward).],
  [*Ekuro lyehokwa*], [Exponential growth], [$b > 1$], [Accelerating upward surge.],
  [*Egwo lyehokwa*], [Exponential decay], [$0 < b < 1$], [Accelerating downward drop.],
  [*Ehagesera*], [Limit], [$lim_(x -> c) f(x)$], [Pl: _mahagesera_ (from _kuhagesera_).],
  [*Ehagesera lyokorumoho*], [Left-hand limit], [$lim_(x -> c^-) f(x)$], [Asymptotic approach from the left.],
  [*Ehagesera lyokorulyo*], [Right-hand limit], [$lim_(x -> c^+) f(x)$], [Asymptotic approach from the right.],
  [*Etwikiro*], [Continuity], [$lim_(x -> c) f(x) = f(c)$], [From _kutwikira_ (unbroken linkage).],
  [*Egusiso*], [Derivative], [$f'(x), (dif y)/(dif x)$], [From _kugusa_ (to extract / reduce).],
  [*Egusisogona*], [Partial derivative], [$(partial f)/(partial x)$], [Single-variable directional slice.],
  [*Erwagusiso*], [Antiderivative], [$F(x)$], [Morphological inverse of _egusiso_.],
  [*Egwedakano lyedirokarero*], [Indefinite integral], [$integral f(x) dif x$], [Unbounded continuous accumulation.],
  [*Egwedakano lyekarero*], [Definite integral], [$integral_a^b f(x) dif x$], [Bounded accumulation over $[a, b]$.],
  [*Egwederero / Epakerero*], [Discrete summation], [$sum x_i$], [Discrete aggregate accumulation.],
  [*Elisiko lyopahanguro*], [Differential equation (ODE)], [$F(x, y, y') = 0$], [Pl: _malisiko gopahanguro_.],
  [Elisiko lyopahangurogona], [Partial diff. equation (PDE)], [$F(..., u_x, u_y) = 0$], [Pl: malisiko gopahangurogona.],
)
// =========================================================================
// 5. LINEAR ALGEBRA, CONTROL SYSTEMS & PHYSICS
// =========================================================================
#lex-section("5", "Aldjebra zo-Mazaro, Nomutungo Depangero ntani Udivi wopagumo", "Linear Algebra, Control Systems & Physics")
#lex-table(
[Ezaro], [Matrix], [$A in RR^(m times n)$], [Pl: mazaro; dimensions: rukando ru m ko n.],
[Ezaro lyokulifana], [Identity matrix], [$I_n$], [Multiplicative neutral square matrix.],
[Ezarorumwe], [Vector], [$arrow(v) in RR^n$], [Pl: mazarorumwe (1D single-axis array).],
[Ekwateromo lyekarovango], [State-space representation], [$dot(x) = A x + B u$], [Ekaro (state) + evango (space).],
[Esikakano], [Level / Datum plane / Tier], [---], [Asymmetric tier (e.g., esikakano lyo-nkondo).],
[Mekora], [Positive polarity / sign], [$+x$], [Adj: zekora (charge / axis direction).],
[*Mukweyo / Ngundi*], [Row / Column], [---], [Pl: _nomukweyo_ (rows), _nongundi_ (columns).],
[Melimba], [Negative polarity / sign], [$-x$], [Adj: zelimba (charge / axis direction).],
)
// =========================================================================
//6.  NUMBER SYSTEMS (NOMORA: NN -> CC)
// =========================================================================

#lex-section("6", "Mutungo go-Nonomora", "Number systems")
#lex-table(

  [*Nomora zopansitwe*], [Natural number], [$NN$], [Counting numbers ($1, 2, 3, dots$).],
  [*Nomora zokuzura*], [Whole number], [$WW$], [Complete non-negative counting numbers ($0, 1, 2, dots$).],
  [*Intedja*], [Integer], [$ZZ$], [Positive, negative, and zero whole values ($dots, -1, 0, 1, dots$).],
  [*Nomora zokwauvali*], [Even number], [$2k$], [Associative _zokwa-_ + _uvali_ ("belonging to the two" / $2ZZ$).],
  [*Nomora zepando*], [Odd number], [$2k + 1$], [Parity complement to _nomora zokwavali_.],
  [*Nomora zokonda*], [Rational number], [$QQ$], [From _konda_ (reason / ratio $p/q$, $q != 0$).],
  [*Nomora zerwakonda*], [Irrational number], [$RR without QQ$], [Morphological inverse of _zokonda_ (non-ratio).],
  [*Nomora zousili*], [Real number], [$RR$], [Grounded in _usili_ (reality/truth); union of $QQ$ and $RR without QQ$.],
  [*Nomora zepegano*], [Imaginary number], [$i RR$], [Orthogonal axis ($b i$); kept distinct from boolean _Yipempa_.],
  [*Nomora zekohwa-kohwi*], [Complex number], [$CC$], [Reduplicated compound ($a + b i$) fusing _zousili_ and _zepegano_.],
  [*Nomora zokufugama*], [Floating-point number], [---], [From _kufugama_ (to float/shift); computing/firmware representation.],
)

#v(1.2em)

#block(
  width: 100%,
  fill: rgb("#f4f7fa"),
  stroke: (left: 3pt + rgb("#1a3a5c"), rest: 0.5pt + rgb("#cbd5e1")),
  radius: 3pt,
  inset: 10pt,
)[
  #set text(size: 8.5pt, fill: rgb("#1e293b"))

  *METADATA, LICENSING & CITATION* #h(1fr) #text(fill: rgb("#475569"))[*Version 1.0* · November 2026 · ISO 639-3: `kwn`]
  #v(3pt)
  #line(length: 100%, stroke: 0.4pt + rgb("#cbd5e1"))
  #v(4pt)

  *Open License:* © 2026 Haita Joseph Ihemba. Licensed under *Creative Commons Attribution 4.0 International (CC BY 4.0)*. You are free to share, copy, redistribute, and adapt this lexicon for any purpose—including teaching, software development, and academic research—provided appropriate credit is given.
  #v(4pt)

  *Recommended Citation:* \
  #text(fill: rgb("#334155"))[
    Haita, J. I. (2026). _Registera Zoudivi Wopaundunge, Aldjebra: Formal Mathematical Logic, Botanical Algebra, Calculus & Control Systems Lexicon (Rukwangali – English)_ (Version 1.0) [Lexicon, ISO 639-3: kwn]. Technical Rukwangali Project.
  ]
  #v(4pt)

  *Project Note:* Part of the open-source _Technical Rukwangali_ series establishing standardized STEM registers across metrology, mathematics, natural sciences, and engineering.
]

