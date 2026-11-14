#set document(
  title: [Programación didáctica Oposiciones 2027],
  author: "Jesús María Mora Mur",
  date: datetime.today(offset: auto),
)
#set page(
  paper: "a4",
  margin: 3cm,
)
#set par(justify: true)
#set heading(numbering: "1.")
#show bibliography: set heading(numbering: "1.")
#set list(
  indent: 1.5em,
) // Para que aparezcan metidas
#set enum(
  indent: 1.5em,
) // Para que aparezcan metidas
#set text(
  font: "Liberation Sans",
  size: 11pt,
  lang: "es",
  hyphenate: auto,
)
#align(top+center,[#image("img/logo-gobierno-aragon.svg", width: 70%)])
#align(horizon+center,text(size: 19pt, hyphenate: false)[*Programación didáctica*])
#align(bottom+right, text(15pt)[
  Jesús María Mora Mur\
  *Fecha*\
  IFC302 Desarrollo de aplicaciones multiplataforma\
  0483 Sistemas Informáticos\
  Curso 2026-2027\
  Acceso al Cuerpo de Prfoesores de Enseñanza Secundaria
])
#pagebreak()
#set page(numbering: "1")
#counter(page).update(1)
#set par(leading: 1.5em)
#outline()
#pagebreak()
= Introducción.
== Identificación.
#show table: set text(hyphenate: false)
#show table: set par(leading: 1.15em)
#let grisTablas = luma(230)
#table(
  align: horizon,
  columns: (25%, auto, auto),
  table.cell(
    rowspan: 4,
    fill: grisTablas
  )[*Centro educativo y organización*],
  table.cell(fill: grisTablas)[Tipo], [Centro Público Integrado de Formación Profesional (CPIFP)],
  table.cell(fill: grisTablas)[Nombre], [#highlight(fill: gradient.linear(..color.map.rainbow))[Falta el nombre del centro educativo]],
  table.cell(fill: grisTablas)[Curso académico], [2026-2027],
  table.cell(fill: grisTablas)[Modalidad], [Presencial],
  table.cell(
    rowspan: 7,
    fill: grisTablas
  )[*Grado*],
  table.cell(fill: grisTablas)[Familia profesional],[Informática y Comunicaciones],
  table.cell(fill: grisTablas)[Titulación], [Técnico superior],
  table.cell(fill: grisTablas)[Código], [IFC302],
  table.cell(fill: grisTablas)[Denominación], [Desarrolo de aplicaciones multiplataforma],
  table.cell(fill: grisTablas)[Tipo de enseñanza], [Ciclo Formativo de Grado Superior],
  table.cell(fill: grisTablas)[Grado], [D],
  table.cell(fill: grisTablas)[Nivel], [3],
  table.cell(
    rowspan: 5,
    fill: grisTablas
  )[*Módulo profesional*],
  table.cell(fill: grisTablas)[Código], [0483],
  table.cell(fill: grisTablas)[Denominación], [Sistemas Informáticos],
  table.cell(fill: grisTablas)[Curso], [Primero],
  table.cell(fill: grisTablas)[Duración curricular], [167 horas],
  table.cell(fill: grisTablas)[Carga lectiva  semanal], [5 horas],

)
== Marco normativo.
La presente programación didáctica se sustenta en la normativa expuesta a continuación:
=== Normativa estatal
- Ley Orgánica 2/2006, de 3 de mayo, de Educación#cite(<leyOrganicaAntigua>, form: none), modificada por la Ley Orgánica 3/2020, de 29 de diciembre#cite(<leyOrganica>, form: none).
- Ley Orgánica 3/2022, de 31 de marzo, de ordenación e integración de la Formación Profesional#cite(<leyOrganicaFP>, form: none).
- Real Decreto 659/2023, de 18 de julio, por el que se desarrolla la ordenación del Sistema de Formación Profesional#cite(<realDecretoFP>, form: none).
- Real Decreto 69/2025, de 4 de febrero, por el que se desarrollan los elementos integrantes y los instrumentos de gestión del Sistema Nacional de Formación Profesional, y se modifica el Real Decreto 375/1999, de 5 de marzo, por el que se crea el Instituto Nacional de las Cualificaciones#cite(<realDecreto6925>, form:none).
- Real Decreto 450/2010, de 16 de abril, por el que se establece el título de Técnico Superior en Desarrollo de Aplicaciones Multiplataforma y se fijan sus enseñanzas mínimas#cite(<realDecretoTitulo>, form: none), modificado por el Real Decreto 500/2024, de 21 de mayo, por el que se modifican determinados reales decretos por los que se establecen títulos de Formación Profesional de grado superior y se fijan sus enseñanzas mínimas#cite(<modGradoSuperior>, form: none)
=== Normativa autonómica.
- Decreto 91/2024, de 5 de junio, del Gobierno de Aragón por el que se establece la Ordenación de la Formación Profesional del Grado D y del Grado E en la Comunidad Autónoma de Aragón#cite(<decreto91>, form: none), modificado por el Decreto 107/2025, de 10 de septiembre, del Gobierno de Aragón, por el que se modifica el Decreto 91/2024, de 5 de junio, del Gobierno de Aragón por el que se establece la Ordenación de la Formación Profesional del Grado D y del Grado E en la Comunidad Autónoma de Aragón y las Órdenes ECD/842/2024 y ECD/843/2024, ambas de 25 de julio, por las que se regulan aspectos organizativos del currículo y se establecen los currículos de determinados Ciclos Formativos de Formación Profesional de Grado Medio y Grado Superior, respectivamente, para la Comunidad Autónoma de Aragón#cite(<modificacionDecreto>, form: none).
- Orden ECD/843/2024, de 25 de julio, por la que se regulan aspectos organizativos del currículo y se establecen los currículos de determinados Ciclos Formativos de Formación Profesional de Grado Superior para la Comunidad Autónoma de Aragón#cite(<ordenGS>, form: none), modificado por el Decreto 107/2025, de 10 de septiembre, del Gobierno de Aragón, por el que se modifica el Decreto 91/2024, de 5 de junio, del Gobierno de Aragón por el que se establece la Ordenación de la Formación Profesional del Grado D y del Grado E en la Comunidad Autónoma de Aragón y las Órdenes ECD/842/2024 y ECD/843/2024, ambas de 25 de julio, por las que se regulan aspectos organizativos del currículo y se establecen los currículos de determinados Ciclos Formativos de Formación Profesional de Grado Medio y Grado Superior, respectivamente, para la Comunidad Autónoma de Aragón#cite(<modificacionDecreto>, form: none).
- Decreto 188/2017, de 28 de noviembre, del Gobierno de Aragón, por el que se regula la respuesta educativa inclusiva y la convivencia en las comunidades educativas de la Comunidad Autónoma de Aragón#cite(<decretoInclusionAntiguo>, form: none), modificado por el Decreto 164/2022, de 16 de noviembre, del Gobierno de Aragón, por el que se modifica el Decreto 188/2017, de 28 de noviembre, del Gobierno de Aragón, por el que se regula la respuesta educativa inclusiva y la convivencia en las comunidades educativas de la Comunidad Autónoma de Aragón#cite(<decretoInclusion>, form: none).
- Orden ECD/1005/2018, de 7 de junio, por la que se regulan las actuaciones de intervención educativa inclusiva#cite(<ordenAntiguaActuaciones>, form: none), modificada por la Orden ECD/913/2023, de 11 de julio, por la que se modifica la Orden ECD/1004/2018, de 7 de junio, por la que se regula la Red Integrada de Orientación Educativa en los centros docentes no universitarios sostenidos con fondos públicos de la Comunidad Autónoma de Aragón, y la Orden ECD/1005/2018, de 7 de junio, por la que se regulan las actuaciones de intervención educativa inclusiva#cite(<modOrdActuaciones>, form: none).
- Orden ECU/1066/2026, de 7 de julio, por la que se aprueban las instrucciones para los Centros Públicos Integrados de Formación Profesional de la Comunidad Autónoma de Aragón para el curso 2026/2027#cite(<instruccionesInicio>, form: none)
== Contextualización
=== Entorno gráfico y sociocultural
=== Entorno socioeconómico y productivo
=== Contexto escolar
=== Caracteristicas del alumnado
=== Infraestructuras y recursos educativos
= Desarrollo curricular
== Duración, ubicación y distribución horaria
== Estándares de Competencias Profesionales (ECP)
== Competencias profesionales y para la empleabilidad (CPE)
== Objetivos generales (OG)
== Resultados de Aprendizaje (RA) y Criterios de Evaluación (CE)
== Contenidos (C)
== Relación entre los elementos curriculares
== Organización y distribución temporal: unidades didácticas y otros tiempos
== Formación en empresa u organismo equiparado (FEOE)
=== Modalidad de la FEOE
=== Organización temporal de la FEOE
=== Resultados de aprendizaje desarrollados en la FEOE
=== Organización para el alumnado que no realice FEOE
=== Seguimiento de la FEOE
= Metodología didáctica
== Principios metodológicos
== Estrategias metodológicas
== Materiales y recursos didácticos
== Agrupamientos
== Plan de aplicación de desdobles
== Aprendizaje colaborativo basado en proyectos o retos
= Procedimientos de evaluación y calificación
== Actividades, técnicas e instrumentos
== Evaluaciones
=== Evaluación inicial
=== Evaluaciones parciales
=== Primera evaluación final
=== Segunda evaluación final
== Información al alumnado o familias
== Pérdida del derecho a la evaluación continua
== Procedimiento de recuperación
== Evaluación de la fase de formación en empresa u organismo equiparado (FEOE)
== Criterios de calificación y ponderación
=== Criterios de calificación
=== Ponderación de los resultados de aprendizaje y criterios de evaluación
== Plan de recuperación de los módulos profesionales pendientes
= Actuaciones de intervención educativa
= Actividades complementarias y extraescolares
= Plan de contingencia
== Ausencia prolongada del profesorado titular
== Ausencia prolongada del alummado por causas justificadas
== Interrupción generalizada del módulo profesional o del centro
= Publicidad de la programación didáctica
#bibliography("refs.yml", style: "american-psychological-association")
