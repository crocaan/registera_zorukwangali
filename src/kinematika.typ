#set document(
  title: "Registera Zoudivi Wopagumo: Kinematics, Newton's Laws & Conservation Principles Lexicon (Rukwangali – English)",
  author: "Haita Joseph Ihemba",
  keywords: ("Rukwangali", "kwn", "Technical Rukwangali", "STEM lexicon", "Physics", "Udivi wopagumo", "Kinematics", "Mechanics", "Conservation Laws", "Bantu terminology"),
  date: datetime(year: 2026, month: 11, day: 18),
)

#set page(
  paper: "a4",
  margin: (top: 2.2cm, bottom: 2cm, left: 1.8cm, right: 1.8cm),
  header: context {
    if counter(page).get().first() > 1 [
      #set text(size: 8pt, fill: rgb("#64748b"), style: "italic")
      REGISTERA ZOUDIVI WOPAGUMO (kwn–en) #h(1fr) [Muwapaiki: Haita Joseph I.]
      #v(-4pt)
      #line(length: 100%, stroke: 0.4pt + rgb("#cbd5e1"))
    ]
  },
  footer: context {
    set align(center)
    set text(size: 8.5pt, fill: rgb("#334155"))
    [#counter(page).display("1 / 1", both: true)]
  }
)

#set text(font: "Liberation Sans", size: 9.5pt, fill: rgb("#1e293b"))

// Section header helper matching Registera Zoudivi Wopaundunge
#let lex-section(num, kwn-title, en-title) = {
  v(1em)
  block(breakable: false)[
    #text(size: 12pt, weight: "bold", fill: rgb("#1a3a5c"))[#num. #kwn-title]
    #h(6pt)
    #text(size: 9.5pt, style: "italic", fill: rgb("#475569"))[(#en-title)]
    #v(-4pt)
    #line(length: 100%, stroke: 1.2pt + rgb("#1a3a5c"))
    #v(4pt)
  ]
}

// 4-column lexicon table helper
#let lex-table(..rows) = {
  table(
    columns: (27%, 24%, 17%, 32%),
    inset: (x: 6pt, y: 5pt),
    stroke: (x: none, y: 0.4pt + rgb("#cbd5e1")),
    fill: (_, row) => if row == 0 { rgb("#1a3a5c") } else if calc.odd(row) { rgb("#ffffff") } else { rgb("#f8fafc") },
    table.header(
      text(fill: white, weight: "bold")[Rukwangali (kwn)],
      text(fill: white, weight: "bold")[English (en)],
      text(fill: white, weight: "bold")[Sidiviso],
      text(fill: white, weight: "bold")[Fwatururo & Morphology],
    ),
    ..rows.pos().map(r => (
      text(weight: "bold", fill: rgb("#0f172a"))[#r.at(0)],
      [#r.at(1)],
      [#r.at(2)],
      [#r.at(3)],
    )).flatten()
  )
}

// Title Banner
#align(center)[
  #text(size: 18pt, weight: "bold", fill: rgb("#1a3a5c"))[REGISTERA ZOUDIVI WOPAGUMO]
  #v(-4pt)
  #text(size: 10.5pt, style: "italic", fill: rgb("#475569"))[
    Classical Mechanics: Kinematics, Newton's Laws & Conservation Principles Lexicon (Rukwangali – English)
  ]
  #v(6pt)
  #line(length: 55%, stroke: 1pt + rgb("#1a3a5c"))
]

#lex-section("1", "[Kinematika]", "Kinematics")

#lex-table(
  ([Udivi wopagumo], [Physics], [—], [Physical science of matter, energy, and motion.]),
  ([Makeninga], [Classical mechanics], [—], [Study of motion and forces on macroscopic bodies.]),
  ([Kinematika], [Kinematics], [—], [Geometry of motion without reference to mass or force.]),
  ([Eligumaguro],[Motion],[-],[]),
  ([Kugenderera],[Fast],[-],[]),
  ([Sikondeki sokutarera], [Frame of reference], [$(x, y, z, t)$], [Coordinate system for observing position and motion.]),
  ([Esikamo], [Position vector], [$arrow(r)$], [Location of a particle relative to origin (_ezarorumwe_).]),
  ([Sinano], [Distance], [$d, s$], [Scalar total path length traveled.]),
  ([Etundovega], [Displacement], [$Delta arrow(r)$], [Net vector change in position (_ezarorumwe_).]),
  ([Mugendo], [Speed], [$v = frac("d"s, "d"t)$], [Scalar rate of change of distance with time.]),
  ([Muduke], [Velocity], [$arrow(v) = frac("d"arrow(r), "d"t)$], [Vector rate of change of position (_ezarorumwe_).]),
  ([Siputa], [Acceleration], [$arrow(a) = frac("d"arrow(v), "d"t)$], [Vector rate of change of velocity with time.]),
  ([Eligumaguro lyedirotjindjo], [Uniform rectilinear motion], [$arrow(a) = 0$], [Constant-velocity straight-line motion.]),
  ([Kugwa memanguruko], [Free fall], [$g approx 9.81 "m/s"^2$], [Motion solely under gravitational acceleration.]),
  ([Eligumaguro lyosiponya], [Projectile motion], [$(x(t), y(t))$], [2D parabolic trajectory under uniform gravity.]),
  ([Muduke gopauhuke], [Angular velocity], [$omega = frac("d"theta, "d"t)$], [Rate of change of angular displacement.]),
  ([Siputa sedingiliko], [Centripetal acceleration], [$a_c = frac(v^2, r)$], [Inward radial acceleration in circular motion.]),
)
    #pagebreak()
    
#lex-section("2", "Dainamika ntani NoVeta daNewton Deligumaguro", "Dynamics & Newton's Laws of Motion")

#lex-table(
  ([Dainamika],[Dynamics], [—], [Study of forces and their effect on motion.]),
  ([Esininiko],[Force], [$arrow(F)$], [Vector interaction causing acceleration or deformation.]),
  ([Yitundwamo yesininiko], [Net / Resultant force], [$sum arrow(F)$], [Vector sum of all external forces on a body.]),
  ([Mukumo],[Inertial mass], [$m$], [Quantitative measure of resistance to acceleration.]),
  ([Inershia],[Inertia], [—], [Tendency of a body to resist changes in motion.]),
  ([Veta zoMuhowo zaNewton], [Newton's First Law], [$sum arrow(F) = 0 => arrow(v) = "const"$], [Law of inertia in an inertial reference frame.]),
  ([Veta zaUvali zaNewton], [Newton's Second Law], [$sum arrow(F) = m arrow(a)$], [Net force equals mass times acceleration.]),
  ([Veta zaUtatu zaNewton], [Newton's Third Law], [$arrow(F)_(12) = -arrow(F)_(21)$], [Mutual action-reaction force pairs on distinct bodies.]),
  ([Uviha], [Gravitational weight], [$arrow(W) = m arrow(g)$], [Gravitational force exerted on a mass.]),
  ([Esininiko lyouhukevyuka], [Normal force], [$arrow(N)$], [Perpendicular contact support force from a surface.]),
  ([Eliputjakano], [Friction force], [$f <= mu N$], [Tangential resistive contact force (static/kinetic).]),
  ([Elisinya], [Tension], [$arrow(T)$], [Pulling force transmitted along a string, cable, or rod.]),
  ([Esikopamwe], [Mechanical equilibrium], [$sum arrow(F) = 0, sum arrow(tau) = 0$], [Zero net force and zero net torque state.]),
  ([Torka], [Torque / Moment of force], [$arrow(tau) = arrow(r) times arrow(F)$], [Rotational equivalent of linear force.]),
)

#lex-section("3", "Pankedi zepirouzumbano", "Work, Energy & Conservation Principles")

#lex-table(
  ([Pankedi zepirouzumbano], [Conservation principle], [—], [Invariance of a total physical quantity in an isolated system.]),
  ([Mutungo gokulikarera  / Mutungo gepaterero], [Isolated / Closed system], [—], [System with zero net external force or mass exchange.]),
  ([Urugano], [Mechanical work], [$W = integral arrow(F) dot "d"arrow(r)$], [Energy transferred via force acting over displacement.]),
  ([Uruganonkondo], [Mechanical power], [$P = frac("d"W, "d"t)$], [Rate of energy transfer or work done per unit time.]),
  ([Ukarankondo], [Energy], [$E$], [Scalar capacity of a system to perform work.]),
  ([Ukarankondo wopangendo], [Kinetic energy], [$K = frac(1, 2) m v^2$], [Energy associated with a body's motion.]),
  ([Ukarankondo wepevuro], [Potential energy], [$U(arrow(r))$], [Stored configuration energy in a conservative field.]),
  ([Esininiko lyepirouzumbano], [Conservative force], [$arrow(F) = -nabla U$], [Force whose work is path-independent.]),
  ([Veta zepirouzumbano], [Conservation of mechanical energy], [$Delta K + Delta U = 0$], [Total mechanical energy remains constant without dissipation.]),
  ([Momenta zonkarouvyuka], [Linear momentum], [$arrow(p) = m arrow(v)$], [Product of mass and velocity (_ezarorumwe_).]),
  ([Eliharuko], [Impulse], [$arrow(J) = integral arrow(F) "d"t = Delta arrow(p)$], [Time integral of force equal to momentum change.]),
  ([Epirouzumbo lyomomenta zonkarouvyuka], [Conservation of linear momentum], [$sum arrow(p)_i = sum arrow(p)_f$], [Total momentum is invariant when $sum arrow(F)_"ext" = 0$.]),
  ([Elimbwanduro lyenanunuko], [Elastic collision], [$Delta K = 0, Delta arrow(p) = 0$], [Collision conserving both kinetic energy and momentum.]),
  ([Elimbwanduro lyepironanunuko], [Inelastic collision], [$Delta K != 0, Delta arrow(p) = 0$], [Collision conserving momentum while dissipating kinetic energy.]),
  ([Momenta zopauhuke], [Angular momentum], [$arrow(L) = arrow(r) times arrow(p)$], [Rotational analog of linear momentum.]),
  ([Epirouzumbo lyomomenta zopauhuke], [Conservation of angular momentum], [$sum arrow(L)_i = sum arrow(L)_f$], [Invariant when net external torque $sum arrow(tau)_"ext" = 0$.]),
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

  *METADATA, LICENSING & CITATION* #h(1fr) #text(fill: rgb("#475569"))[*Version 0.1 (Draft)* · November 2026 · ISO 639-3: `kwn`]
  #v(3pt)
  #line(length: 100%, stroke: 0.4pt + rgb("#cbd5e1"))
  #v(4pt)

  *Open License:* © 2026 Haita Joseph Ihemba. Licensed under *Creative Commons Attribution 4.0 International (CC BY 4.0)*. You are free to share, copy, redistribute, and adapt this lexicon for any purpose—including teaching, software development, and academic research—provided appropriate credit is given.
  #v(4pt)

  *Recommended Citation:* \
  #text(fill: rgb("#334155"))[
    Haita, J. I. (2026). _Registera Zoudivi Wopagumo: Classical Mechanics — Kinematics, Newton's Laws & Conservation Principles Lexicon (Rukwangali – English)_ (Version 0.1) [Lexicon, ISO 639-3: kwn]. Technical Rukwangali Project.
  ]
  #v(4pt)

  *Project Note:* Part of the open-source _Technical Rukwangali_ series establishing standardized STEM registers across metrology, mathematics, natural sciences, and engineering.
]

