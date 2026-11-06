

## 1




Compras y Proveedores: Nexa Servicios

## Simón Atencio Posada
## Pedro Juan Campuzano Echeverri
Ingeniería de Sistemas – Corporación Universitaria Remington
Ingeniería de Software II
## Docente: Gloria Amparo Lora Patiño
27 de octubre de 2026

## 2

Control de versiones del documento
Control de cambios: toda modificación posterior a esta versión deberá registrarse con
fecha, autor y descripción del ajuste.
## Tabla 1
Control de versiones del documento
Versión Fecha Autor(es) Descripción del cambio CRF / LB
## 1.0
## 27/10/2026
## Pedro Juan Campuzano Echeverri
y Simón Atencio Posada
Versión inicial LB-1
## 1.1
## 06/11/2026
## Pedro Juan Campuzano Echeverri
y Simón Atencio Posada
Formato APA 7; corrección de
redacción; ficha técnica de la
encuesta; equivalencia de actores y
roles; mockups complementarios;
cobertura CRUD; matriz de
trazabilidad completa y diccionario de
datos (Anexo A).
Ajuste a LB-1

## 3

Lista de tablas
Tabla 1. Control de versiones del documento ..................................................................................2
Tabla 2. Ficha técnica del instrumento de recolección de información .........................................16
Tabla 3. Necesidades detectadas en la encuesta y Historias de Usuario que las atienden .............18
Tabla 4. Cronograma de trabajo del semestre ................................................................................19
Tabla 5. Equivalencia entre los actores de las HU y los roles de la base de datos ........................21
Tablas 6 a 91. Historias de usuario HU-01 a HU-86 ...............................................................22–89
Tabla 92. Reglas de negocio del proyecto (RN-01 a RN-30) ........................................................90
Tabla 93. Requisitos funcionales derivados de las HU-01 a HU-86 .............................................91
Tabla 94. Requisitos no funcionales y criterios verificables .........................................................95
Tabla 95. Trazabilidad de casos de uso CU-01 a CU-86 .............................................................113
Tablas 96 a 101. Casos de uso críticos documentados ........................................................115–118
Tabla 102. Especificación de los mockups: campos, acciones y HU relacionadas .....................119
Tabla 103. Vistas principales del sistema, HU atendidas y operaciones .....................................122
Tabla 104. Cobertura CRUD de las Historias de Usuario y las vistas por entidad......................123
Tabla 105. Matriz de trazabilidad HU–RF–RN–CU–MK–CA ...................................................124
Tablas A1 a A22. Diccionario de datos por tabla (Anexo A) ..............................................129–136

## 4

Lista de figuras
Figura 1. Modelo entidad-relación (MER) de Compras y Proveedores ........................................97
Figura 2. Diagrama de clases UML de Compras y Proveedores: acceso y auditoría (vista 1
de 4) ...............................................................................................................................................98
Figura 3. Diagrama de clases UML de Compras y Proveedores: solicitud y aprobación
(vista 2 de 4)...................................................................................................................................99
Figura 4. Diagrama de clases UML de Compras y Proveedores: cotización y orden (vista 3
de 4) .............................................................................................................................................100
Figura 5. Diagrama de clases UML de Compras y Proveedores: recepción y factura (vista
4 de 4) ..........................................................................................................................................101
Figuras 6 a 18. Diagramas de casos de uso por actor ..........................................................102–112
Figura 19. Bocetos UI/UX de las vistas principales de solicitud, aprobación, cotización,
orden, recepción y facturación .....................................................................................................120
Figura 20. Bocetos UI/UX complementarios de seguridad, proveedores, catálogos y
auditoría .......................................................................................................................................121

## 5

Tabla de contenido
- Concepción — Conocer el sistema antes de construirlo ..............................................................6
1.1 Descripción del problema ....................................................................................................6
1.2 Alcance ................................................................................................................................7
1.3 Objetivo General ..................................................................................................................8
1.4 Objetivos Específicos...........................................................................................................9
1.5 Estado del arte ......................................................................................................................9
1.6 Marco teórico .....................................................................................................................10
1.7 Recolección de la información y metodología de trabajo ..................................................15
1.7.1 Instrumento de recolección de información ..............................................................16
1.7.2 Síntesis de las respuestas ..........................................................................................16
1.7.3 Análisis de la encuesta ..............................................................................................17
1.7.4 Metodología de trabajo .............................................................................................18
1.8 Cronograma de trabajo del semestre ..................................................................................19
- Análisis — Qué debe hacer el sistema .......................................................................................21
2.1 Historias de Usuario con criterios de aceptación ...............................................................21
2.2 Requisitos Funcionales, Reglas de Negocio y Requisitos No Funcionales .......................90
2.2.1 Reglas de Negocio ....................................................................................................90
2.2.2 Requisitos Funcionales .............................................................................................91
2.2.3 Requisitos No Funcionales .......................................................................................95
2.2.4 Trazabilidad resumida ...............................................................................................96
2.3 Modelo de datos y diagrama de clases ...............................................................................96
2.4 Casos de Uso: general completo ......................................................................................101
2.5 Casos de Uso críticos documentados ...............................................................................115
2.6 Mockups (UI/UX) ............................................................................................................118
2.6.1 Cobertura CRUD por entidad .................................................................................122
2.7 Matriz de trazabilidad (HU ↔ RF ↔ RN ↔ CU ↔ MK ↔ CA) ...................................123
Referencias ...................................................................................................................................128
Anexo A. Diccionario de datos ....................................................................................................129

## 6

- Concepción — Conocer el sistema antes de construirlo
1.1 Descripción del problema
En Nexa Servicios, el proceso de compras y gestión de proveedores presenta dificultades
debido a que la información y las actividades se manejan de manera dispersa y sin un
procedimiento único y estandarizado. Las solicitudes pueden realizarse por diferentes medios,
como WhatsApp, comunicaciones verbales, correo electrónico, Excel y Word, lo que dificulta
mantener un control organizado de todo el proceso.
Esta situación afecta la trazabilidad de las compras, ya que no siempre es claro quién
realizó una solicitud, quién la aprobó, quién estuvo encargado de gestionarla, qué proveedor
participó o en qué estado se encuentra el proceso. También existen dificultades para mantener
evidencia organizada de las decisiones y aprobaciones.
Además, se presentan problemas en aspectos importantes como el control del
presupuesto, la verificación de proveedores, la comparación de cotizaciones y el control de la
recepción de los productos o servicios. Por ejemplo, el estudio identificó que el 72,9 % de los
encuestados reportó que se trabaja con proveedores sin una verificación previa de manera
frecuente, ocasional o siempre. También se identificó dificultad para conocer el estado de las
compras y un nivel de dificultad de 4,10 sobre 5 en este aspecto.
El control de la recepción también presenta dificultades, con una valoración de 3,35 sobre
5, mientras que la comparación de cotizaciones constituye otra necesidad importante, con una
valoración de 4,58 sobre 5. Asimismo, el control presupuestal constituye una preocupación
relevante, especialmente frente a solicitudes que pueden superar los límites establecidos.
En consecuencia, el problema central es la falta de un proceso de compras y gestión de
proveedores centralizado, organizado, estandarizado y trazable, lo que genera dificultades para

## 7

controlar las solicitudes, identificar responsables, gestionar las aprobaciones, verificar
proveedores, controlar el presupuesto, comparar alternativas, realizar seguimiento y comprobar
la recepción de las compras.
## 1.2 Alcance
El sistema de información Compras y Proveedores de Nexa Servicios tendrá como
alcance la gestión centralizada y trazable del proceso de compras y de la información relacionada
con los proveedores, desde el registro de una solicitud de compra hasta el seguimiento de la
orden, recepción y facturación asociada.
Dentro del sistema se contempla la administración de usuarios, roles y permisos,
permitiendo controlar el acceso de las personas autorizadas y mantener la información necesaria
para identificar a los responsables de las diferentes actividades del proceso. También se
contempla el registro de auditoría para conservar evidencia de las operaciones relevantes
realizadas en el sistema. Las Historias de Usuario HU-01 a HU-11 reflejan estas actividades
administrativas y de trazabilidad.
El alcance también incluye la gestión de proveedores, permitiendo registrar, consultar,
actualizar y controlar su estado, con el propósito de mantener organizada la información
necesaria para las compras. Esto responde directamente a la problemática identificada sobre la
falta de uniformidad en la información y verificación de proveedores. Las HU-12 a HU-15
contemplan estas actividades.
En cuanto al proceso de compra, el sistema comprenderá la gestión de solicitudes de
compra, incluyendo su registro, consulta, actualización, inactivación, envío y cancelación, así
como la administración de sus detalles, prioridades, estados y tipos de ítem. Estas actividades

## 8

estarán asociadas al actor Empleado para la creación y gestión de solicitudes y permitirán
mantener la trazabilidad desde el inicio del proceso.
El alcance incluye igualmente la gestión de las aprobaciones de las solicitudes de compra,
donde el Jefe de Área podrá aprobar, rechazar o devolver solicitudes de acuerdo con las
condiciones establecidas, dejando registrada la decisión correspondiente. Esto permite atender la
necesidad de conservar evidencia de las decisiones y responsables del proceso.
También se incluye la gestión de cotizaciones, comprendiendo el registro, consulta,
actualización y selección de cotizaciones, junto con la información detallada de los productos o
servicios cotizados y los cálculos asociados. Esto permitirá centralizar la información necesaria
para comparar alternativas de compra, una de las necesidades identificadas en el análisis.
El sistema abarcará además la gestión de órdenes de compra, incluyendo su registro,
consulta, actualización, cancelación, detalles y cálculo de valores, con el propósito de formalizar
la adquisición seleccionada y facilitar su seguimiento.
Finalmente, el alcance contempla la gestión de la recepción de las compras y de las
facturas asociadas, incluyendo el registro y consulta de la recepción, control de cantidades
recibidas, verificación de conformidad frente a la orden de compra y registro, consulta,
actualización y validación de las facturas. Esto permite mantener la información relacionada con
las etapas posteriores a la generación de la orden.
## 1.3 Objetivo General
Desarrollar un sistema de información para Nexa Servicios que permita gestionar de
manera centralizada, organizada y trazable los procesos de compras y proveedores, con el
propósito de facilitar el seguimiento de las solicitudes, aprobaciones, cotizaciones, órdenes de

## 9

compra, recepciones y facturas, y mejorar el control de la información y de los responsables
involucrados en el proceso.
## 1.4 Objetivos Específicos
- Analizar el proceso actual de compras y gestión de proveedores de Nexa Servicios,
identificando las necesidades, actores, reglas, dificultades y requisitos relacionados con
las solicitudes, aprobaciones, cotizaciones, órdenes de compra, recepciones y facturas.
- Diseñar la solución de información para la gestión de compras y proveedores de Nexa
Servicios, definiendo los requisitos, historias de usuario, casos de uso, modelos de datos
y demás elementos necesarios para representar de manera organizada y trazable el
proceso.
- Construir el sistema de información para Nexa Servicios, implementando los procesos
definidos para la gestión centralizada de proveedores, solicitudes de compra,
aprobaciones, cotizaciones, órdenes de compra, recepciones y facturas, de acuerdo con
los requisitos establecidos.
- Validar el funcionamiento de la solución desarrollada mediante los criterios de
aceptación y los requisitos definidos, verificando la trazabilidad de la información y la
correcta gestión de los procesos contemplados en el alcance del proyecto.
1.5 Estado del arte
Actualmente existen diferentes soluciones comerciales orientadas a la gestión de compras
y proveedores. Entre los principales referentes se encuentran SAP Ariba, Oracle Fusion Cloud
Procurement y Odoo Purchase. SAP Ariba (SAP, s. f.) se destaca por la gestión integral de la
información, ciclo de vida, desempeño y riesgo de los proveedores. Oracle Fusion Cloud
Procurement (Oracle, s. f.) integra diferentes actividades relacionadas con el abastecimiento, las

## 10

solicitudes, las órdenes de compra, los proveedores y las aprobaciones. Por su parte, Odoo
Purchase (Odoo S.A., s. f.) permite gestionar solicitudes de cotización, comparar propuestas,
administrar órdenes de compra y controlar facturas de proveedores.
El análisis de estos referentes evidencia que la gestión centralizada de compras y
proveedores es un proceso que cuenta con soluciones tecnológicas consolidadas. Sin embargo, el
proyecto Compras y Proveedores – Nexa Servicios se plantea desde las necesidades específicas
identificadas en la organización y desde un alcance delimitado para el proyecto académico. En
particular, busca atender las dificultades relacionadas con la dispersión de las solicitudes, la
trazabilidad de los responsables y las decisiones, la gestión de aprobaciones, la verificación de
proveedores, la comparación de cotizaciones, el seguimiento de las compras y el control de la
recepción.
Por lo anterior, los referentes analizados sirven como base para reconocer prácticas y
funcionalidades existentes, mientras que el proyecto de Nexa Servicios busca desarrollar una
solución ajustada a sus necesidades, manteniendo la correspondencia entre las necesidades
identificadas, las historias de usuario, los requisitos, las reglas de negocio, los casos de uso y el
modelo de datos
1.6 Marco teórico
El proyecto Compras y Proveedores – Nexa Servicios se fundamenta en conceptos de
ingeniería de software, gestión de requisitos, trazabilidad y gestión del proceso de compras.
Estos fundamentos orientan el análisis, el diseño, la construcción y la validación de la solución, y
permiten mantener la correspondencia entre las necesidades identificadas y las funcionalidades
propuestas.

## 11

Ingeniería de software
La ingeniería de software proporciona los principios y prácticas necesarios para analizar
las necesidades de una organización, definir requisitos, diseñar una solución, construirla y
verificar que responda a las necesidades identificadas. En este proyecto, permite organizar el
desarrollo de la solución desde la identificación de la problemática de Nexa Servicios hasta la
construcción y validación del sistema.
Modelo-Vista-Controlador (MVC)
MVC (Modelo-Vista-Controlador) es un patrón de organización de software que separa
la aplicación en tres responsabilidades: el Modelo, encargado de representar los datos y la lógica
de la aplicación; la Vista, encargada de presentar la información al usuario; y el Controlador,
encargado de gestionar las solicitudes y coordinar la interacción entre la Vista y el Modelo. Esta
separación facilita la organización y mantenimiento de la aplicación (Microsoft, s. f.).
En Nexa Servicios, este concepto servirá como referencia para organizar la solución y
separar la presentación, la gestión de las solicitudes y la información relacionada con
proveedores, compras, cotizaciones, órdenes, recepciones y facturas.
Historias de Usuario (HU)
Las Historias de Usuario permiten expresar las necesidades del sistema desde la
perspectiva de los actores que interactúan con él. Se estructuran mediante la forma “Como [rol],
quiero [acción], para [beneficio]” y se complementan con criterios de aceptación que permiten
verificar si la necesidad fue satisfecha (Agile Business Consortium, s. f.).
En el proyecto, las HU constituyen uno de los principales mecanismos para documentar
las necesidades identificadas y sirven como base para definir los requisitos funcionales y

## 12

posteriormente relacionarlos con los casos de uso, diseño y validación. La plantilla establece que
cada HU debe contar con criterios de aceptación verificables.
Reglas de Negocio (RN)
Las Reglas de Negocio representan las condiciones y restricciones que deben cumplirse
dentro de los procesos de la organización. En Nexa Servicios permiten establecer las condiciones
que regulan actividades como las solicitudes de compra, aprobaciones, cotizaciones, órdenes,
recepción y facturación.
Estas reglas son importantes porque permiten que el sistema no solamente registre
información, sino que represente las condiciones bajo las cuales se desarrolla el proceso de
compras. La metodología del proyecto establece que las reglas deben ser rastreables hasta las
necesidades identificadas en la información obtenida del cliente.
Requisitos funcionales
Los Requisitos Funcionales (RF) describen las funciones y comportamientos que debe
proporcionar el sistema. En este proyecto se derivan de las Historias de Usuario y permiten
transformar las necesidades identificadas en comportamientos concretos que posteriormente
serán diseñados, construidos y validados.
La metodología definida para el proyecto establece que los RF deben mantener relación
con su Historia de Usuario de origen, permitiendo conservar la trazabilidad entre la necesidad y
la funcionalidad desarrollada.
## Trazabilidad
La trazabilidad permite relacionar los diferentes elementos del proyecto para conocer el
origen de una necesidad y su transformación durante el desarrollo del sistema. En Nexa
Servicios, este concepto es especialmente importante porque la problemática identificada incluye

## 13

dificultades para determinar quién realizó una solicitud, quién la aprobó, quién gestionó la
compra, qué proveedor participó y en qué estado se encuentra el proceso.
Por ello, el proyecto establece una relación entre los principales productos de trabajo:
Necesidad → HU → RF/RN → Caso de Uso → Diseño → Construcción → Validación.
Esta relación permite verificar que las funcionalidades desarrolladas tengan un origen
identificado y que puedan comprobarse posteriormente.
Gestión de Configuración de Software (GCS)
La Gestión de Configuración de Software (GCS) permite controlar la evolución de los
elementos que forman parte del proyecto, incluyendo sus versiones, cambios y líneas base. Su
propósito es mantener control sobre los productos desarrollados y conocer qué versión se
encuentra vigente (National Institute of Standards and Technology [NIST], s. f.).
En el proyecto Nexa Servicios, la GCS se aplica mediante el control de versiones del
documento, las líneas base (LB) y las solicitudes de cambio (CRF) establecidas en la
metodología del curso.
Gestión de compras y proveedores
La gestión de compras y proveedores comprende las actividades relacionadas con la
identificación de una necesidad de adquisición, la solicitud y evaluación de alternativas, la
selección de proveedores, la generación de órdenes, la recepción de los productos o servicios y la
gestión de la información asociada a las facturas.
En Nexa Servicios, este proceso constituye el dominio principal del sistema y busca
organizar un flujo que actualmente presenta dificultades de centralización, estandarización y
trazabilidad. El diagnóstico identificó problemas relacionados con la dispersión de solicitudes, la

## 14

identificación de responsables, las aprobaciones, la verificación de proveedores, la comparación
de cotizaciones, el seguimiento de compras y el control de la recepción.
## Proveedor
El proveedor es la persona natural o jurídica que suministra los productos o servicios
requeridos por la organización. Dentro del proyecto constituye una entidad fundamental del
proceso de compras, debido a su participación en las cotizaciones y adquisiciones.
La gestión de proveedores responde además a una necesidad identificada en Nexa
Servicios relacionada con la verificación previa de los proveedores, aspecto que forma parte de
las dificultades encontradas en el diagnóstico.
Solicitud de compra y aprobación
La solicitud de compra representa la necesidad formal de adquirir un producto o servicio.
Constituye uno de los primeros elementos del proceso y permite iniciar el flujo de adquisición.
La aprobación representa la decisión tomada por el responsable autorizado frente a una
solicitud. Puede implicar aprobar, rechazar o devolver la solicitud según las condiciones
establecidas.
Estos conceptos son relevantes para Nexa Servicios porque actualmente las solicitudes
pueden originarse mediante diferentes medios, como WhatsApp, comunicaciones verbales,
correo electrónico, Excel y Word, lo que dificulta mantener un proceso organizado y conservar
evidencia de las decisiones.
Cotización y orden de compra
La cotización representa la propuesta presentada por un proveedor para suministrar
determinados productos o servicios bajo unas condiciones establecidas. Su gestión permite
disponer de alternativas para realizar la selección correspondiente.

## 15

La orden de compra formaliza la adquisición con el proveedor seleccionado y contiene la
información necesaria para realizar el seguimiento de la compra.
En Nexa Servicios, estos conceptos son relevantes porque la comparación de cotizaciones
y la formalización de la orden de compra permiten seleccionar al proveedor con criterios
verificables y hacer seguimiento a cada adquisición hasta su recepción.
1.7 Recolección de la información y metodología de trabajo
La información utilizada para definir el proyecto Compras y Proveedores – Nexa
Servicios se obtuvo mediante un proceso de recolección y análisis de información sobre las
prácticas actuales de compras y gestión de proveedores. Como instrumento principal se utilizó
una encuesta dirigida a personas relacionadas con procesos de compras y gestión de proveedores,
con el propósito de identificar las dificultades existentes, las necesidades de información y los
aspectos del proceso que requieren mayor control y seguimiento.
Los resultados de la encuesta permitieron identificar problemas relacionados con la
formalización de las solicitudes, la trazabilidad de las compras, la gestión de aprobaciones, la
verificación de proveedores, la comparación de cotizaciones, el control presupuestal, el
seguimiento del estado de las compras y la recepción de productos o servicios.
A partir de los resultados obtenidos, el equipo realizó un análisis de las necesidades
encontradas y las utilizó como base para definir el problema, el alcance, los objetivos y las
Historias de Usuario del proyecto. De hecho, las HU desarrolladas registran como origen el
análisis de las secciones correspondientes del documento de Ingeniería de Requisitos, donde se
consolidaron los problemas identificados, las necesidades del sistema y las conclusiones de la
encuesta.

## 16

1.7.1 Instrumento de recolección de información
Para la recolección de información del proyecto Compras y Proveedores – Nexa
Servicios, se utilizó un instrumento de recolección de información mediante un formulario
dirigido a personas relacionadas con el proceso de compras de la organización. El instrumento
permitió identificar cómo se realizan actualmente las solicitudes de compra, quiénes participan
en las aprobaciones, cómo se gestionan los proveedores y cuáles son las principales dificultades
del proceso.
El formulario registró 47 respuestas, realizadas entre el 21 y el 25 de abril de 2026.
La ficha técnica del instrumento aplicado se resume en la Tabla 2.
## Tabla 2
Ficha técnica del instrumento de recolección de información
## Elemento Descripción
Tipo de instrumento Encuesta aplicada mediante formulario.
Población objetivo Personas relacionadas con el proceso de compras y la gestión de proveedores de Nexa Servicios.
Respuestas obtenidas 47
Período de aplicación Del 21 al 25 de abril de 2026.
## Objetivo
Identificar las dificultades existentes, las necesidades de información y los aspectos del proceso
que requieren mayor control y seguimiento.
Temas consultados
Forma en que se realizan las solicitudes de compra, participantes en las aprobaciones, gestión de
proveedores y principales dificultades del proceso.
Uso de los resultados Definición del problema, el alcance, los objetivos y las Historias de Usuario (sección 1.7.3).
Nota. Elaboración propia a partir de la información de la encuesta descrita en esta sección.
1.7.2 Síntesis de las respuestas
Las respuestas obtenidas evidencian dificultades en la organización y formalización del
proceso de compras de Nexa Servicios. Se identificó la necesidad de centralizar la información,
realizar seguimiento a las solicitudes, controlar las aprobaciones y mantener un registro
organizado de los proveedores.

## 17

También se evidenciaron necesidades relacionadas con el control presupuestal, la
verificación de proveedores, la comparación de cotizaciones, el seguimiento del estado de las
compras y el control de la recepción de los productos o servicios.
En general, los resultados muestran la necesidad de contar con un proceso de compras
más organizado, centralizado y trazable, que permita conservar el historial de las solicitudes y las
decisiones tomadas durante el proceso.
1.7.3 Análisis de la encuesta
En conjunto, las respuestas permitieron establecer que el sistema debe atender
principalmente la centralización y trazabilidad del proceso de compras y proveedores,
incluyendo solicitudes, aprobaciones, proveedores, cotizaciones, órdenes de compra y recepción.
Estas necesidades dieron origen a las historias de usuario, requisitos funcionales, reglas de
negocio, casos de uso y modelo de datos del proyecto. La relación se fundamenta en los
problemas y necesidades identificados en el análisis de la encuesta, especialmente la dificultad
para hacer seguimiento a las compras, verificar proveedores, comparar cotizaciones y controlar
la recepción.
La relación entre cada necesidad detectada y las Historias de Usuario que la atienden se
presenta a continuación; con ella se verifica que ninguna HU surge sin una necesidad de origen.

## 18

## Tabla 3
Necesidades detectadas en la encuesta y Historias de Usuario que las atienden
Necesidad detectada HU que la atienden Forma en que se atiende
Formalización de las solicitudes de compra HU-40 a HU-49
Registro, consulta, actualización, envío y cancelación
de solicitudes con su detalle de productos o servicios.
Gestión de aprobaciones HU-28 a HU-31, HU-50 a HU-53
Decisiones de aprobar, rechazar o devolver con motivo
y consulta del historial de decisiones.
Verificación de proveedores HU-12 a HU-15
Registro de proveedores con identificación fiscal única
y control de su estado.
Comparación de cotizaciones HU-54 a HU-63
Registro de cotizaciones por proveedor, precios por
ítem, cálculo de totales y selección de la cotización.
Seguimiento del estado de las compras
HU-16 a HU-19, HU-32 a HU-39,
HU-41, HU-44, HU-45, HU-64 a
## HU-73
Catálogos de estados y órdenes de compra asociadas a
la solicitud y a la cotización seleccionada.
Control de la recepción de productos o
servicios
HU-74 a HU-81
Registro de cantidades recibidas y aceptadas, cálculo
de rechazos y verificación de conformidad.
Control presupuestal
## HU-46, HU-58, HU-63, HU-68, HU-
## 73, HU-86
Atención parcial: valores estimados por ítem y cálculo
automático de subtotales y totales.
Trazabilidad de las compras
HU-10, HU-11, HU-53, HU-82 a
## HU-86
Bitácora de auditoría, historial de decisiones y facturas
asociadas a la orden y al proveedor.
Control de acceso y responsabilidades
## (transversal)
HU-01 a HU-09
Roles, usuarios e inicio de sesión para que cada acción
quede asociada a un responsable.
Nota. Elaboración propia. Las necesidades corresponden a las identificadas en la sección 1.7; el
control presupuestal queda atendido de forma parcial porque el alcance no incluye la gestión de
presupuestos.
1.7.4 Metodología de trabajo
El proyecto se desarrollará mediante una metodología en cascada dirigida por plan,
siguiendo la Ruta Oficial del Curso y estableciendo puntos de control para verificar los
resultados de cada etapa antes de avanzar a la siguiente.
El trabajo inicia con la concepción y análisis del problema, a partir de la información
recopilada sobre el proceso de compras y proveedores de Nexa Servicios. Posteriormente, se
realizará la captura y especificación de requisitos mediante Historias de Usuario (HU) y criterios
de aceptación, procurando que cada funcionalidad tenga relación con una necesidad previamente
identificada.
Luego se continuará con las etapas de diseño y construcción, desarrollando los modelos,
estructuras y componentes necesarios para implementar la solución. En cada etapa se realizarán

## 19

puntos de control para revisar los entregables y verificar su correspondencia con los requisitos
definidos.
De manera transversal se aplicará la Gestión de Configuración de Software (GCS)
mediante el control de versiones, líneas base y CRF (Control de Solicitudes de Cambio), con el
propósito de mantener controladas las modificaciones realizadas durante el desarrollo del
proyecto.
Esta metodología permite mantener una relación trazable entre las necesidades
identificadas, historias de usuario, criterios de aceptación, requisitos, diseño, construcción y
validación, siguiendo la Ruta Oficial establecida para el curso.
1.8 Cronograma de trabajo del semestre
## Tabla 4
Cronograma de trabajo del semestre
Actividad (paso de la
ruta)
## Semana(s) Responsable(s) Entregable
0.1 Descripción del
problema y alcance
14–20 ago. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Problema, contexto,
alcance y delimitación.
0.2 Objetivo general y
objetivos específicos
21–27 ago. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Objetivos del proyecto.
0.3 Estado del arte y
marco teórico
28 ago.–3 sep.
## 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Referentes y
fundamentos técnicos/del dominio.
0.4 Recolección de
información y
metodología
4–10 sep. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Instrumento, síntesis,
análisis y metodología.
0.5 Cronograma de
trabajo del semestre
11–17 sep. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Planificación y control.
- HU + criterios de
aceptación
18–24 sep. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). HU-01 a HU-86 con CA
verificables.

## 20

Actividad (paso de la
ruta)
## Semana(s) Responsable(s) Entregable
## 2. RF + RN + RNF
25 sep.–1 oct.
## 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). RF, RN y RNF.
- Casos de Uso: general
y críticos
2–8 oct. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). CU general y 6 CU
críticos.
- Mockups UI/UX 9–15 oct. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Vistas principales y
relación HU–CU–UI.
Punto de control de
análisis
16–22 oct. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Revisión de trazabilidad
y correcciones.
Diccionario y MER 23–29 oct. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Modelo de datos y reglas
de integridad.
Diagrama de clases y
arquitectura
30 oct.–5 nov.
## 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Diseño UML y
estructura de solución.
Construcción inicial 6–12 nov. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Implementación inicial.
Integración y pruebas 13–19 nov. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Pruebas y correcciones.
Trazabilidad, GCS y
documentación final
20–26 nov. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas).
HU→RF/RN/RNF→CU→diseño→construcción→validación.
Cierre y entrega 27–30 nov. 2026
## Pedro Juan
## Campuzano Echeverri
y Simón Atencio
## Posada
12 h (4 presenciales + 8 autónomas). Revisión final y entrega.
Total del semestre 16 semanas
192 horas: 64
presenciales + 128
autónomas
Entregables de las fases 0, 1 y avance de construcción


## 21

- Análisis — Qué debe hacer el sistema
2.1 Historias de Usuario con criterios de aceptación
Las Historias de Usuario y los casos de uso se redactan con los actores del negocio. La
Tabla 5 establece su equivalencia con los roles registrados en la tabla roles de la base de datos
nexa_servicios, para que ambos documentos se lean con la misma terminología.
## Tabla 5
Equivalencia entre los actores de las HU y los roles de la base de datos
Actor en HU y CU Rol en la base de datos HU en las que participa
Administrador Administrador HU-01 a HU-31
Empleado Solicitante HU-40 a HU-49
Jefe de Área Aprobador HU-50 a HU-53
Responsable de Compras Comprador HU-32 a HU-39, HU-54 a HU-73 y HU-82 a HU-86
Responsable de Compras (al recibir) Receptor HU-74 a HU-81
Nota. Elaboración propia. Los diagramas de casos de uso (Figuras 6 a 18) conservan el nombre
del actor usado en las HU.

## 22

## Tabla 6
Historia de usuario HU-01: Registrar rol
Código HU-01
Título corto Registrar rol
## Historia
Como Administrador, quiero registrar la información requerida de rol,
para mantener definidos los permisos y responsabilidades del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Administrador registra el rol
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La operación debe respetar las referencias, unicidades y restricciones definidas en el
diccionario de datos.

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Administrador intenta registrar el rol
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-01
## Prioridad Media

## 23

## Tabla 7
Historia de usuario HU-02: Consultar roles disponibles
Código HU-02
Título corto Consultar roles disponibles
## Historia
Como Administrador, quiero consultar la información de roles
disponibles, para mantener definidos los permisos y responsabilidades
del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Administrador realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Administrador realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-02
## Prioridad Baja
## Tabla 8
Historia de usuario HU-03: Actualizar rol
Código HU-03
Título corto Actualizar rol
## Historia
Como Administrador, quiero actualizar la información de rol cuando sea
necesario, para mantener la información vigente para el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Administrador guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Administrador intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-03
## Prioridad Media

## 24

## Tabla 9
Historia de usuario HU-04: Cambiar estado de rol
Código HU-04
Título corto Cambiar estado de rol
## Historia
Como Administrador, quiero cambiar el estado de rol de acuerdo con el
proceso, para mantener trazabilidad sobre la situación actual del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Administrador selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Administrador intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-04
## Prioridad Baja
## Tabla 10
Historia de usuario HU-05: Iniciar sesión
Código HU-05
Título corto Iniciar sesión
## Historia
Como Administrador, quiero iniciar sesión con sus credenciales, para
acceder al sistema según sus permisos.
Criterios de
aceptación
## Antecedentes:
No aplica: esta historia corresponde al ingreso al sistema.
Escenario: CA-1 Inicio de sesión válido
Dado que las credenciales corresponden a un usuario habilitado
Cuando el Administrador ingresa sus credenciales correctas
Entonces el sistema permite el acceso según los permisos del rol y confirma el inicio de sesión
(método iniciarSesion()).

Escenario: CA-2 Credenciales inválidas o usuario no habilitado
Dado que las credenciales son inválidas o el usuario no está habilitado
Cuando el Administrador intenta iniciar sesión
Entonces el sistema rechaza el acceso e informa el motivo.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-05
## Prioridad Alta

## 25

## Tabla 11
Historia de usuario HU-06: Registrar usuario
Código HU-06
Título corto Registrar usuario
## Historia
Como Administrador, quiero registrar la información requerida de
usuario, para controlar el acceso y mantener actualizada la información
de las personas autorizadas.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Administrador registra el usuario
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y El rol asignado debe existir y la contraseña debe almacenarse mediante un hash seguro (RN06,
## RN29).

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Administrador intenta registrar el usuario
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-06
## Prioridad Alta

## 26

## Tabla 12
Historia de usuario HU-07: Consultar usuarios del sistema
Código HU-07
Título corto Consultar usuarios del sistema
## Historia
Como Administrador, quiero consultar la información de usuarios del
sistema, para controlar el acceso y mantener actualizada la información
de las personas autorizadas.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Administrador realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Administrador realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-07
## Prioridad Baja
## Tabla 13
Historia de usuario HU-08: Actualizar usuario
Código HU-08
Título corto Actualizar usuario
## Historia
Como Administrador, quiero actualizar la información de usuario cuando
sea necesario, para mantener la información vigente para el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Administrador guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Administrador intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-08
## Prioridad Media

## 27

## Tabla 14
Historia de usuario HU-09: Cambiar estado de usuario
Código HU-09
Título corto Cambiar estado de usuario
## Historia
Como Administrador, quiero cambiar el estado de usuario de acuerdo
con el proceso, para mantener trazabilidad sobre la situación actual del
proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Administrador selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Administrador intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-09
## Prioridad Baja

## 28

## Tabla 15
Historia de usuario HU-10: Registrar evento de auditoría
Código HU-10
Título corto Registrar evento de auditoría
## Historia
Como Administrador, quiero registrar la información correspondiente,
para conservar evidencia de las operaciones realizadas.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Administrador registra el evento de auditoría
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La operación debe respetar las referencias, unicidades y restricciones definidas en el
diccionario de datos.

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Administrador intenta registrar el evento de auditoría
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-10
## Prioridad Media

## 29

## Tabla 16
Historia de usuario HU-11: Consultar acciones realizadas
Código HU-11
Título corto Consultar acciones realizadas
## Historia
Como Administrador, quiero consultar la información de acciones
realizadas, para conservar evidencia de las operaciones relevantes y
facilitar la trazabilidad.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Administrador realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Administrador realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-11
## Prioridad Baja

## 30

## Tabla 17
Historia de usuario HU-12: Registrar proveedor
Código HU-12
Título corto Registrar proveedor
## Historia
Como Administrador, quiero registrar la información requerida de
proveedor, para mantener organizada la información necesaria para las
compras.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Administrador registra el proveedor
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La identificación fiscal no puede estar duplicada y deben existir como mínimo nombre,
identificación fiscal y teléfono (RN01, RN02).

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Administrador intenta registrar el proveedor
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-12
## Prioridad Alta

## 31

## Tabla 18
Historia de usuario HU-13: Consultar proveedores registrados
Código HU-13
Título corto Consultar proveedores registrados
## Historia
Como Administrador, quiero consultar la información de proveedores
registrados, para mantener organizada la información necesaria para las
compras.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Administrador realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Administrador realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-13
## Prioridad Baja

## 32

## Tabla 19
Historia de usuario HU-14: Actualizar proveedor
Código HU-14
Título corto Actualizar proveedor
## Historia
Como Administrador, quiero actualizar la información de proveedor
cuando sea necesario, para mantener la información vigente para el
proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Administrador guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Administrador intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-14
## Prioridad Media

## 33

## Tabla 20
Historia de usuario HU-15: Cambiar estado de proveedor
Código HU-15
Título corto Cambiar estado de proveedor
## Historia
Como Administrador, quiero cambiar el estado de proveedor de acuerdo
con el proceso, para mantener trazabilidad sobre la situación actual del
proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Administrador selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Administrador intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-15
## Prioridad Alta

## 34

## Tabla 21
Historia de usuario HU-16: Registrar estado de solicitud
Código HU-16
Título corto Registrar estado de solicitud
## Historia
Como Administrador, quiero registrar la información requerida de estado
de solicitud, para mantener controlado el flujo de las solicitudes de
compra.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Administrador registra el estado de solicitud
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La operación debe respetar las referencias, unicidades y restricciones definidas en el
diccionario de datos.

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Administrador intenta registrar el estado de solicitud
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-16
## Prioridad Baja

## 35

## Tabla 22
Historia de usuario HU-17: Consultar estados del proceso de solicitud
Código HU-17
Título corto Consultar estados del proceso de solicitud
## Historia
Como Administrador, quiero consultar la información de estados del
proceso de solicitud, para mantener controlado el flujo de las solicitudes
de compra.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Administrador realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Administrador realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-17
## Prioridad Baja

## 36

## Tabla 23
Historia de usuario HU-18: Actualizar estado de solicitud
Código HU-18
Título corto Actualizar estado de solicitud
## Historia
Como Administrador, quiero actualizar la información de estado de
solicitud cuando sea necesario, para mantener la información vigente
para el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Administrador guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Administrador intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-18
## Prioridad Media

## 37

## Tabla 24
Historia de usuario HU-19: Activar o inactivar estado de solicitud
Código HU-19
Título corto Activar o inactivar estado de solicitud
## Historia
Como Administrador, quiero cambiar el estado de estado de solicitud de
acuerdo con el proceso, para mantener trazabilidad sobre la situación
actual del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Administrador selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Administrador intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-19
## Prioridad Baja

## 38

## Tabla 25
Historia de usuario HU-20: Registrar prioridad
Código HU-20
Título corto Registrar prioridad
## Historia
Como Administrador, quiero registrar la información requerida de
prioridad, para clasificar las solicitudes de acuerdo con su importancia.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Administrador registra el prioridad
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La operación debe respetar las referencias, unicidades y restricciones definidas en el
diccionario de datos.

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Administrador intenta registrar el prioridad
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-20
## Prioridad Media
## Tabla 26
Historia de usuario HU-21: Consultar prioridades disponibles
Código HU-21
Título corto Consultar prioridades disponibles
## Historia
Como Administrador, quiero consultar la información de prioridades
disponibles, para clasificar las solicitudes de acuerdo con su importancia.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Administrador realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Administrador realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-21
## Prioridad Baja

## 39

## Tabla 27
Historia de usuario HU-22: Actualizar prioridad
Código HU-22
Título corto Actualizar prioridad
## Historia
Como Administrador, quiero actualizar la información de prioridad
cuando sea necesario, para mantener la información vigente para el
proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Administrador guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Administrador intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-22
## Prioridad Media

## 40

## Tabla 28
Historia de usuario HU-23: Cambiar estado de prioridad
Código HU-23
Título corto Cambiar estado de prioridad
## Historia
Como Administrador, quiero cambiar el estado de prioridad de acuerdo
con el proceso, para mantener trazabilidad sobre la situación actual del
proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Administrador selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Administrador intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-23
## Prioridad Baja

## 41

## Tabla 29
Historia de usuario HU-24: Registrar tipo de ítem
Código HU-24
Título corto Registrar tipo de ítem
## Historia
Como Administrador, quiero registrar la información requerida de tipo de
ítem, para clasificar correctamente los elementos solicitados.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Administrador registra el tipo de ítem
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La operación debe respetar las referencias, unicidades y restricciones definidas en el
diccionario de datos.

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Administrador intenta registrar el tipo de ítem
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-24
## Prioridad Baja

## 42

## Tabla 30
Historia de usuario HU-25: Consultar tipos de producto o servicio
Código HU-25
Título corto Consultar tipos de producto o servicio
## Historia
Como Administrador, quiero consultar la información de tipos de
producto o servicio, para clasificar correctamente los elementos
solicitados.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Administrador realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Administrador realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-25
## Prioridad Baja

## 43

## Tabla 31
Historia de usuario HU-26: Actualizar tipo de ítem
Código HU-26
Título corto Actualizar tipo de ítem
## Historia
Como Administrador, quiero actualizar la información de tipo de ítem
cuando sea necesario, para mantener la información vigente para el
proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Administrador guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Administrador intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-26
## Prioridad Baja

## 44

## Tabla 32
Historia de usuario HU-27: Cambiar estado de tipo de ítem
Código HU-27
Título corto Cambiar estado de tipo de ítem
## Historia
Como Administrador, quiero cambiar el estado de tipo de ítem de
acuerdo con el proceso, para mantener trazabilidad sobre la situación
actual del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Administrador selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Administrador intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-27
## Prioridad Baja

## 45

## Tabla 33
Historia de usuario HU-28: Registrar tipo de decisión
Código HU-28
Título corto Registrar tipo de decisión
## Historia
Como Administrador, quiero registrar la información requerida de tipo de
decisión, para mantener estandarizadas las decisiones del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Administrador registra el tipo de decisión
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La operación debe respetar las referencias, unicidades y restricciones definidas en el
diccionario de datos.

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Administrador intenta registrar el tipo de decisión
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-28
## Prioridad Baja
## Tabla 34
Historia de usuario HU-29: Consultar decisiones de aprobación
Código HU-29
Título corto Consultar decisiones de aprobación
## Historia
Como Administrador, quiero consultar la información de decisiones de
aprobación, para mantener estandarizadas las decisiones del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Administrador realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Administrador realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-29
## Prioridad Baja

## 46

## Tabla 35
Historia de usuario HU-30: Actualizar tipo de decisión
Código HU-30
Título corto Actualizar tipo de decisión
## Historia
Como Administrador, quiero actualizar la información de tipo de
decisión cuando sea necesario, para mantener la información vigente para
el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Administrador guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Administrador intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-30
## Prioridad Baja

## 47

## Tabla 36
Historia de usuario HU-31: Cambiar estado de tipo de decisión
Código HU-31
Título corto Cambiar estado de tipo de decisión
## Historia
Como Administrador, quiero cambiar el estado de tipo de decisión de
acuerdo con el proceso, para mantener trazabilidad sobre la situación
actual del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Administrador selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Administrador intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-31
## Prioridad Baja

## 48

## Tabla 37
Historia de usuario HU-32: Consultar estados de las cotizaciones
Código HU-32
Título corto Consultar estados de las cotizaciones
## Historia
Como Responsable de Compras, quiero consultar la información de
estados de las cotizaciones, para mantener controlado el ciclo de las
cotizaciones.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-32
## Prioridad Baja

## 49

## Tabla 38
Historia de usuario HU-33: Activar o inactivar estado de cotización
Código HU-33
Título corto Activar o inactivar estado de cotización
## Historia
Como Responsable de Compras, quiero cambiar el estado de estado de
cotización de acuerdo con el proceso, para mantener trazabilidad sobre la
situación actual del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Responsable de Compras selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Responsable de Compras intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-33
## Prioridad Baja

## 50

## Tabla 39
Historia de usuario HU-34: Consultar estados de las órdenes de compra
Código HU-34
Título corto Consultar estados de las órdenes de compra
## Historia
Como Responsable de Compras, quiero consultar la información de
estados de las órdenes de compra, para dar seguimiento al ciclo de las
órdenes.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-34
## Prioridad Baja

## 51

## Tabla 40
Historia de usuario HU-35: Activar o inactivar estado de orden
Código HU-35
Título corto Activar o inactivar estado de orden
## Historia
Como Responsable de Compras, quiero cambiar el estado de estado de
orden de acuerdo con el proceso, para mantener trazabilidad sobre la
situación actual del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Responsable de Compras selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Responsable de Compras intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-35
## Prioridad Baja

## 52

## Tabla 41
Historia de usuario HU-36: Consultar estados de recepción
Código HU-36
Título corto Consultar estados de recepción
## Historia
Como Responsable de Compras, quiero consultar la información de
estados de recepción, para controlar el avance de la recepción de las
compras.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-36
## Prioridad Baja

## 53

## Tabla 42
Historia de usuario HU-37: Activar o inactivar estado de recepción
Código HU-37
Título corto Activar o inactivar estado de recepción
## Historia
Como Responsable de Compras, quiero cambiar el estado de estado de
recepción de acuerdo con el proceso, para mantener trazabilidad sobre la
situación actual del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Responsable de Compras selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Responsable de Compras intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-37
## Prioridad Baja
## Tabla 43
Historia de usuario HU-38: Consultar estados de las facturas
Código HU-38
Título corto Consultar estados de las facturas
## Historia
Como Responsable de Compras, quiero consultar la información de
estados de las facturas, para dar seguimiento al estado de las facturas.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-38
## Prioridad Baja

## 54

## Tabla 44
Historia de usuario HU-39: Activar o inactivar estado de factura
Código HU-39
Título corto Activar o inactivar estado de factura
## Historia
Como Responsable de Compras, quiero cambiar el estado de estado de
factura de acuerdo con el proceso, para mantener trazabilidad sobre la
situación actual del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Estado válido
Dado que el nuevo estado existe en el catálogo correspondiente
Cuando Responsable de Compras selecciona el nuevo estado
Entonces el sistema actualiza el estado del registro y conserva la operación para trazabilidad
(RN19 y método cambiarEstado()).

Escenario: CA-2 Estado inválido
Dado que el estado solicitado no pertenece al catálogo correspondiente
Cuando Responsable de Compras intenta cambiar el estado
Entonces el sistema rechaza la operación e informa el motivo (RN19).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-39
## Prioridad Baja

## 55

## Tabla 45
Historia de usuario HU-40: Registrar solicitud de compra
Código HU-40
Título corto Registrar solicitud de compra
## Historia
Como Empleado, quiero registrar la información requerida de solicitud
de compra, para formalizar y dar trazabilidad al proceso de adquisición.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Empleado registra el solicitud de compra
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La operación debe respetar las referencias, unicidades y restricciones definidas en el
diccionario de datos.

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Empleado intenta registrar el solicitud de compra
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-40
## Prioridad Alta
## Tabla 46
Historia de usuario HU-41: Consultar solicitudes de compra
Código HU-41
Título corto Consultar solicitudes de compra
## Historia
Como Empleado, quiero consultar la información de solicitudes de
compra, para formalizar y dar trazabilidad al proceso de adquisición.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Empleado realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Empleado realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-41
## Prioridad Baja

## 56

## Tabla 47
Historia de usuario HU-42: Actualizar solicitud de compra
Código HU-42
Título corto Actualizar solicitud de compra
## Historia
Como Empleado, quiero actualizar la información de solicitud de compra
cuando sea necesario, para mantener la información vigente para el
proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Empleado guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Empleado intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-42
## Prioridad Media
## Tabla 48
Historia de usuario HU-43: Eliminar solicitud de compra
Código HU-43
Título corto Eliminar solicitud de compra
## Historia
Como Empleado, quiero inactivar una solicitud de compra que ya no corresponda al proceso, para
conservar el historial y evitar que el registro siga disponible para nuevas operaciones.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para gestionarlo
## (RN06).
Escenario: CA-1 Inactivación permitida
Dado que la operación está permitida por las relaciones y dependencias del registro
Cuando Empleado solicita inactivarlo
Entonces el sistema cambia el estado del registro a Inactivo, conserva su historial y evita su
selección en nuevas operaciones; no elimina físicamente el registro.

Escenario: CA-2 Eliminación no permitida
Dado que existen dependencias que impiden la eliminación
Cuando Empleado intenta inactivar el registro
Entonces el sistema rechaza la operación e informa el motivo (RN28).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-43
## Prioridad Media

## 57

## Tabla 49
Historia de usuario HU-44: Enviar solicitud de compra
Código HU-44
Título corto Enviar solicitud de compra
## Historia
Como Empleado, quiero enviar una solicitud de compra para continuar el
proceso, para formalizar la solicitud y dejarla disponible para su gestión.
Criterios de
aceptación
## Antecedentes:
Dado que la solicitud está registrada con la información requerida y el Empleado está autorizado
## (RN06, RN09).
Escenario: CA-1 Envío permitido
Dado que la solicitud cumple las condiciones para continuar el proceso
Cuando el Empleado solicita enviarla
Entonces el sistema cambia la solicitud al estado definido para continuar y registra la operación
(método enviar()).

Escenario: CA-2 Envío no permitido
Dado que la solicitud no cumple las condiciones para ser enviada
Cuando el Empleado intenta enviarla
Entonces el sistema rechaza la operación e informa el motivo.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-44
## Prioridad Alta
## Tabla 50
Historia de usuario HU-45: Cancelar solicitud de compra
Código HU-45
Título corto Cancelar solicitud de compra
## Historia
Como Empleado, quiero cancelar un solicitud de compra cuando ya no
deba continuar, para evitar que una operación que ya no es necesaria
continúe en el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que la solicitud existe y el usuario cuenta con permisos para gestionarla (RN06).
Escenario: CA-1 Cancelación permitida
Dado que la solicitud se encuentra en un estado que permite su cancelación
Cuando Empleado solicita cancelarla
Entonces el sistema cambia al estado de cancelación definido, conserva el registro y registra la
operación (RN19 y método cancelar()).

Escenario: CA-2 Cancelación no permitida
Dado que la solicitud no puede cancelarse en su estado actual
Cuando Empleado intenta cancelarla
Entonces el sistema rechaza la operación e informa el motivo.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-45
## Prioridad Alta

## 58

## Tabla 51
Historia de usuario HU-46: Registrar detalle de solicitud
Código HU-46
Título corto Registrar detalle de solicitud
## Historia
Como Empleado, quiero registrar la información requerida de detalle de
solicitud, para mantener el detalle de cada solicitud.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Empleado registra el detalle de solicitud
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La cantidad solicitada debe ser válida y mayor que cero (RN05).

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Empleado intenta registrar el detalle de solicitud
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-46
## Prioridad Media
## Tabla 52
Historia de usuario HU-47: Consultar productos o servicios solicitados
Código HU-47
Título corto Consultar productos o servicios solicitados
## Historia
Como Empleado, quiero consultar la información de productos o
servicios solicitados, para mantener el detalle de cada solicitud.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Empleado realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Empleado realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-47
## Prioridad Baja

## 59

## Tabla 53
Historia de usuario HU-48: Actualizar detalle de solicitud
Código HU-48
Título corto Actualizar detalle de solicitud
## Historia
Como Empleado, quiero actualizar la información de detalle de solicitud
cuando sea necesario, para mantener la información vigente para el
proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Empleado guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Empleado intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-48
## Prioridad Media
## Tabla 54
Historia de usuario HU-49: Eliminar detalle de solicitud
Código HU-49
Título corto Eliminar detalle de solicitud
## Historia
Como Empleado, quiero inactivar un detalle de solicitud que ya no corresponda al proceso, para
conservar el historial y evitar que el registro siga disponible para nuevas operaciones.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para gestionarlo
## (RN06).
Escenario: CA-1 Inactivación permitida
Dado que la operación está permitida por las relaciones y dependencias del registro
Cuando Empleado solicita inactivarlo
Entonces el sistema cambia el estado del registro a Inactivo, conserva su historial y evita su
selección en nuevas operaciones; no elimina físicamente el registro.

Escenario: CA-2 Eliminación no permitida
Dado que existen dependencias que impiden la eliminación
Cuando Empleado intenta inactivar el registro
Entonces el sistema rechaza la operación e informa el motivo (RN28).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-49
## Prioridad Media

## 60

## Tabla 55
Historia de usuario HU-50: Aprobar solicitud de compra
Código HU-50
Título corto Aprobar solicitud de compra
## Historia
Como Jefe de Área, quiero aprobar una solicitud de compra que cumple
las condiciones del proceso, para dejar registrada la autorización
correspondiente.
Criterios de
aceptación
## Antecedentes:
Dado que el Jefe de Área ha iniciado sesión, cuenta con permisos y la solicitud está en un estado
que permite tomar una decisión (RN06, RN19).
Escenario: CA-1 Decisión Aprobada
Dado que la solicitud cumple las condiciones para aprobarla
Cuando el Jefe de Área selecciona la opción correspondiente
Entonces el sistema registra la decisión Aprobada asociada a la solicitud y al responsable,
utilizando un tipo de decisión válido (RN18 y método aprobar()).

Escenario: CA-2 Estado no permitido
Dado que la solicitud no se encuentra en un estado que permita aprobarla
Cuando el Jefe de Área intenta realizar la decisión
Entonces el sistema rechaza la operación e informa el motivo.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-50
## Prioridad Alta

## 61

## Tabla 56
Historia de usuario HU-51: Rechazar solicitud de compra
Código HU-51
Título corto Rechazar solicitud de compra
## Historia
Como Jefe de Área, quiero rechazar una solicitud de compra que no debe
continuar, para dejar evidencia de la decisión tomada.
Criterios de
aceptación
## Antecedentes:
Dado que el Jefe de Área ha iniciado sesión, cuenta con permisos y la solicitud está en un estado
que permite tomar una decisión (RN06, RN19).
Escenario: CA-1 Decisión Rechazada
Dado que la solicitud cumple las condiciones para rechazarla
Cuando el Jefe de Área selecciona la opción correspondiente
Entonces el sistema registra la decisión Rechazada asociada a la solicitud y al responsable,
utilizando un tipo de decisión válido (RN18 y método rechazar()).

Escenario: CA-2 Estado no permitido
Dado que la solicitud no se encuentra en un estado que permita rechazarla
Cuando el Jefe de Área intenta realizar la decisión
Entonces el sistema rechaza la operación e informa el motivo.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-51
## Prioridad Alta

## 62

## Tabla 57
Historia de usuario HU-52: Devolver solicitud de compra
Código HU-52
Título corto Devolver solicitud de compra
## Historia
Como Jefe de Área, quiero devolver una solicitud para que sea revisada o
corregida, para permitir que la solicitud continúe después de atender las
observaciones.
Criterios de
aceptación
## Antecedentes:
Dado que el Jefe de Área ha iniciado sesión, cuenta con permisos y la solicitud está en un estado
que permite tomar una decisión (RN06, RN19).
Escenario: CA-1 Decisión Devuelta
Dado que la solicitud cumple las condiciones para devolverla
Cuando el Jefe de Área selecciona la opción correspondiente
Entonces el sistema registra la decisión Devuelta asociada a la solicitud y al responsable,
utilizando un tipo de decisión válido (RN18 y método devolver()).

Escenario: CA-2 Estado no permitido
Dado que la solicitud no se encuentra en un estado que permita devolverla
Cuando el Jefe de Área intenta realizar la decisión
Entonces el sistema rechaza la operación e informa el motivo.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-52
## Prioridad Alta

## 63

## Tabla 58
Historia de usuario HU-53: Consultar decisiones asociadas a una solicitud
Código HU-53
Título corto Consultar decisiones asociadas a una solicitud
## Historia
Como Jefe de Área, quiero consultar la información de decisiones
asociadas a una solicitud, para dejar evidencia de las decisiones tomadas
sobre las compras.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Jefe de Área realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Jefe de Área realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-53
## Prioridad Baja

## 64

## Tabla 59
Historia de usuario HU-54: Registrar cotización
Código HU-54
Título corto Registrar cotización
## Historia
Como Responsable de Compras, quiero registrar la información
requerida de cotización, para centralizar la información necesaria para
comparar alternativas de compra.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Responsable de Compras registra el cotización
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La cotización debe estar asociada a una solicitud y a un proveedor existentes (RN10).

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Responsable de Compras intenta registrar el cotización
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-54
## Prioridad Alta

## 65

## Tabla 60
Historia de usuario HU-55: Consultar cotizaciones de proveedores
Código HU-55
Título corto Consultar cotizaciones de proveedores
## Historia
Como Responsable de Compras, quiero consultar la información de
cotizaciones de proveedores, para centralizar la información necesaria
para comparar alternativas de compra.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-55
## Prioridad Baja

## 66

## Tabla 61
Historia de usuario HU-56: Actualizar cotización
Código HU-56
Título corto Actualizar cotización
## Historia
Como Responsable de Compras, quiero actualizar la información de
cotización cuando sea necesario, para mantener la información vigente
para el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Responsable de Compras guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Responsable de Compras intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-56
## Prioridad Media

## 67

## Tabla 62
Historia de usuario HU-57: Seleccionar cotización
Código HU-57
Título corto Seleccionar cotización
## Historia
Como Responsable de Compras, quiero seleccionar una cotización para
continuar con la compra, para formalizar la alternativa elegida para
generar la orden correspondiente.
Criterios de
aceptación
## Antecedentes:
Dado que el Responsable de Compras ha iniciado sesión y existen cotizaciones asociadas a la
solicitud.
Escenario: CA-1 Selección válida
Dado que la cotización está disponible y corresponde a la solicitud
Cuando el Responsable de Compras selecciona la cotización
Entonces el sistema registra la selección y la mantiene asociada a la solicitud para continuar con
la orden (RN03, RN20 y método seleccionar()).

Escenario: CA-2 Cotización no válida
Dado que la cotización no corresponde a la solicitud o no está disponible
Cuando el Responsable de Compras intenta seleccionarla
Entonces el sistema rechaza la operación e informa el motivo.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-57
## Prioridad Alta

## 68

## Tabla 63
Historia de usuario HU-58: Calcular total de cotización
Código HU-58
Título corto Calcular total de cotización
## Historia
Como Responsable de Compras, quiero calcular el total a partir del
subtotal, descuento e impuestos, para mantener consistente el valor total
de la operación.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Cálculo correcto
Dado que existen subtotal, descuento e impuestos válidos
Cuando Responsable de Compras solicita calcular el total
Entonces el sistema obtiene el total aplicando subtotal - descuento + impuestos (RN25 y método
calcularTotal()).

Escenario: CA-2 Datos insuficientes
Dado que falta alguno de los valores necesarios para determinar el total
Cuando Responsable de Compras solicita calcular el total
Entonces el sistema no realiza el cálculo e informa qué información falta.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-58
## Prioridad Media

## 69

## Tabla 64
Historia de usuario HU-59: Registrar detalle de cotización
Código HU-59
Título corto Registrar detalle de cotización
## Historia
Como Responsable de Compras, quiero registrar la información
requerida de detalle de cotización, para conservar el detalle de cada
propuesta recibida.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Responsable de Compras registra el detalle de cotización
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y Las cantidades y precios deben ser válidos y no negativos y las referencias relacionadas deben
existir (RN10, RN13).

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Responsable de Compras intenta registrar el detalle de cotización
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-59
## Prioridad Media

## 70

## Tabla 65
Historia de usuario HU-60: Consultar ítems de una cotización
Código HU-60
Título corto Consultar ítems de una cotización
## Historia
Como Responsable de Compras, quiero consultar la información de ítems
de una cotización, para conservar el detalle de cada propuesta recibida.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-60
## Prioridad Baja
## Tabla 66
Historia de usuario HU-61: Actualizar detalle de cotización
Código HU-61
Título corto Actualizar detalle de cotización
## Historia
Como Responsable de Compras, quiero actualizar la información de
detalle de cotización cuando sea necesario, para mantener la información
vigente para el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Responsable de Compras guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Responsable de Compras intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-61
## Prioridad Media

## 71

## Tabla 67
Historia de usuario HU-62: Eliminar detalle de cotización
Código HU-62
Título corto Eliminar detalle de cotización
## Historia
Como Responsable de Compras, quiero inactivar un detalle de cotización que ya no corresponda
al proceso, para conservar el historial y evitar que el registro siga disponible para nuevas
operaciones.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para gestionarlo
## (RN06).
Escenario: CA-1 Inactivación permitida
Dado que la operación está permitida por las relaciones y dependencias del registro
Cuando Responsable de Compras solicita inactivarlo
Entonces el sistema cambia el estado del registro a Inactivo, conserva su historial y evita su
selección en nuevas operaciones; no elimina físicamente el registro.

Escenario: CA-2 Eliminación no permitida
Dado que existen dependencias que impiden la eliminación
Cuando Responsable de Compras intenta inactivar el registro
Entonces el sistema rechaza la operación e informa el motivo (RN28).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-62
## Prioridad Media
## Tabla 68
Historia de usuario HU-63: Calcular subtotal de detalle de cotización
Código HU-63
Título corto Calcular subtotal de detalle de cotización
## Historia
Como Responsable de Compras, quiero calcular el subtotal a partir de la
cantidad y el valor unitario, considerando el descuento cuando
corresponda, para mantener consistente el valor de cada línea.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Cálculo correcto
Dado que la cantidad y el precio unitario son válidos y el descuento corresponde cuando aplica
Cuando Responsable de Compras solicita calcular el subtotal
Entonces el sistema calcula el subtotal de la línea conforme a la cantidad, precio unitario y
descuento aplicable (RN24 y método calcularSubtotal()).

Escenario: CA-2 Datos inválidos
Dado que la cantidad o el precio unitario faltan o contienen valores no válidos
Cuando Responsable de Compras solicita calcular el subtotal
Entonces el sistema rechaza el cálculo e informa el motivo (RN13).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-63
## Prioridad Media

## 72

## Tabla 69
Historia de usuario HU-64: Registrar orden de compra
Código HU-64
Título corto Registrar orden de compra
## Historia
Como Responsable de Compras, quiero registrar la información
requerida de orden de compra, para formalizar la adquisición
seleccionada y darle seguimiento.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Responsable de Compras registra el orden de compra
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La orden debe conservar la relación con la solicitud, la cotización seleccionada y el proveedor
correspondiente (RN03, RN20).

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Responsable de Compras intenta registrar el orden de compra
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-64
## Prioridad Alta

## 73

## Tabla 70
Historia de usuario HU-65: Consultar órdenes de compra
Código HU-65
Título corto Consultar órdenes de compra
## Historia
Como Responsable de Compras, quiero consultar la información de
órdenes de compra, para formalizar la adquisición seleccionada y darle
seguimiento.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-65
## Prioridad Baja

## 74

## Tabla 71
Historia de usuario HU-66: Actualizar orden de compra
Código HU-66
Título corto Actualizar orden de compra
## Historia
Como Responsable de Compras, quiero actualizar la información de
orden de compra cuando sea necesario, para mantener la información
vigente para el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Responsable de Compras guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Responsable de Compras intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-66
## Prioridad Media

## 75

## Tabla 72
Historia de usuario HU-67: Cancelar orden de compra
Código HU-67
Título corto Cancelar orden de compra
## Historia
Como Responsable de Compras, quiero cancelar un orden de compra
cuando ya no deba continuar, para evitar que una operación que ya no es
necesaria continúe en el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que la orden de compra existe y el usuario cuenta con permisos para gestionarla (RN06).
Escenario: CA-1 Cancelación permitida
Dado que la orden de compra se encuentra en un estado que permite su cancelación
Cuando Responsable de Compras solicita cancelarla
Entonces el sistema cambia al estado de cancelación definido, conserva el registro y registra la
operación (RN19 y método cancelar()).

Escenario: CA-2 Cancelación no permitida
Dado que la orden de compra no puede cancelarse en su estado actual
Cuando Responsable de Compras intenta cancelarla
Entonces el sistema rechaza la operación e informa el motivo.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-67
## Prioridad Alta

## 76

## Tabla 73
Historia de usuario HU-68: Calcular total de orden de compra
Código HU-68
Título corto Calcular total de orden de compra
## Historia
Como Responsable de Compras, quiero calcular el total de una orden de
compra a partir de sus detalles, descuentos e impuestos, para emitir una
orden con un valor final correcto.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos
requeridos (RN06).
Escenario: CA-1 Cálculo del total de la orden
Dado que la orden de compra contiene detalles válidos y sus valores de
subtotal, descuento e impuestos están disponibles
Cuando el Responsable de Compras solicita calcular el total de la orden
Entonces el sistema suma los subtotales de los detalles, aplica los
descuentos e impuestos definidos y guarda el total calculado en la orden
(RN25 y RF-68).
Escenario: CA-2 Recalcular después de modificar detalles
Dado que se modifica la cantidad, el valor unitario o un descuento de un
detalle de la orden
Cuando se vuelve a calcular el total
Entonces el sistema actualiza el total de la orden con base en los valores
vigentes.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-68
## Prioridad Media

## 77

## Tabla 74
Historia de usuario HU-69: Registrar detalle de orden
Código HU-69
Título corto Registrar detalle de orden
## Historia
Como Responsable de Compras, quiero registrar la información
requerida de detalle de orden, para mantener el detalle de lo que debe ser
adquirido.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Responsable de Compras registra el detalle de orden
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y Las cantidades y precios deben ser válidos y no negativos y las referencias relacionadas deben
existir (RN10, RN13).

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Responsable de Compras intenta registrar el detalle de orden
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-69
## Prioridad Media

## 78

## Tabla 75
Historia de usuario HU-70: Consultar ítems de una orden de compra
Código HU-70
Título corto Consultar ítems de una orden de compra
## Historia
Como Responsable de Compras, quiero consultar la información de ítems
de una orden de compra, para mantener el detalle de lo que debe ser
adquirido.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-70
## Prioridad Baja

## 79

## Tabla 76
Historia de usuario HU-71: Actualizar detalle de orden
Código HU-71
Título corto Actualizar detalle de orden
## Historia
Como Responsable de Compras, quiero actualizar la información de
detalle de orden cuando sea necesario, para mantener la información
vigente para el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Responsable de Compras guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Responsable de Compras intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-71
## Prioridad Media

## 80

## Tabla 77
Historia de usuario HU-72: Eliminar detalle de orden
Código HU-72
Título corto Eliminar detalle de orden
## Historia
Como Responsable de Compras, quiero inactivar un detalle de orden que ya no corresponda al
proceso, para conservar el historial y evitar que el registro siga disponible para nuevas
operaciones.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para gestionarlo
## (RN06).
Escenario: CA-1 Inactivación permitida
Dado que la operación está permitida por las relaciones y dependencias del registro
Cuando Responsable de Compras solicita inactivarlo
Entonces el sistema cambia el estado del registro a Inactivo, conserva su historial y evita su
selección en nuevas operaciones; no elimina físicamente el registro.

Escenario: CA-2 Eliminación no permitida
Dado que existen dependencias que impiden la eliminación
Cuando Responsable de Compras intenta inactivar el registro
Entonces el sistema rechaza la operación e informa el motivo (RN28).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-72
## Prioridad Media

## 81

## Tabla 78
Historia de usuario HU-73: Calcular subtotal de detalle de orden
Código HU-73
Título corto Calcular subtotal de detalle de orden
## Historia
Como Responsable de Compras, quiero calcular el subtotal de cada
detalle de una orden de compra usando la cantidad ordenada y el valor
unitario acordado, para conocer el importe de cada línea antes de
consolidar el total de la orden.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos
requeridos (RN06).
Escenario: CA-1 Cálculo del subtotal del detalle de orden
Dado que un detalle de la orden tiene una cantidad ordenada y un valor
unitario válidos
Cuando el Responsable de Compras solicita calcular el subtotal de esa
línea
Entonces el sistema multiplica la cantidad ordenada por el valor unitario
y registra el subtotal del detalle de orden (RF-73).
Escenario: CA-2 Cantidad o valor unitario no válido
Dado que la cantidad es menor o igual a cero o el valor unitario no es
válido
Cuando se solicita calcular el subtotal
Entonces el sistema informa el error y no registra un subtotal como
válido.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-73
## Prioridad Media

## 82

## Tabla 79
Historia de usuario HU-74: Registrar recepción
Código HU-74
Título corto Registrar recepción
## Historia
Como Responsable de Compras, quiero registrar la información
requerida de recepción, para registrar la entrega y verificar su
correspondencia con la orden.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Responsable de Compras registra el recepción
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La recepción debe estar asociada a una orden existente y las cantidades recibidas no pueden
superar las cantidades ordenadas (RN10, RN21).

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Responsable de Compras intenta registrar el recepción
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-74
## Prioridad Alta

## 83

## Tabla 80
Historia de usuario HU-75: Consultar recepciones de compras
Código HU-75
Título corto Consultar recepciones de compras
## Historia
Como Responsable de Compras, quiero consultar la información de
recepciones de compras, para registrar la entrega y verificar su
correspondencia con la orden.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-75
## Prioridad Baja

## 84

## Tabla 81
Historia de usuario HU-76: Actualizar recepción
Código HU-76
Título corto Actualizar recepción
## Historia
Como Responsable de Compras, quiero actualizar la información de
recepción cuando sea necesario, para mantener la información vigente
para el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Responsable de Compras guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Responsable de Compras intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-76
## Prioridad Media

## 85

## Tabla 82
Historia de usuario HU-77: Verificar conformidad de la recepción
Código HU-77
Título corto Verificar conformidad de la recepción
## Historia
Como Responsable de Compras, quiero verificar que lo recibido
corresponda con lo establecido en la orden de compra, para controlar que
la entrega cumpla con las condiciones registradas.
Criterios de
aceptación
## Antecedentes:
Dado que existe una recepción asociada a una orden de compra y el usuario está autorizado.
Escenario: CA-1 Recepción conforme
Dado que las cantidades y condiciones verificadas corresponden con la orden
Cuando el Responsable de Compras verifica la recepción
Entonces el sistema identifica la recepción como conforme (método verificarConformidad()).

Escenario: CA-2 Recepción con diferencias
Dado que se detectan diferencias frente a la orden de compra
Cuando el Responsable de Compras verifica la recepción
Entonces el sistema identifica la recepción como no conforme y conserva la información de la
inconsistencia.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-77
## Prioridad Alta

## 86

## Tabla 83
Historia de usuario HU-78: Registrar detalle de recepción
Código HU-78
Título corto Registrar detalle de recepción
## Historia
Como Responsable de Compras, quiero registrar la información
requerida de detalle de recepción, para mantener el control de las
cantidades aceptadas y rechazadas.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Responsable de Compras registra el detalle de recepción
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La recepción debe estar asociada a una orden existente y las cantidades recibidas no pueden
superar las cantidades ordenadas (RN10, RN21).

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Responsable de Compras intenta registrar el detalle de recepción
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-78
## Prioridad Media

## 87

## Tabla 84
Historia de usuario HU-79: Consultar cantidades recibidas
Código HU-79
Título corto Consultar cantidades recibidas
## Historia
Como Responsable de Compras, quiero consultar la información de
cantidades recibidas, para mantener el control de las cantidades aceptadas
y rechazadas.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-79
## Prioridad Baja

## 88

## Tabla 85
Historia de usuario HU-80: Actualizar detalle de recepción
Código HU-80
Título corto Actualizar detalle de recepción
## Historia
Como Responsable de Compras, quiero actualizar la información de
detalle de recepción cuando sea necesario, para mantener la información
vigente para el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Responsable de Compras guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Responsable de Compras intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-80
## Prioridad Media

## 89

## Tabla 86
Historia de usuario HU-81: Calcular cantidad rechazada
Código HU-81
Título corto Calcular cantidad rechazada
## Historia
Como Responsable de Compras, quiero calcular la cantidad rechazada a
partir de la cantidad recibida y la cantidad aceptada, para mantener
consistente el control de las cantidades recibidas.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Cálculo correcto
Dado que la cantidad recibida y la cantidad aceptada son válidas
Cuando Responsable de Compras solicita calcular la cantidad rechazada
Entonces el sistema calcula cantidad recibida - cantidad aceptada (RN22).

Escenario: CA-2 Cantidad aceptada superior a recibida
Dado que la cantidad aceptada es mayor que la cantidad recibida
Cuando Responsable de Compras solicita calcular la cantidad rechazada
Entonces el sistema rechaza el cálculo e informa la inconsistencia (RN23).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-81
## Prioridad Media

## 90

## Tabla 87
Historia de usuario HU-82: Registrar factura
Código HU-82
Título corto Registrar factura
## Historia
Como Responsable de Compras, quiero registrar la información
requerida de factura, para conservar y validar la información de
facturación del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Registro exitoso
Dado que la información obligatoria cumple las validaciones definidas
Cuando Responsable de Compras registra el factura
Entonces el sistema guarda el registro, informa el resultado y conserva la operación para
trazabilidad cuando corresponda (RN09, RN12 y método crear()).
Y La factura debe estar asociada a referencias existentes y la combinación proveedor + número de
factura debe ser única (RN10, RN17).

Escenario: CA-2 Registro rechazado
Dado que falta información obligatoria o existe un dato que incumple una regla de negocio
Cuando Responsable de Compras intenta registrar el factura
Entonces el sistema no guarda el registro e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-82
## Prioridad Alta

## 91

## Tabla 88
Historia de usuario HU-83: Consultar facturas asociadas a compras
Código HU-83
Título corto Consultar facturas asociadas a compras
## Historia
Como Responsable de Compras, quiero consultar la información de
facturas asociadas a compras, para conservar y validar la información de
facturación del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con permisos de consulta (RN06).
Escenario: CA-1 Consulta con resultados
Dado que existen registros que cumplen los criterios de consulta
Cuando Responsable de Compras realiza la consulta
Entonces el sistema muestra la información registrada que coincide con los criterios y permite
consultar su detalle (método consultar()).

Escenario: CA-2 Consulta sin resultados
Dado que no existen registros que coincidan con los criterios
Cuando Responsable de Compras realiza la consulta
Entonces el sistema informa que no se encontraron resultados.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-83
## Prioridad Baja

## 92

## Tabla 89
Historia de usuario HU-84: Actualizar factura
Código HU-84
Título corto Actualizar factura
## Historia
Como Responsable de Compras, quiero actualizar la información de
factura cuando sea necesario, para mantener la información vigente para
el proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el registro seleccionado existe y el usuario cuenta con permisos para modificarlo
## (RN06).
Escenario: CA-1 Actualización válida
Dado que los nuevos datos cumplen las validaciones y los campos obligatorios están completos
Cuando Responsable de Compras guarda los cambios
Entonces el sistema actualiza la información, informa el resultado y registra la modificación
cuando corresponda (RN09, RN11 y método actualizar()).

Escenario: CA-2 Datos inválidos o incompletos
Dado que falta información obligatoria o algún dato no cumple las validaciones
Cuando Responsable de Compras intenta guardar los cambios
Entonces el sistema rechaza la actualización e informa el motivo (RN09, RN12).
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-84
## Prioridad Media

## 93

## Tabla 90
Historia de usuario HU-85: Validar factura
Código HU-85
Título corto Validar factura
## Historia
Como Responsable de Compras, quiero validar la información de una
factura asociada a una compra, para asegurar que la factura pueda ser
gestionada dentro del proceso.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos requeridos (RN06).
Escenario: CA-1 Operación exitosa
Dado que la información requerida es válida y los registros relacionados existen
Cuando Responsable de Compras ejecuta la operación "Validar factura"
Entonces el sistema completa la operación y conserva la información actualizada para el proceso.

Escenario: CA-2 Operación rechazada
Dado que no se cumplen las condiciones requeridas
Cuando Responsable de Compras ejecuta la operación "Validar factura"
Entonces el sistema rechaza la operación e informa el motivo.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-85
## Prioridad Alta

## 94

## Tabla 91
Historia de usuario HU-86: Calcular total de factura
Código HU-86
Título corto Calcular total de factura
## Historia
Como Responsable de Compras, quiero calcular el total de una factura
registrada para una compra, considerando sus valores gravados,
descuentos e impuestos, para comprobar el importe que se debe validar
frente a la orden de compra.
Criterios de
aceptación
## Antecedentes:
Dado que el usuario ha iniciado sesión y cuenta con el rol y permisos
requeridos (RN06).
Escenario: CA-1 Cálculo del total de la factura
Dado que la factura tiene subtotal, descuentos e impuestos registrados
Cuando el Responsable de Compras solicita calcular el total de la factura
Entonces el sistema calcula el total de la factura según sus conceptos
registrados y muestra el valor resultante para su validación (RF-86).
Escenario: CA-2 Valores incompletos o inconsistentes
Dado que falta un valor necesario o la factura presenta importes no
válidos
Cuando se solicita calcular el total
Entonces el sistema informa qué dato debe corregirse y no confirma un
total válido hasta que los datos sean consistentes.
## Origen (encuesta)
Sección 1.7. Recolección de la información y metodología de trabajo: instrumento aplicado,
síntesis y análisis de las respuestas.
RF derivados
## RF-86
## Prioridad Media


## 95

2.2 Requisitos Funcionales, Reglas de Negocio y Requisitos No Funcionales
Esta sección formaliza la Fase 1 de la Ruta Oficial a partir de las HU existentes y del
diccionario de datos corregido. Se conserva la trazabilidad entre necesidad, HU, RF/RN/RNF y
los elementos posteriores del diseño.
2.2.1 Reglas de Negocio
## Tabla 92
Reglas de negocio del proyecto (RN-01 a RN-30)
Código Regla de negocio RF relacionados Tipo
## RN01
No se puede registrar un proveedor con una identificación
fiscal que ya exista en el sistema.
RF-12 a RF-15
Regla de
negocio
## RN02
Todos los proveedores deben tener como mínimo nombre,
identificación fiscal y teléfono registrados.
## RF-12
Regla de
negocio
## RN03
Toda compra formalizada mediante una orden debe estar
asociada a una cotización y a un proveedor previamente
registrado.
RF-64 a RF-73; RF-82 a RF-
## 86
Regla de
negocio
## RN04
El valor total de una cotización, orden y factura se calcula a
partir del subtotal, descuento e impuestos.
RF-54 a RF-63; RF-64 a RF-
73; RF-82 a RF-86
Regla de
negocio
## RN05
No se puede registrar una línea de solicitud sin cantidad
válida y mayor que cero.
RF-46 a RF-49
Regla de
negocio
## RN06
Solo los usuarios autorizados mediante un rol activo pueden
ejecutar las operaciones permitidas.
RF-01 a RF-09; RF-12 a RF-
## 86
Regla de
negocio
## RN07
No se puede eliminar un proveedor que tenga cotizaciones,
órdenes o facturas asociadas.
## RF-15
Regla de
negocio
## RN08
Las fechas de creación y registro se generan
automáticamente con la fecha y hora del sistema cuando
corresponda.
RF-10; RF-40 a RF-86
Regla de
negocio
## RN09
Los campos obligatorios deben estar completos antes de
guardar un registro.
## RF-01; RF-06; RF-12; RF-
## 40; RF-54; RF-64; RF-74;
## RF-82
Regla de
negocio
## RN10
El sistema debe validar que las referencias utilizadas en una
compra existan antes de registrar la operación.
RF-40 a RF-86
Regla de
negocio
## RN11
Las modificaciones realizadas en la información deben
quedar actualizadas y las acciones relevantes registradas en
auditoría.
## RF-08; RF-10; RF-14; RF-40
a RF-86
Regla de
negocio
## RN12
El sistema debe informar al usuario el resultado de las
operaciones realizadas.
RF-01 a RF-86
Regla de
negocio
## RN13
No se pueden registrar cantidades negativas, precios
negativos, descuentos negativos ni impuestos negativos.
RF-46 a RF-49; RF-59 a RF-
63; RF-69 a RF-73; RF-78 a
RF-81; RF-82 a RF-86
Regla de
negocio
## RN14
El historial de solicitudes, aprobaciones, cotizaciones,
órdenes, recepciones y facturas debe conservarse para
futuras consultas.
## RF-07; RF-11; RF-13; RF-
17; RF-41 a RF-86
Regla de
negocio
## RN15
Una misma línea de solicitud no puede repetirse dentro de la
misma cotización ni dentro de la misma orden.
RF-59 a RF-63; RF-69 a RF-
## 73
Regla de
negocio

## 96

Código Regla de negocio RF relacionados Tipo
## RN16
Una misma línea de orden no puede repetirse dentro de una
misma recepción.
RF-78 a RF-81
Regla de
negocio
## RN17
Una factura se identifica de forma única por la combinación
de proveedor y número de factura.
RF-82 a RF-86
Regla de
negocio
## RN18
La decisión de una solicitud debe corresponder a un valor
existente en el catálogo de tipos de decisión.
RF-28 a RF-31
Regla de
negocio
## RN19
Los estados de solicitud, cotización, orden, recepción y
factura deben corresponder a los valores registrados en sus
respectivos catálogos.
RF-16 a RF-19; RF-32 a RF-
39; RF-74 a RF-81; RF-82 a
## RF-86
Regla de
negocio
## RN20
Una orden debe conservar la coherencia con la cotización
seleccionada; el proveedor asociado a la orden debe
corresponder al proveedor de la cotización.
RF-64 a RF-73
Regla de
negocio
## RN21
La suma de las cantidades recibidas de una línea de orden no
puede superar la cantidad ordenada.
RF-78 a RF-81
Regla de
negocio
## RN22
La cantidad rechazada de una recepción corresponde a
cantidad recibida menos cantidad aceptada.
RF-78 a RF-81
Regla de
negocio
## RN23
La cantidad aceptada no puede ser mayor que la cantidad
recibida.
RF-78 a RF-81
Regla de
negocio
## RN24
El subtotal de una línea corresponde a cantidad por precio
unitario, ajustado por el descuento cuando aplique.
RF-59 a RF-63; RF-69 a RF-
73; RF-78 a RF-81
Regla de
negocio
## RN25
El total corresponde a subtotal menos descuento más
impuestos.
## RF-58; RF-68; RF-73; RF-86
Regla de
negocio
## RN26
Las operaciones relevantes del proceso deben conservar
evidencia de auditoría con usuario, fecha, acción y registro
afectado.
## RF-10; RF-11; RF-26; RF-40
a RF-86
Regla de
negocio
## RN27
Los registros relacionados con solicitudes, cotizaciones y
órdenes no se eliminan físicamente como parte de la
operación ordinaria; cuando dejan de utilizarse, se inactivan
conservando su historial y las relaciones existentes.
## RF-04; RF-09; RF-15; RF-
## 43; RF-49; RF-57; RF-63;
## RF-72; RF-81; RF-85
Regla de
negocio
## RN28
No se permite inactivar un registro maestro mientras existan
operaciones activas que dependan de él; el sistema debe
informar la dependencia que impide el cambio de estado.
## RF-04; RF-09; RF-15; RF-
## 43; RF-49; RF-57; RF-63;
## RF-72; RF-81; RF-85
Regla de
negocio
## RN29
Las contraseñas de acceso deben almacenarse mediante un
mecanismo de hash seguro y nunca en texto plano.
## RF-05
Regla de
negocio
## RN30
Los nombres de campos, tablas y objetos de la base de datos
deben seguir una convención uniforme documentada en el
diccionario de datos.
RF-01 a RF-86 (criterio
transversal de
implementación)
Regla de
negocio
## 2.2.2 Requisitos Funcionales
Los RF se derivan directamente de las HU-01 a HU-86 y mantienen la relación con las
reglas de negocio que las hacen cumplir.
## Tabla 93
Requisitos funcionales derivados de las HU-01 a HU-86
Código Nombre corto Descripción HU origen
RN que hace
cumplir
## Priorida
d
RF-01 Registrar rol
El sistema debe registrar la información requerida
de rol.
## HU-01
## RN06, RN09, RN11,
## RN29
## Media

## 97

Código Nombre corto Descripción HU origen
RN que hace
cumplir
## Priorida
d
## RF-02
Consultar roles
disponibles
El sistema debe consultar la información de roles
disponibles.
## HU-02
## RN06, RN09, RN11,
## RN29
## Media
RF-03 Actualizar rol
El sistema debe actualizar la información de rol
cuando sea necesario.
## HU-03
## RN06, RN09, RN11,
## RN29
## Media
RF-04 Cambiar estado de rol
El sistema debe cambiar el estado de rol de
acuerdo con el proceso.
## HU-04
## RN06, RN09, RN11,
## RN29
## Media
RF-05 Iniciar sesión
El sistema debe iniciar sesión con sus
credenciales.
## HU-05
## RN06, RN09, RN11,
## RN29
## Media
RF-06 Registrar usuario
El sistema debe registrar la información requerida
de usuario.
## HU-06
## RN06, RN09, RN11,
## RN29
## Media
## RF-07
Consultar usuarios del
sistema
El sistema debe consultar la información de
usuarios del sistema.
## HU-07
## RN06, RN09, RN11,
## RN29
## Media
RF-08 Actualizar usuario
El sistema debe actualizar la información de
usuario cuando sea necesario.
## HU-08
## RN06, RN09, RN11,
## RN29
## Media
## RF-09
Cambiar estado de
usuario
El sistema debe cambiar el estado de usuario de
acuerdo con el proceso.
## HU-09
## RN06, RN09, RN11,
## RN29
## Media
## RF-10
Registrar evento de
auditoría
El sistema debe registrar la información
correspondiente.
HU-10 RN11, RN14, RN26 Media
## RF-11
Consultar acciones
realizadas
El sistema debe consultar la información de
acciones realizadas.
HU-11 Ninguna Media
RF-12 Registrar proveedor
El sistema debe registrar la información requerida
de proveedor.
## HU-12
## RN01, RN02, RN06,
## RN09, RN10, RN11,
## RN14
## Media
## RF-13
Consultar proveedores
registrados
El sistema debe consultar la información de
proveedores registrados.
## HU-13
## RN01, RN02, RN06,
## RN09, RN10, RN11,
## RN14
## Media
RF-14 Actualizar proveedor
El sistema debe actualizar la información de
proveedor cuando sea necesario.
## HU-14
## RN01, RN02, RN06,
## RN09, RN10, RN11,
## RN14
## Media
## RF-15
Cambiar estado de
proveedor
El sistema debe cambiar el estado de proveedor
de acuerdo con el proceso.
## HU-15
## RN01, RN02, RN06,
## RN09, RN10, RN11,
## RN14, RN07
## Media
## RF-16
Registrar estado de
solicitud
El sistema debe registrar la información requerida
de estado de solicitud.
## HU-16
## RN06, RN09, RN11,
## RN19, RN10, RN14
## Media
## RF-17
Consultar estados del
proceso de solicitud
El sistema debe consultar la información de
estados del proceso de solicitud.
## HU-17
## RN06, RN09, RN10,
## RN11, RN14
## Media
## RF-18
Actualizar estado de
solicitud
El sistema debe actualizar la información de
estado de solicitud cuando sea necesario.
## HU-18
## RN06, RN09, RN11,
## RN19, RN10, RN14
## Media
## RF-19
Activar o inactivar
estado de solicitud
El sistema debe cambiar el estado de estado de
solicitud de acuerdo con el proceso.
## HU-19
## RN06, RN09, RN11,
## RN19, RN10, RN14
## Media
RF-20 Registrar prioridad
El sistema debe registrar la información requerida
de prioridad.
## HU-20
## RN06, RN09, RN11,
## RN19
## Media
## RF-21
Consultar prioridades
disponibles
El sistema debe consultar la información de
prioridades disponibles.
## HU-21
## RN06, RN09, RN11,
## RN19
## Media
RF-22 Actualizar prioridad
El sistema debe actualizar la información de
prioridad cuando sea necesario.
## HU-22
## RN06, RN09, RN11,
## RN19
## Media
## RF-23
Cambiar estado de
prioridad
El sistema debe cambiar el estado de prioridad de
acuerdo con el proceso.
## HU-23
## RN06, RN09, RN11,
## RN19
## Media
RF-24 Registrar tipo de ítem
El sistema debe registrar la información requerida
de tipo de ítem.
## HU-24
## RN06, RN09, RN11,
## RN19
## Media
## RF-25
Consultar tipos de
producto o servicio
El sistema debe consultar la información de tipos
de producto o servicio.
HU-25 Ninguna Media
## RF-26
Actualizar tipo de
ítem
El sistema debe actualizar la información de tipo
de ítem cuando sea necesario.
## HU-26
## RN06, RN09, RN11,
## RN19
## Media
## RF-27
Cambiar estado de
tipo de ítem
El sistema debe cambiar el estado de tipo de ítem
de acuerdo con el proceso.
## HU-27
## RN06, RN09, RN11,
## RN19
## Media
## RF-28
Registrar tipo de
decisión
El sistema debe registrar la información requerida
de tipo de decisión.
## HU-28
## RN06, RN09, RN11,
## RN19
## Media
## RF-29
Consultar decisiones
de aprobación
El sistema debe consultar la información de
decisiones de aprobación.
HU-29 Ninguna Media
## RF-30
Actualizar tipo de
decisión
El sistema debe actualizar la información de tipo
de decisión cuando sea necesario.
## HU-30
## RN06, RN09, RN11,
## RN19
## Media
## RF-31
Cambiar estado de
tipo de decisión
El sistema debe cambiar el estado de tipo de
decisión de acuerdo con el proceso.
## HU-31
## RN06, RN09, RN11,
## RN19
## Media
## RF-32
Consultar estados de
las cotizaciones
El sistema debe consultar la información de
estados de las cotizaciones.
HU-32 Ninguna Media

## 98

Código Nombre corto Descripción HU origen
RN que hace
cumplir
## Priorida
d
## RF-33
Activar o inactivar
estado de cotización
El sistema debe cambiar el estado de estado de
cotización de acuerdo con el proceso.
## HU-33
## RN06, RN09, RN11,
## RN19, RN03, RN04,
## RN10, RN13, RN14,
## RN20
## Alta
## RF-34
Consultar estados de
las órdenes de compra
El sistema debe consultar la información de
estados de las órdenes de compra.
HU-34 Ninguna Media
## RF-35
Activar o inactivar
estado de orden
El sistema debe cambiar el estado de estado de
orden de acuerdo con el proceso.
## HU-35
## RN06, RN09, RN11,
## RN19, RN03, RN04,
## RN10, RN13, RN14,
## RN20
## Media
## RF-36
Consultar estados de
recepción
El sistema debe consultar la información de
estados de recepción.
## HU-36
## RN09, RN10, RN11,
## RN14, RN19
## Alta
## RF-37
Activar o inactivar
estado de recepción
El sistema debe cambiar el estado de estado de
recepción de acuerdo con el proceso.
## HU-37
## RN06, RN09, RN11,
## RN19, RN10, RN14
## Alta
## RF-38
Consultar estados de
las facturas
El sistema debe consultar la información de
estados de las facturas.
## HU-38
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## Alta
## RF-39
Activar o inactivar
estado de factura
El sistema debe cambiar el estado de estado de
factura de acuerdo con el proceso.
## HU-39
## RN06, RN09, RN11,
## RN19, RN04, RN10,
## RN14, RN17, RN25
## Alta
## RF-40
Registrar solicitud de
compra
El sistema debe registrar la información requerida
de solicitud de compra.
## HU-40
## RN06, RN09, RN10,
## RN11, RN14
## Alta
## RF-41
Consultar solicitudes
de compra
El sistema debe consultar la información de
solicitudes de compra.
## HU-41
## RN06, RN09, RN10,
## RN11, RN14
## Media
## RF-42
Actualizar solicitud de
compra
El sistema debe actualizar la información de
solicitud de compra cuando sea necesario.
## HU-42
## RN06, RN09, RN10,
## RN11, RN14
## Media
## RF-43
Inactivar solicitud de
compra
El sistema debe inactivar un solicitud de compra
que ya no corresponda al proceso.
## HU-43
## RN06, RN09, RN11,
## RN12, RN19, RN27
## Media
## RF-44
Enviar solicitud de
compra
El sistema debe enviar una solicitud de compra
para continuar el proceso.
## HU-44
## RN06, RN09, RN10,
## RN11, RN14, RN19
## Media
## RF-45
Cancelar solicitud de
compra
El sistema debe cancelar un solicitud de compra
cuando ya no deba continuar.
## HU-45
## RN06, RN09, RN10,
## RN11, RN14, RN19
## Media
## RF-46
Registrar detalle de
solicitud
El sistema debe registrar la información requerida
de detalle de solicitud.
## HU-46
## RN06, RN09, RN10,
## RN11, RN14, RN05,
## RN13, RN15
## Media
## RF-47
Consultar productos o
servicios solicitados
El sistema debe consultar la información de
productos o servicios solicitados.
HU-47 Ninguna Media
## RF-48
Actualizar detalle de
solicitud
El sistema debe actualizar la información de
detalle de solicitud cuando sea necesario.
## HU-48
## RN06, RN09, RN10,
## RN11, RN14, RN05,
## RN13, RN15
## Media
## RF-49
Inactivar detalle de
solicitud
El sistema debe inactivar un detalle de solicitud
que ya no corresponda al proceso.
## HU-49
## RN06, RN09, RN11,
## RN12, RN19, RN27
## Media
## RF-50
Aprobar solicitud de
compra
El sistema debe aprobar una solicitud de compra
que cumple las condiciones del proceso.
## HU-50
## RN06, RN09, RN10,
## RN11, RN14, RN18
## Alta
## RF-51
Rechazar solicitud de
compra
El sistema debe rechazar una solicitud de compra
que no debe continuar.
## HU-51
## RN06, RN09, RN10,
## RN11, RN14, RN18
## Alta
## RF-52
Devolver solicitud de
compra
El sistema debe devolver una solicitud para que
sea revisada o corregida.
## HU-52
## RN06, RN09, RN10,
## RN11, RN14, RN18
## Media
## RF-53
Consultar decisiones
asociadas a una
solicitud
El sistema debe consultar la información de
decisiones asociadas a una solicitud.
## HU-53
## RN06, RN09, RN10,
## RN11, RN14, RN18
## Media
RF-54 Registrar cotización
El sistema debe registrar la información requerida
de cotización.
## HU-54
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## Alta
## RF-55
Consultar cotizaciones
de proveedores
El sistema debe consultar la información de
cotizaciones de proveedores.
## HU-55
## RN01, RN02, RN06,
## RN09, RN10, RN11,
## RN14
## Media
RF-56 Actualizar cotización
El sistema debe actualizar la información de
cotización cuando sea necesario.
## HU-56
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## Alta
RF-57 Seleccionar cotización
El sistema debe seleccionar una cotización para
continuar con la compra.
## HU-57
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## Alta
## RF-58
Calcular total de
cotización
El sistema debe calcular el total a partir del
subtotal, descuento e impuestos.
## HU-58
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN25
## Alta

## 99

Código Nombre corto Descripción HU origen
RN que hace
cumplir
## Priorida
d
## RF-59
Registrar detalle de
cotización
El sistema debe registrar la información requerida
de detalle de cotización.
## HU-59
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## Alta
## RF-60
Consultar ítems de
una cotización
El sistema debe consultar la información de ítems
de una cotización.
## HU-60
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## Alta
## RF-61
Actualizar detalle de
cotización
El sistema debe actualizar la información de
detalle de cotización cuando sea necesario.
## HU-61
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## Alta
## RF-62
Inactivar detalle de
cotización
El sistema debe inactivar un detalle de cotización
que ya no corresponda al proceso.
## HU-62
## RN06, RN09, RN11,
## RN12, RN19, RN27
## Alta
## RF-63
Calcular subtotal de
detalle de cotización
El sistema debe calcular el subtotal a partir de la
cantidad y el valor unitario, considerando el
descuento cuando corresponda.
## HU-63
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## Alta
## RF-64
Registrar orden de
compra
El sistema debe registrar la información requerida
de orden de compra.
## HU-64
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## Alta
## RF-65
Consultar órdenes de
compra
El sistema debe consultar la información de
órdenes de compra.
HU-65 Ninguna Media
## RF-66
Actualizar orden de
compra
El sistema debe actualizar la información de
orden de compra cuando sea necesario.
## HU-66
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## Alta
## RF-67
Cancelar orden de
compra
El sistema debe cancelar un orden de compra
cuando ya no deba continuar.
## HU-67
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## Alta
## RF-68
Calcular total de orden
de compra
El sistema debe calcular el total a partir del
subtotal, descuento e impuestos.
## HU-68
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN25
## Alta
## RF-69
Registrar detalle de
orden
El sistema debe registrar la información requerida
de detalle de orden.
## HU-69
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## Media
## RF-70
Consultar ítems de
una orden de compra
El sistema debe consultar la información de ítems
de una orden de compra.
## HU-70
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## Alta
## RF-71
Actualizar detalle de
orden
El sistema debe actualizar la información de
detalle de orden cuando sea necesario.
## HU-71
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## Media
## RF-72
Inactivar detalle de
orden
El sistema debe inactivar un detalle de orden que
ya no corresponda al proceso.
## HU-72
## RN06, RN09, RN11,
## RN12, RN19, RN27
## Media
## RF-73
Calcular subtotal de
detalle de orden
El sistema debe calcular el subtotal a partir de la
cantidad y el valor unitario, considerando el
descuento cuando corresponda.
## HU-73
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## Media
RF-74 Registrar recepción
El sistema debe registrar la información requerida
de recepción.
## HU-74
## RN09, RN10, RN11,
## RN14, RN19
## Alta
## RF-75
Consultar recepciones
de compras
El sistema debe consultar la información de
recepciones de compras.
HU-75 Ninguna Media
RF-76 Actualizar recepción
El sistema debe actualizar la información de
recepción cuando sea necesario.
## HU-76
## RN09, RN10, RN11,
## RN14, RN19
## Alta
## RF-77
Verificar conformidad
de la recepción
El sistema debe verificar que lo recibido
corresponda con lo establecido en la orden de
compra.
## HU-77
## RN09, RN10, RN11,
## RN14, RN19, RN21,
## RN23
## Alta
## RF-78
Registrar detalle de
recepción
El sistema debe registrar la información requerida
de detalle de recepción.
## HU-78
## RN09, RN10, RN11,
## RN14, RN19, RN13,
## RN16, RN21, RN22,
## RN23
## Alta
## RF-79
Consultar cantidades
recibidas
El sistema debe consultar la información de
cantidades recibidas.
HU-79 Ninguna Media
## RF-80
Actualizar detalle de
recepción
El sistema debe actualizar la información de
detalle de recepción cuando sea necesario.
## HU-80
## RN09, RN10, RN11,
## RN14, RN19, RN13,
## RN16, RN21, RN22,
## RN23
## Alta

## 100

Código Nombre corto Descripción HU origen
RN que hace
cumplir
## Priorida
d
## RF-81
Calcular cantidad
rechazada
El sistema debe calcular la cantidad rechazada a
partir de la cantidad recibida y la cantidad
aceptada.
HU-81 Ninguna Media
RF-82 Registrar factura
El sistema debe registrar la información requerida
de factura.
## HU-82
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## Alta
## RF-83
Consultar facturas
asociadas a compras
El sistema debe consultar la información de
facturas asociadas a compras.
## HU-83
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## Alta
RF-84 Actualizar factura
El sistema debe actualizar la información de
factura cuando sea necesario.
## HU-84
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## Alta
RF-85 Validar factura
El sistema debe validar la información de una
factura asociada a una compra.
## HU-85
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## Alta
## RF-86
Calcular total de
factura
El sistema debe calcular el total a partir del
subtotal, descuento e impuestos.
## HU-86
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## Alta
## 2.2.3 Requisitos No Funcionales
## Tabla 94
Requisitos no funcionales y criterios verificables
Código Categoría Requisito no funcional y criterio verificable Origen
RNF-01 Rendimiento
Las consultas principales del sistema deben responder en menos de 2
segundos bajo la carga de información definida para la versión del
proyecto.
Criterio verificable: en una prueba con 20 usuarios concurrentes y hasta
10.000 registros de prueba, al menos el 95 % de las consultas
principales deberá responder en menos de 2 segundos.
Necesidad de
mejorar el
seguimiento y
consulta de la
información.
RNF-02 Seguridad
Solo usuarios autenticados y con un rol activo deben ejecutar las
operaciones permitidas; las acciones relevantes deben quedar
registradas en auditoría.
Criterio verificable: el 100 % de las operaciones protegidas debe
rechazar usuarios no autenticados o sin permiso; el 100 % de las
operaciones críticas debe registrar usuario, fecha y hora, acción y
registro afectado.
RN06, RN11 y
## RN26.
RNF-03 Usabilidad
La interfaz debe presentar formularios y mensajes claros, informando el
resultado de la operación y el motivo cuando una operación sea
rechazada.
Criterio verificable: en una prueba con al menos 5 usuarios
representativos, al menos 4 deben completar registrar una solicitud,
consultar su estado y revisar una cotización sin ayuda; el 100 % de las
acciones probadas debe mostrar confirmación o mensaje de error
comprensible.
RN12 y criterios
de aceptación de
las HU.
RNF-04 Accesibilidad
La solución debe poder utilizarse desde dispositivos móviles para
facilitar el acceso a la información del sistema.
Criterio verificable: las vistas principales deben funcionar en anchos de
360 px, 768 px y 1366 px, sin desplazamiento horizontal de página en
tareas esenciales; los campos y botones principales deben permanecer
visibles y operables.
Necesidad de
acceso a la
información.

## 101

2.2.4 Trazabilidad resumida
La cadena de trazabilidad del proyecto es: Necesidad → HU → RF/RN/RNF → Caso de
Uso → Diseño → Construcción → Validación. Cada requisito funcional conserva una HU de
origen y las reglas de negocio corresponden al diccionario de datos corregido. La matriz
completa HU–RF–RN–CU–MK–CA se presenta en la sección 2.7.
2.3 Modelo de datos y diagrama de clases
Los modelos siguientes se construyeron a partir de las entidades, los procesos y las
operaciones descritas en las historias de usuario, los requisitos funcionales y las reglas de
negocio existentes. Las claves y cardinalidades representan la propuesta de diseño que deberá
validarse con el diccionario de datos antes de la construcción.

## 102

## Figura 1
Modelo entidad-relación (MER) de Compras y Proveedores

Nota. Elaboración del equipo a partir del alcance y las historias de usuario del proyecto. Los
nombres de campos son una propuesta de diseño y deben cotejarse con el diccionario de datos
definitivo.

## 103

## Figura 2
Diagrama de clases UML de Compras y Proveedores: acceso y auditoría (vista 1 de 4)


## 104

## Figura 3
Diagrama de clases UML de Compras y Proveedores: solicitud y aprobación (vista 2 de 4)


## 105

## Figura 4
Diagrama de clases UML de Compras y Proveedores: cotización y orden (vista 3 de 4)


## 106

## Figura 5
Diagrama de clases UML de Compras y Proveedores: recepción y factura (vista 4 de 4)

Nota. Elaboración del equipo. Las clases incluyen atributos, tipos, visibilidad y operaciones
asociadas con las historias de usuario. Las multiplicidades son propuestas de diseño sujetas a
validación con los requisitos y el diccionario de datos.
2.4 Casos de Uso: general completo
El caso de uso general se construye a partir de las 86 Historias de Usuario. Cada HU se
representa mediante un caso de uso para conservar cobertura completa de las operaciones
definidas.

## 107

## Figura 6
Casos de uso de Administrador — parte 1 (8 casos)


## 108

## Figura 7
Casos de uso de Administrador — parte 2 (8 casos)


## 109

## Figura 8
Casos de uso de Administrador — parte 3 (8 casos)


## 110

## Figura 9
Casos de uso de Administrador — parte 4 (7 casos)


## 111

## Figura 10
Casos de uso de Empleado — parte 1 (8 casos)


## 112

## Figura 11
Casos de uso de Empleado — parte 2 (2 casos)

## Figura 12
Casos de uso de Jefe de Área — parte 1 (4 casos)


## 113

## Figura 13
Casos de uso de Responsable de Compras — parte 1 (8 casos)


## 114

## Figura 14
Casos de uso de Responsable de Compras — parte 2 (8 casos)


## 115

## Figura 15
Casos de uso de Responsable de Compras — parte 3 (8 casos)


## 116

## Figura 16
Casos de uso de Responsable de Compras — parte 4 (8 casos)


## 117

## Figura 17
Casos de uso de Responsable de Compras — parte 5 (8 casos)

## Figura 18
Casos de uso de Responsable de Compras — parte 6 (1 casos)


## 118

## Tabla 95
Trazabilidad de casos de uso CU-01 a CU-86
CU Nombre HU relacionada Actor RF principal
CU-01 Registrar rol HU-01 Administrador RF-01
CU-02 Consultar roles disponibles HU-02 Administrador RF-02
CU-03 Actualizar rol HU-03 Administrador RF-03
CU-04 Cambiar estado de rol HU-04 Administrador RF-04
CU-05 Iniciar sesión HU-05 Administrador RF-05
CU-06 Registrar usuario HU-06 Administrador RF-06
CU-07 Consultar usuarios del sistema HU-07 Administrador RF-07
CU-08 Actualizar usuario HU-08 Administrador RF-08
CU-09 Cambiar estado de usuario HU-09 Administrador RF-09
CU-10 Registrar evento de auditoría HU-10 Administrador RF-10
CU-11 Consultar acciones realizadas HU-11 Administrador RF-11
CU-12 Registrar proveedor HU-12 Administrador RF-12
CU-13 Consultar proveedores registrados HU-13 Administrador RF-13
CU-14 Actualizar proveedor HU-14 Administrador RF-14
CU-15 Cambiar estado de proveedor HU-15 Administrador RF-15
CU-16 Registrar estado de solicitud HU-16 Administrador RF-16
## CU-17
Consultar estados del proceso de
solicitud
HU-17 Administrador RF-17
CU-18 Actualizar estado de solicitud HU-18 Administrador RF-18
CU-19 Activar o inactivar estado de solicitud HU-19 Administrador RF-19
CU-20 Registrar prioridad HU-20 Administrador RF-20
CU-21 Consultar prioridades disponibles HU-21 Administrador RF-21
CU-22 Actualizar prioridad HU-22 Administrador RF-22
CU-23 Cambiar estado de prioridad HU-23 Administrador RF-23
CU-24 Registrar tipo de ítem HU-24 Administrador RF-24
CU-25 Consultar tipos de producto o servicio HU-25 Administrador RF-25
CU-26 Actualizar tipo de ítem HU-26 Administrador RF-26
CU-27 Cambiar estado de tipo de ítem HU-27 Administrador RF-27
CU-28 Registrar tipo de decisión HU-28 Administrador RF-28
CU-29 Consultar decisiones de aprobación HU-29 Administrador RF-29
CU-30 Actualizar tipo de decisión HU-30 Administrador RF-30
CU-31 Cambiar estado de tipo de decisión HU-31 Administrador RF-31
CU-32 Consultar estados de las cotizaciones HU-32 Responsable de Compras RF-32
CU-33 Activar o inactivar estado de cotización HU-33 Responsable de Compras RF-33
## CU-34
Consultar estados de las órdenes de
compra
HU-34 Responsable de Compras RF-34
CU-35 Activar o inactivar estado de orden HU-35 Responsable de Compras RF-35
CU-36 Consultar estados de recepción HU-36 Responsable de Compras RF-36
CU-37 Activar o inactivar estado de recepción HU-37 Responsable de Compras RF-37
CU-38 Consultar estados de las facturas HU-38 Responsable de Compras RF-38
CU-39 Activar o inactivar estado de factura HU-39 Responsable de Compras RF-39
CU-40 Registrar solicitud de compra HU-40 Empleado RF-40
CU-41 Consultar solicitudes de compra HU-41 Empleado RF-41
CU-42 Actualizar solicitud de compra HU-42 Empleado RF-42
CU-43 Eliminar solicitud de compra HU-43 Empleado RF-43
CU-44 Enviar solicitud de compra HU-44 Empleado RF-44
CU-45 Cancelar solicitud de compra HU-45 Empleado RF-45
CU-46 Registrar detalle de solicitud HU-46 Empleado RF-46
## CU-47
Consultar productos o servicios
solicitados
HU-47 Empleado RF-47
CU-48 Actualizar detalle de solicitud HU-48 Empleado RF-48
CU-49 Eliminar detalle de solicitud HU-49 Empleado RF-49
CU-50 Aprobar solicitud de compra HU-50 Jefe de Área RF-50
CU-51 Rechazar solicitud de compra HU-51 Jefe de Área RF-51
CU-52 Devolver solicitud de compra HU-52 Jefe de Área RF-52

## 119

CU Nombre HU relacionada Actor RF principal
## CU-53
Consultar decisiones asociadas a una
solicitud
HU-53 Jefe de Área RF-53
CU-54 Registrar cotización HU-54 Responsable de Compras RF-54
CU-55 Consultar cotizaciones de proveedores HU-55 Responsable de Compras RF-55
CU-56 Actualizar cotización HU-56 Responsable de Compras RF-56
CU-57 Seleccionar cotización HU-57 Responsable de Compras RF-57
CU-58 Calcular total de cotización HU-58 Responsable de Compras RF-58
CU-59 Registrar detalle de cotización HU-59 Responsable de Compras RF-59
CU-60 Consultar ítems de una cotización HU-60 Responsable de Compras RF-60
CU-61 Actualizar detalle de cotización HU-61 Responsable de Compras RF-61
CU-62 Eliminar detalle de cotización HU-62 Responsable de Compras RF-62
## CU-63
Calcular subtotal de detalle de
cotización
HU-63 Responsable de Compras RF-63
CU-64 Registrar orden de compra HU-64 Responsable de Compras RF-64
CU-65 Consultar órdenes de compra HU-65 Responsable de Compras RF-65
CU-66 Actualizar orden de compra HU-66 Responsable de Compras RF-66
CU-67 Cancelar orden de compra HU-67 Responsable de Compras RF-67
CU-68 Calcular total de orden de compra HU-68 Responsable de Compras RF-68
CU-69 Registrar detalle de orden HU-69 Responsable de Compras RF-69
## CU-70
Consultar ítems de una orden de
compra
HU-70 Responsable de Compras RF-70
CU-71 Actualizar detalle de orden HU-71 Responsable de Compras RF-71
CU-72 Eliminar detalle de orden HU-72 Responsable de Compras RF-72
CU-73 Calcular subtotal de detalle de orden HU-73 Responsable de Compras RF-73
CU-74 Registrar recepción HU-74 Responsable de Compras RF-74
CU-75 Consultar recepciones de compras HU-75 Responsable de Compras RF-75
CU-76 Actualizar recepción HU-76 Responsable de Compras RF-76
CU-77 Verificar conformidad de la recepción HU-77 Responsable de Compras RF-77
CU-78 Registrar detalle de recepción HU-78 Responsable de Compras RF-78
CU-79 Consultar cantidades recibidas HU-79 Responsable de Compras RF-79
CU-80 Actualizar detalle de recepción HU-80 Responsable de Compras RF-80
CU-81 Calcular cantidad rechazada HU-81 Responsable de Compras RF-81
CU-82 Registrar factura HU-82 Responsable de Compras RF-82
CU-83 Consultar facturas asociadas a compras HU-83 Responsable de Compras RF-83
CU-84 Actualizar factura HU-84 Responsable de Compras RF-84
CU-85 Validar factura HU-85 Responsable de Compras RF-85
CU-86 Calcular total de factura HU-86 Responsable de Compras RF-86
La selección de los seis casos de uso críticos se fundamenta en que representan
operaciones centrales y de alto impacto para la trazabilidad del proceso: registro de la solicitud,
aprobación, registro y selección de cotizaciones, formalización de la orden y recepción. Estos
casos permiten validar el flujo principal y escenarios alternos derivados de los criterios de
aceptación.

## 120

2.5 Casos de Uso críticos documentados
## Tabla 96
Caso de uso crítico CU-40: Registrar solicitud de compra
## Campo Contenido
## ID CU CU-40
Nombre Registrar solicitud de compra
HU relacionada HU-40
## Actor(es) Empleado
## Objetivo
Registrar una solicitud de compra con la información
requerida para iniciar formalmente el proceso.
## Precondición
El Empleado ha iniciado sesión y cuenta con permisos para
registrar solicitudes.
Flujo básico
- El Empleado solicita registrar una solicitud.
- El sistema presenta el formulario.
- El Empleado diligencia la información requerida.
- El sistema valida los datos y referencias.
- El sistema registra la solicitud y confirma el resultado.
Flujos alternativos
Si faltan datos obligatorios o una referencia no existe, el
sistema rechaza el registro e informa el motivo (RN09,
## RN10, RN12).
Postcondición Solicitud registrada y disponible para continuar el proceso.
RF relacionados RF-40
RN relacionadas RN06, RN09, RN10, RN11, RN14
RNF relacionados RNF-01, RNF-02, RNF-03
## Restricciones
Usuario autenticado y autorizado; deben cumplirse los
estados y reglas del modelo.

## 121

## Tabla 97
Caso de uso crítico CU-50: Aprobar solicitud de compra
## Campo Contenido
## ID CU CU-50
Nombre Aprobar solicitud de compra
HU relacionada HU-50
Actor(es) Jefe de Área
## Objetivo
Registrar la aprobación de una solicitud que cumple las
condiciones del proceso.
## Precondición
El Jefe de Área ha iniciado sesión, tiene permisos y la
solicitud permite una decisión.
Flujo básico
- El Jefe de Área consulta la solicitud.
- El sistema muestra la información y estado.
- Selecciona aprobar.
- El sistema valida estado y tipo de decisión.
- Registra la decisión y confirma.
Flujos alternativos
Si la solicitud no está en un estado que permita aprobarla, el
sistema rechaza la operación e informa el motivo (RN18,
## RN19).
Postcondición Aprobación registrada y asociada a la solicitud y responsable.
RF relacionados RF-50
RN relacionadas RN06, RN09, RN10, RN11, RN14, RN18
RNF relacionados RNF-01, RNF-02, RNF-03
Restricciones Solo un usuario autorizado puede tomar la decisión.
## Tabla 98
Caso de uso crítico CU-54: Registrar cotización
## Campo Contenido
## ID CU CU-54
Nombre Registrar cotización
HU relacionada HU-54
Actor(es) Responsable de Compras
## Objetivo
Registrar una cotización de proveedor asociada a una
solicitud.
## Precondición
La solicitud y el proveedor existen y el Responsable de
Compras está autorizado.
Flujo básico
- Selecciona la solicitud.
- Solicita registrar la cotización.
- Diligencia la información requerida.
- El sistema valida referencias y campos obligatorios.
- Registra la cotización y confirma.
Flujos alternativos
Si falta información obligatoria o una referencia no existe, el
sistema rechaza el registro (RN09, RN10).
## Postcondición
Cotización registrada y disponible para consulta y
comparación.
RF relacionados RF-54
RN relacionadas RN03, RN04, RN09, RN10, RN13, RN14, RN19, RN20
RNF relacionados RNF-01, RNF-02, RNF-03
## Restricciones
La cotización debe conservar su relación con la solicitud y el
proveedor.

## 122

## Tabla 99
Caso de uso crítico CU-57: Seleccionar cotización
## Campo Contenido
## ID CU CU-57
Nombre Seleccionar cotización
HU relacionada HU-57
Actor(es) Responsable de Compras
## Objetivo
Seleccionar una cotización válida para continuar con la
compra.
Precondición Existe una solicitud con cotizaciones registradas.
Flujo básico
- Consulta las cotizaciones.
- Selecciona una cotización disponible.
- El sistema verifica su correspondencia con la solicitud.
- Registra la selección.
- Confirma la operación.
Flujos alternativos
Si la cotización no corresponde a la solicitud o no está
disponible, el sistema rechaza la selección.
Postcondición Cotización seleccionada para continuar con la orden.
RF relacionados RF-57
RN relacionadas RN03, RN04, RN09, RN10, RN13, RN14, RN19, RN20
RNF relacionados RNF-01, RNF-02
## Restricciones
La selección debe mantener coherencia con la solicitud y el
proveedor.
## Tabla 100
Caso de uso crítico CU-64: Registrar orden de compra
## Campo Contenido
## ID CU CU-64
Nombre Registrar orden de compra
HU relacionada HU-64
Actor(es) Responsable de Compras
## Objetivo
Registrar la orden de compra asociada a la solicitud y
cotización seleccionada.
## Precondición
Existe una cotización seleccionada y el Responsable de
Compras está autorizado.
Flujo básico
- Solicita registrar la orden.
- El sistema presenta la información relacionada.
- Completa los datos requeridos.
- El sistema valida solicitud, cotización y proveedor.
- Registra la orden y confirma.
Flujos alternativos
Si falta una referencia o el proveedor no corresponde al de la
cotización, el sistema rechaza la operación (RN03, RN10,
## RN20).
Postcondición Orden registrada y asociada a la compra seleccionada.
RF relacionados RF-64
RN relacionadas RN03, RN04, RN09, RN10, RN13, RN14, RN19, RN20
RNF relacionados RNF-01, RNF-02, RNF-03
## Restricciones
La orden debe conservar coherencia con la cotización
seleccionada.

## 123

## Tabla 101
Caso de uso crítico CU-74: Registrar recepción
## Campo Contenido
## ID CU CU-74
Nombre Registrar recepción
HU relacionada HU-74
Actor(es) Responsable de Compras
Objetivo Registrar una recepción asociada a una orden de compra.
## Precondición
La orden existe y el Responsable de Compras está
autorizado.
Flujo básico
- Selecciona la orden.
- Solicita registrar la recepción.
- Registra cantidades recibidas.
- El sistema valida las cantidades frente a la orden.
- Registra la recepción y confirma.
Flujos alternativos
Si una cantidad recibida supera la cantidad ordenada o falta
una referencia, el sistema rechaza la operación (RN10,
## RN21).
## Postcondición
Recepción registrada para posterior verificación de
conformidad.
RF relacionados RF-74
RN relacionadas RN09, RN10, RN11, RN14, RN19
RNF relacionados RNF-01, RNF-02, RNF-03
## Restricciones
Las cantidades deben respetar las reglas de recepción del
modelo.
2.6 Mockups (UI/UX)
Los siguientes bocetos funcionales definen las vistas principales que posteriormente
corresponden a la Vista de la solución MVC. Se conservan los nombres y conceptos del
diccionario y se relacionan con las HU del proceso.

## 124

## Tabla 102
Especificación de los mockups: campos, acciones y HU relacionadas
Código Vista Campos principales Acciones HU relacionadas
## MK-01
Solicitud de
compra
Código, descripción, justificación,
solicitante, responsable, estado, prioridad,
detalle.
Guardar / Enviar HU-40 a HU-49
MK-02 Aprobaciones
Solicitud, estado, decisión, responsable,
fecha, motivo.
## Aprobar / Rechazar /
## Devolver
HU-50 a HU-53
MK-03 Cotizaciones
Código, solicitud, proveedor, fecha,
vencimiento, subtotal, descuento, impuestos,
total.
Guardar / Seleccionar HU-54 a HU-63
MK-04 Orden de compra
Código, solicitud, cotización, proveedor,
estado, subtotal, impuestos, total.
Guardar / Cancelar HU-64 a HU-73
MK-05 Recepción
Orden, fecha, estado, conformidad,
cantidades recibidas, aceptadas y rechazadas.
Guardar / Verificar HU-74 a HU-81
MK-06 Facturación
Número, proveedor, orden, fecha, estado,
subtotal, impuestos, total.
Guardar / Validar HU-82 a HU-86

## 125

Código Vista Campos principales Acciones HU relacionadas
MK-07 Proveedores
Código, nombre, identificación fiscal,
teléfono, correo, dirección, activo.
## Guardar / Actualizar /
## Inactivar
HU-12 a HU-15
MK-08 Inicio de sesión
Correo corporativo, contraseña, mensaje de
intentos fallidos.
Ingresar HU-05
MK-09 Roles
Nombre del rol, descripción, activo, listado
de roles.
## Guardar / Actualizar /
## Inactivar
HU-01 a HU-04
MK-10 Usuarios
Nombres, apellidos, documento, correo,
teléfono, rol, estado.
## Guardar / Actualizar /
## Inactivar
HU-06 a HU-09
## MK-11
Catálogos del
sistema
Catálogo, nombre, descripción, activo.
## Guardar / Actualizar /
## Inactivar
HU-16 a HU-39
MK-12 Auditoría
Usuario, tabla afectada, ID del registro,
acción, fecha y hora, descripción.
Filtrar / Consultar HU-10 y HU-11
## Figura 19
Bocetos UI/UX de las vistas principales de solicitud, aprobación, cotización, orden, recepción y
facturación

Los bocetos de la Figura 20 completan las vistas de proveedores, inicio de sesión, roles,
usuarios, catálogos y auditoría (MK-07 a MK-12), de modo que todas las HU quedan asociadas a
una pantalla.

## 126

## Figura 20
Bocetos UI/UX complementarios de seguridad, proveedores, catálogos y auditoría

Nota. Elaboración propia. Se conserva el estilo de los bocetos de la Figura 19.

## 127

## Tabla 103
Vistas principales del sistema, HU atendidas y operaciones
Código Vista HU atendidas Información principal Operaciones
MK-01 Solicitud de compra HU-40 a HU-49
Código, descripción,
justificación, solicitante,
responsable, estado,
prioridad, fecha y detalle.
Registrar / consultar /
actualizar / inactivar /
enviar / cancelar.
MK-02 Aprobaciones HU-50 a HU-53
Solicitud, estado,
decisión, responsable,
fecha y motivo.
Aprobar / rechazar /
devolver / consultar.
MK-03 Cotizaciones HU-54 a HU-63
Código, solicitud,
proveedor, fechas,
condiciones de pago,
tiempo de entrega,
valores y detalle.
Registrar / consultar /
actualizar / seleccionar
/ calcular.
MK-04 Orden de compra HU-64 a HU-73
Código, solicitud,
cotización, proveedor,
estado, fechas, valores y
detalle.
Registrar / consultar /
actualizar / cancelar /
calcular.
MK-05 Recepción HU-74 a HU-81
Orden, usuario, fecha,
estado, conformidad,
observaciones y
cantidades.
Registrar / consultar /
actualizar / verificar
conformidad / calcular
rechazo.
MK-06 Facturación HU-82 a HU-86
Número de factura,
proveedor, orden, fecha,
estado, valores y
observaciones.
Registrar / consultar /
actualizar / validar /
calcular total.
MK-07 Proveedores HU-12 a HU-15
Identificación fiscal,
nombre, teléfono,
correo, estado y datos
de contacto.
Registrar / consultar /
actualizar / inactivar;
acciones por fila
asociadas a CU y
métodos.
MK-08 Inicio de sesión HU-05
Correo corporativo,
contraseña e intentos
fallidos.
Iniciar sesión /
bloquear por intentos
fallidos.
MK-09 Roles HU-01 a HU-04
Nombre, descripción y
estado del rol.
Registrar / consultar /
actualizar / cambiar
estado.
MK-10 Usuarios HU-06 a HU-09
Datos personales, correo,
rol y estado.
Registrar / consultar /
actualizar / cambiar
estado.
MK-11 Catálogos del sistema HU-16 a HU-39
Estados, prioridades,
tipos de ítem y tipos de
decisión.
Registrar / consultar /
actualizar / activar o
inactivar.
MK-12 Auditoría HU-10 y HU-11
Usuario, tabla, registro,
acción, fecha y
descripción.
## Registrar
automáticamente /
consultar / filtrar.
2.6.1 Cobertura CRUD por entidad
La Tabla 104 verifica que cada entidad del modelo tenga sus operaciones de creación (C),
consulta (R), actualización (U) y eliminación o inactivación (D) asignadas a una HU y a una
vista.

## 128

## Tabla 104
Cobertura CRUD de las Historias de Usuario y las vistas por entidad
Entidad Vista C R U D Otras operaciones
Rol MK-09 HU-01 HU-02 HU-03 HU-04 —
## Usuario
## MK-08,
## MK-10
HU-06 HU-07 HU-08 HU-09 HU-05 (iniciar)
Auditoría MK-12 HU-10 HU-11 — — —
Proveedor MK-07 HU-12 HU-13 HU-14 HU-15 —
Estado de solicitud MK-11 HU-16 HU-17 HU-18 HU-19 —
Prioridad MK-11 HU-20 HU-21 HU-22 HU-23 —
Tipo de ítem MK-11 HU-24 HU-25 HU-26 HU-27 —
Tipo de decisión MK-11 HU-28 HU-29 HU-30 HU-31 —
Estado de cotización MK-11 — HU-32 — HU-33 —
Estado de orden MK-11 — HU-34 — HU-35 —
Estado de recepción MK-11 — HU-36 — HU-37 —
Estado de factura MK-11 — HU-38 — HU-39 —
Solicitud de compra MK-01 HU-40 HU-41 HU-42 HU-43, HU-45 HU-44 (enviar)
Detalle de solicitud MK-01 HU-46 HU-47 HU-48 HU-49 —
Aprobación MK-02
## HU-50, HU-51,
## HU-52
## HU-53 — — —
Cotización MK-03 HU-54 HU-55 HU-56 —
HU-57 (seleccionar),
HU-58 (calcular)
Detalle de cotización MK-03 HU-59 HU-60 HU-61 HU-62 HU-63 (calcular)
Orden de compra MK-04 HU-64 HU-65 HU-66 HU-67 HU-68 (calcular)
Detalle de orden MK-04 HU-69 HU-70 HU-71 HU-72 HU-73 (calcular)
Recepción MK-05 HU-74 HU-75 HU-76 — HU-77 (verificar)
Detalle de recepción MK-05 HU-78 HU-79 HU-80 — HU-81 (calcular)
Factura MK-06 HU-82 HU-83 HU-84 —
HU-85 (validar), HU-
## 86 (calcular)
Nota. Elaboración propia. El guion (—) indica que la operación no aplica por diseño: los
registros de auditoría no se modifican ni eliminan, los catálogos de estados de cotización, orden,
recepción y factura son predefinidos y las aprobaciones se registran mediante las decisiones de
aprobar, rechazar o devolver.
2.7 Matriz de trazabilidad (HU ↔ RF ↔ RN ↔ CU ↔ MK ↔ CA)
La matriz consolida, para cada Historia de Usuario, el requisito funcional que la
formaliza, las reglas de negocio que debe cumplir, el caso de uso que la representa, la vista
(mockup) donde se ejecuta y los criterios de aceptación con los que se valida.

## 129

## Tabla 105
Matriz de trazabilidad HU–RF–RN–CU–MK–CA
HU Título RF RN CU MK CA
HU-01 Registrar rol RF-01
## RN06, RN09, RN11,
## RN29
## CU-01 MK-09 CA-1, CA-2
HU-02 Consultar roles disponibles RF-02
## RN06, RN09, RN11,
## RN29
## CU-02 MK-09 CA-1, CA-2
HU-03 Actualizar rol RF-03
## RN06, RN09, RN11,
## RN29
## CU-03 MK-09 CA-1, CA-2
HU-04 Cambiar estado de rol RF-04
## RN06, RN09, RN11,
## RN29
## CU-04 MK-09 CA-1, CA-2
HU-05 Iniciar sesión RF-05
## RN06, RN09, RN11,
## RN29
## CU-05 MK-08 CA-1, CA-2
HU-06 Registrar usuario RF-06
## RN06, RN09, RN11,
## RN29
## CU-06 MK-10 CA-1, CA-2
HU-07 Consultar usuarios del sistema RF-07
## RN06, RN09, RN11,
## RN29
## CU-07 MK-10 CA-1, CA-2
HU-08 Actualizar usuario RF-08
## RN06, RN09, RN11,
## RN29
## CU-08 MK-10 CA-1, CA-2
HU-09 Cambiar estado de usuario RF-09
## RN06, RN09, RN11,
## RN29
## CU-09 MK-10 CA-1, CA-2
HU-10 Registrar evento de auditoría RF-10 RN11, RN14, RN26 CU-10 MK-12 CA-1, CA-2
HU-11 Consultar acciones realizadas RF-11 Ninguna CU-11 MK-12 CA-1, CA-2
HU-12 Registrar proveedor RF-12
## RN01, RN02, RN06,
## RN09, RN10, RN11,
## RN14
## CU-12 MK-07 CA-1, CA-2
HU-13 Consultar proveedores registrados RF-13
## RN01, RN02, RN06,
## RN09, RN10, RN11,
## RN14
## CU-13 MK-07 CA-1, CA-2
HU-14 Actualizar proveedor RF-14
## RN01, RN02, RN06,
## RN09, RN10, RN11,
## RN14
## CU-14 MK-07 CA-1, CA-2
HU-15 Cambiar estado de proveedor RF-15
## RN01, RN02, RN06,
## RN09, RN10, RN11,
## RN14, RN07
## CU-15 MK-07 CA-1, CA-2
HU-16 Registrar estado de solicitud RF-16
## RN06, RN09, RN11,
## RN19, RN10, RN14
## CU-16 MK-11 CA-1, CA-2
## HU-17
Consultar estados del proceso de
solicitud
## RF-17
## RN06, RN09, RN10,
## RN11, RN14
## CU-17 MK-11 CA-1, CA-2
HU-18 Actualizar estado de solicitud RF-18
## RN06, RN09, RN11,
## RN19, RN10, RN14
## CU-18 MK-11 CA-1, CA-2
HU-19 Activar o inactivar estado de solicitud RF-19
## RN06, RN09, RN11,
## RN19, RN10, RN14
## CU-19 MK-11 CA-1, CA-2
HU-20 Registrar prioridad RF-20
## RN06, RN09, RN11,
## RN19
## CU-20 MK-11 CA-1, CA-2
HU-21 Consultar prioridades disponibles RF-21
## RN06, RN09, RN11,
## RN19
## CU-21 MK-11 CA-1, CA-2
HU-22 Actualizar prioridad RF-22
## RN06, RN09, RN11,
## RN19
## CU-22 MK-11 CA-1, CA-2
HU-23 Cambiar estado de prioridad RF-23
## RN06, RN09, RN11,
## RN19
## CU-23 MK-11 CA-1, CA-2
HU-24 Registrar tipo de ítem RF-24
## RN06, RN09, RN11,
## RN19
## CU-24 MK-11 CA-1, CA-2
HU-25 Consultar tipos de producto o servicio RF-25 Ninguna CU-25 MK-11 CA-1, CA-2
HU-26 Actualizar tipo de ítem RF-26
## RN06, RN09, RN11,
## RN19
## CU-26 MK-11 CA-1, CA-2
HU-27 Cambiar estado de tipo de ítem RF-27
## RN06, RN09, RN11,
## RN19
## CU-27 MK-11 CA-1, CA-2
HU-28 Registrar tipo de decisión RF-28
## RN06, RN09, RN11,
## RN19
## CU-28 MK-11 CA-1, CA-2
HU-29 Consultar decisiones de aprobación RF-29 Ninguna CU-29 MK-11 CA-1, CA-2

## 130

HU Título RF RN CU MK CA
HU-30 Actualizar tipo de decisión RF-30
## RN06, RN09, RN11,
## RN19
## CU-30 MK-11 CA-1, CA-2
HU-31 Cambiar estado de tipo de decisión RF-31
## RN06, RN09, RN11,
## RN19
## CU-31 MK-11 CA-1, CA-2
HU-32 Consultar estados de las cotizaciones RF-32 Ninguna CU-32 MK-11 CA-1, CA-2
## HU-33
Activar o inactivar estado de
cotización
## RF-33
## RN06, RN09, RN11,
## RN19, RN03, RN04,
## RN10, RN13, RN14,
## RN20
## CU-33 MK-11 CA-1, CA-2
## HU-34
Consultar estados de las órdenes de
compra
RF-34 Ninguna CU-34 MK-11 CA-1, CA-2
HU-35 Activar o inactivar estado de orden RF-35
## RN06, RN09, RN11,
## RN19, RN03, RN04,
## RN10, RN13, RN14,
## RN20
## CU-35 MK-11 CA-1, CA-2
HU-36 Consultar estados de recepción RF-36
## RN09, RN10, RN11,
## RN14, RN19
## CU-36 MK-11 CA-1, CA-2
## HU-37
Activar o inactivar estado de
recepción
## RF-37
## RN06, RN09, RN11,
## RN19, RN10, RN14
## CU-37 MK-11 CA-1, CA-2
HU-38 Consultar estados de las facturas RF-38
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## CU-38 MK-11 CA-1, CA-2
HU-39 Activar o inactivar estado de factura RF-39
## RN06, RN09, RN11,
## RN19, RN04, RN10,
## RN14, RN17, RN25
## CU-39 MK-11 CA-1, CA-2
HU-40 Registrar solicitud de compra RF-40
## RN06, RN09, RN10,
## RN11, RN14
## CU-40 MK-01 CA-1, CA-2
HU-41 Consultar solicitudes de compra RF-41
## RN06, RN09, RN10,
## RN11, RN14
## CU-41 MK-01 CA-1, CA-2
HU-42 Actualizar solicitud de compra RF-42
## RN06, RN09, RN10,
## RN11, RN14
## CU-42 MK-01 CA-1, CA-2
HU-43 Eliminar solicitud de compra RF-43
## RN06, RN09, RN11,
## RN12, RN19, RN27
## CU-43 MK-01 CA-1, CA-2
HU-44 Enviar solicitud de compra RF-44
## RN06, RN09, RN10,
## RN11, RN14, RN19
## CU-44 MK-01 CA-1, CA-2
HU-45 Cancelar solicitud de compra RF-45
## RN06, RN09, RN10,
## RN11, RN14, RN19
## CU-45 MK-01 CA-1, CA-2
HU-46 Registrar detalle de solicitud RF-46
## RN06, RN09, RN10,
## RN11, RN14, RN05,
## RN13, RN15
## CU-46 MK-01 CA-1, CA-2
## HU-47
Consultar productos o servicios
solicitados
RF-47 Ninguna CU-47 MK-01 CA-1, CA-2
HU-48 Actualizar detalle de solicitud RF-48
## RN06, RN09, RN10,
## RN11, RN14, RN05,
## RN13, RN15
## CU-48 MK-01 CA-1, CA-2
HU-49 Eliminar detalle de solicitud RF-49
## RN06, RN09, RN11,
## RN12, RN19, RN27
## CU-49 MK-01 CA-1, CA-2
HU-50 Aprobar solicitud de compra RF-50
## RN06, RN09, RN10,
## RN11, RN14, RN18
## CU-50 MK-02 CA-1, CA-2
HU-51 Rechazar solicitud de compra RF-51
## RN06, RN09, RN10,
## RN11, RN14, RN18
## CU-51 MK-02 CA-1, CA-2
HU-52 Devolver solicitud de compra RF-52
## RN06, RN09, RN10,
## RN11, RN14, RN18
## CU-52 MK-02 CA-1, CA-2
## HU-53
Consultar decisiones asociadas a una
solicitud
## RF-53
## RN06, RN09, RN10,
## RN11, RN14, RN18
## CU-53 MK-02 CA-1, CA-2
HU-54 Registrar cotización RF-54
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## CU-54 MK-03 CA-1, CA-2
HU-55 Consultar cotizaciones de proveedores RF-55
## RN01, RN02, RN06,
## RN09, RN10, RN11,
## RN14
## CU-55 MK-03 CA-1, CA-2
HU-56 Actualizar cotización RF-56
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## CU-56 MK-03 CA-1, CA-2

## 131

HU Título RF RN CU MK CA
HU-57 Seleccionar cotización RF-57
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## CU-57 MK-03 CA-1, CA-2
HU-58 Calcular total de cotización RF-58
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN25
## CU-58 MK-03 CA-1, CA-2
HU-59 Registrar detalle de cotización RF-59
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## CU-59 MK-03 CA-1, CA-2
HU-60 Consultar ítems de una cotización RF-60
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## CU-60 MK-03 CA-1, CA-2
HU-61 Actualizar detalle de cotización RF-61
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## CU-61 MK-03 CA-1, CA-2
HU-62 Eliminar detalle de cotización RF-62
## RN06, RN09, RN11,
## RN12, RN19, RN27
## CU-62 MK-03 CA-1, CA-2
## HU-63
Calcular subtotal de detalle de
cotización
## RF-63
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## CU-63 MK-03 CA-1, CA-2
HU-64 Registrar orden de compra RF-64
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## CU-64 MK-04 CA-1, CA-2
HU-65 Consultar órdenes de compra RF-65 Ninguna CU-65 MK-04 CA-1, CA-2
HU-66 Actualizar orden de compra RF-66
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## CU-66 MK-04 CA-1, CA-2
HU-67 Cancelar orden de compra RF-67
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## CU-67 MK-04 CA-1, CA-2
HU-68 Calcular total de orden de compra RF-68
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN25
## CU-68 MK-04 CA-1, CA-2
HU-69 Registrar detalle de orden RF-69
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## CU-69 MK-04 CA-1, CA-2
## HU-70
Consultar ítems de una orden de
compra
## RF-70
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20
## CU-70 MK-04 CA-1, CA-2
HU-71 Actualizar detalle de orden RF-71
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## CU-71 MK-04 CA-1, CA-2
HU-72 Eliminar detalle de orden RF-72
## RN06, RN09, RN11,
## RN12, RN19, RN27
## CU-72 MK-04 CA-1, CA-2
HU-73 Calcular subtotal de detalle de orden RF-73
## RN03, RN04, RN09,
## RN10, RN13, RN14,
## RN19, RN20, RN15,
## RN24
## CU-73 MK-04 CA-1, CA-2
HU-74 Registrar recepción RF-74
## RN09, RN10, RN11,
## RN14, RN19
## CU-74 MK-05 CA-1, CA-2
HU-75 Consultar recepciones de compras RF-75 Ninguna CU-75 MK-05 CA-1, CA-2
HU-76 Actualizar recepción RF-76
## RN09, RN10, RN11,
## RN14, RN19
## CU-76 MK-05 CA-1, CA-2
HU-77 Verificar conformidad de la recepción RF-77
## RN09, RN10, RN11,
## RN14, RN19, RN21,
## RN23
## CU-77 MK-05 CA-1, CA-2
HU-78 Registrar detalle de recepción RF-78
## RN09, RN10, RN11,
## RN14, RN19, RN13,
## RN16, RN21, RN22,
## RN23
## CU-78 MK-05 CA-1, CA-2

## 132

HU Título RF RN CU MK CA
HU-79 Consultar cantidades recibidas RF-79 Ninguna CU-79 MK-05 CA-1, CA-2
HU-80 Actualizar detalle de recepción RF-80
## RN09, RN10, RN11,
## RN14, RN19, RN13,
## RN16, RN21, RN22,
## RN23
## CU-80 MK-05 CA-1, CA-2
HU-81 Calcular cantidad rechazada RF-81 Ninguna CU-81 MK-05 CA-1, CA-2
HU-82 Registrar factura RF-82
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## CU-82 MK-06 CA-1, CA-2
## HU-83
Consultar facturas asociadas a
compras
## RF-83
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## CU-83 MK-06 CA-1, CA-2
HU-84 Actualizar factura RF-84
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## CU-84 MK-06 CA-1, CA-2
HU-85 Validar factura RF-85
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## CU-85 MK-06 CA-1, CA-2
HU-86 Calcular total de factura RF-86
## RN04, RN09, RN10,
## RN11, RN14, RN17,
## RN19, RN25
## CU-86 MK-06 CA-1, CA-2
Nota. Elaboración propia a partir de las Tablas de Historias de Usuario, requisitos funcionales,
casos de uso y mockups de este documento.

## 133

## Referencias
Agile Business Consortium. (s. f.). User stories. https://www.agilebusiness.org/
Dumas, M., La Rosa, M., Mendling, J., & Reijers, H. A. (2018). Fundamentals of business
process management (2.ª ed.). Springer. https://doi.org/10.1007/978-3-662-56509-4
Microsoft. (s. f.). Model-View-Controller (MVC). Microsoft Learn. https://learn.microsoft.com/
National Institute of Standards and Technology. (s. f.). Configuration management.
https://www.nist.gov/
Object Management Group. (2013). Business Process Model and Notation (BPMN), Version
2.0.2. https://www.omg.org/spec/BPMN/2.0.2/
Odoo S.A. (s. f.). Purchase [Documentación de Odoo 17.0].
https://www.odoo.com/documentation/17.0/applications/inventory_and_mrp/purchase.ht
ml
Oracle. (s. f.). Oracle Fusion Cloud Procurement. https://www.oracle.com/es/erp/procurement/
Pressman, R. S., & Maxim, B. R. (2020). Software engineering: A practitioner's approach (9.ª
ed.). McGraw-Hill.
SAP. (s. f.). SAP Ariba supplier management. https://www.sap.com/products/spend-
management/supplier-management.html
Sommerville, I. (2016). Software engineering (10.ª ed.). Pearson.
Van der Aalst, W. M. P., & Van Hee, K. M. (2004). Workflow management: Models, methods,
and systems. MIT Press.
White, S. A., & Miers, D. (2008). BPMN modeling and reference guide: Understanding and
using BPMN. Future Strategies Inc.

## 134

## Anexo A
Diccionario de datos de la base de datos nexa_servicios
Este anexo presenta el diccionario de datos de las 22 tablas de la base de datos
nexa_servicios, construido a partir del script final ejecutado en MariaDB (motor InnoDB,
conjunto de caracteres utf8mb4 e intercalación utf8mb4_unicode_ci). En la columna Llave, PK
indica llave primaria, FK llave foránea y UQ valor único; en la columna Requerido, «Calculada»
indica una columna generada que el gestor calcula y almacena.
## Tabla A1
Diccionario de datos de la tabla roles
Campo Tipo Llave Requerido Restricción o valor por defecto
id_rol INT PK Sí AUTO_INCREMENT
nombre_rol VARCHAR(50) UQ Sí —
descripcion VARCHAR(255) — No —
activo BOOLEAN — Sí DEFAULT TRUE
Nota. Elaboración propia a partir del script final.
## Tabla A2
Diccionario de datos de la tabla estados_solicitud
Campo Tipo Llave Requerido Restricción o valor por defecto
id_estado_solicitud INT PK Sí AUTO_INCREMENT
nombre_estado VARCHAR(50) UQ Sí —
descripcion VARCHAR(255) — No —
Nota. Elaboración propia a partir del script final.
## Tabla A3
Diccionario de datos de la tabla prioridades
Campo Tipo Llave Requerido Restricción o valor por defecto
id_prioridad INT PK Sí AUTO_INCREMENT
nombre_prioridad VARCHAR(30) UQ Sí —
descripcion VARCHAR(255) — No —
Nota. Elaboración propia a partir del script final.

## 135

## Tabla A4
Diccionario de datos de la tabla tipos_item
Campo Tipo Llave Requerido Restricción o valor por defecto
id_tipo_item INT PK Sí AUTO_INCREMENT
nombre_tipo VARCHAR(30) UQ Sí —
descripcion VARCHAR(255) — No —
Nota. Elaboración propia a partir del script final.
## Tabla A5
Diccionario de datos de la tabla tipos_decision
Campo Tipo Llave Requerido Restricción o valor por defecto
id_tipo_decision INT PK Sí AUTO_INCREMENT
nombre_decision VARCHAR(30) UQ Sí —
descripcion VARCHAR(255) — No —
Nota. Elaboración propia a partir del script final.
## Tabla A6
Diccionario de datos de la tabla estados_cotizacion
Campo Tipo Llave Requerido Restricción o valor por defecto
id_estado_cotizacion INT PK Sí AUTO_INCREMENT
nombre_estado VARCHAR(50) UQ Sí —
descripcion VARCHAR(255) — No —
Nota. Elaboración propia a partir del script final.
## Tabla A7
Diccionario de datos de la tabla estados_orden
Campo Tipo Llave Requerido Restricción o valor por defecto
id_estado_orden INT PK Sí AUTO_INCREMENT
nombre_estado VARCHAR(50) UQ Sí —
descripcion VARCHAR(255) — No —
Nota. Elaboración propia a partir del script final.

## 136

## Tabla A8
Diccionario de datos de la tabla estados_recepcion
Campo Tipo Llave Requerido Restricción o valor por defecto
id_estado_recepcion INT PK Sí AUTO_INCREMENT
nombre_estado VARCHAR(50) UQ Sí —
descripcion VARCHAR(255) — No —
Nota. Elaboración propia a partir del script final.
## Tabla A9
Diccionario de datos de la tabla estados_factura
Campo Tipo Llave Requerido Restricción o valor por defecto
id_estado_factura INT PK Sí AUTO_INCREMENT
nombre_estado VARCHAR(50) UQ Sí —
descripcion VARCHAR(255) — No —
Nota. Elaboración propia a partir del script final.
## Tabla A10
Diccionario de datos de la tabla usuarios
Campo Tipo Llave Requerido Restricción o valor por defecto
id_usuario INT PK Sí AUTO_INCREMENT
id_rol INT FK Sí → roles(id_rol)
nombres VARCHAR(100) — Sí —
apellidos VARCHAR(100) — Sí —
documento VARCHAR(20) UQ Sí —
correo VARCHAR(150) UQ Sí —
telefono VARCHAR(20) — No —
contrasena_hash VARCHAR(255) — Sí —
estado BOOLEAN — Sí DEFAULT TRUE
fecha_registro DATETIME — Sí DEFAULT CURRENT_TIMESTAMP
Nota. Elaboración propia a partir del script final.

## 137

## Tabla A11
Diccionario de datos de la tabla proveedores
Campo Tipo Llave Requerido Restricción o valor por defecto
id_proveedor INT PK Sí AUTO_INCREMENT
codigo_proveedor VARCHAR(20) UQ Sí —
nombre VARCHAR(150) — Sí —
identificacion_fiscal VARCHAR(30) UQ Sí —
telefono VARCHAR(20) — Sí —
correo VARCHAR(150) — No —
direccion VARCHAR(200) — No —
activo BOOLEAN — Sí DEFAULT TRUE
fecha_registro DATETIME — Sí DEFAULT CURRENT_TIMESTAMP
Nota. Elaboración propia a partir del script final.
## Tabla A12
Diccionario de datos de la tabla solicitudes_compra
Campo Tipo Llave Requerido Restricción o valor por defecto
id_solicitud INT PK Sí AUTO_INCREMENT
codigo_solicitud VARCHAR(20) UQ Sí —
id_solicitante INT FK Sí → usuarios(id_usuario)
id_responsable INT FK No → usuarios(id_usuario)
id_estado_solicitud INT FK Sí → estados_solicitud(id_estado_solicitud)
id_prioridad INT FK Sí → prioridades(id_prioridad)
descripcion TEXT — Sí —
justificacion TEXT — Sí —
fecha_solicitud DATETIME — Sí DEFAULT CURRENT_TIMESTAMP
fecha_actualizacion DATETIME — No —
Nota. Elaboración propia a partir del script final.
## Tabla A13
Diccionario de datos de la tabla detalle_solicitud
Campo Tipo Llave Requerido Restricción o valor por defecto
id_detalle_solicitud INT PK Sí AUTO_INCREMENT
id_solicitud INT FK Sí → solicitudes_compra(id_solicitud)
id_tipo_item INT FK Sí → tipos_item(id_tipo_item)
descripcion_item VARCHAR(255) — Sí —
cantidad DECIMAL(10,2) — Sí CHECK cantidad > 0
unidad_medida VARCHAR(30) — No —
valor_estimado DECIMAL(15,2) — No
CHECK valor_estimado IS NULL OR valor_estimado
## >= 0
Nota. Elaboración propia a partir del script final.

## 138

## Tabla A14
Diccionario de datos de la tabla aprobaciones
Campo Tipo Llave Requerido Restricción o valor por defecto
id_aprobacion INT PK Sí AUTO_INCREMENT
id_solicitud INT FK Sí → solicitudes_compra(id_solicitud)
id_usuario INT FK Sí → usuarios(id_usuario)
id_tipo_decision INT FK Sí → tipos_decision(id_tipo_decision)
motivo TEXT — No —
fecha_decision DATETIME — Sí DEFAULT CURRENT_TIMESTAMP
Nota. Elaboración propia a partir del script final.
## Tabla A15
Diccionario de datos de la tabla cotizaciones
Campo Tipo Llave Requerido Restricción o valor por defecto
id_cotizacion INT PK Sí AUTO_INCREMENT
codigo_cotizacion VARCHAR(30) UQ Sí —
id_solicitud INT FK Sí → solicitudes_compra(id_solicitud)
id_proveedor INT FK Sí → proveedores(id_proveedor)
fecha_cotizacion DATE — Sí
## DEFAULT (CURRENT_DATE); CHECK
fecha_vencimiento IS NULL OR fecha_vencimiento >=
fecha_cotizacion
fecha_vencimiento DATE — No
CHECK fecha_vencimiento IS NULL OR
fecha_vencimiento >= fecha_cotizacion
tiempo_entrega_dias INT — No
CHECK tiempo_entrega_dias IS NULL OR
tiempo_entrega_dias >= 0
condiciones_pago VARCHAR(100) — No —
valor_subtotal DECIMAL(15,2) — Sí DEFAULT 0; CHECK valor_subtotal >= 0
descuento DECIMAL(15,2) — Sí DEFAULT 0; CHECK descuento >= 0
valor_impuestos DECIMAL(15,2) — Sí DEFAULT 0; CHECK valor_impuestos >= 0
valor_total DECIMAL(15,2) — Calculada Calculada: valor_subtotal - descuento + valor_impuestos
id_estado_cotizacion INT FK Sí → estados_cotizacion(id_estado_cotizacion)
observaciones TEXT — No —
Nota. Elaboración propia a partir del script final.
## Tabla A16
Diccionario de datos de la tabla detalle_cotizacion
Campo Tipo Llave Requerido Restricción o valor por defecto
id_detalle_cotizacion INT PK Sí AUTO_INCREMENT
id_cotizacion INT FK Sí → cotizaciones(id_cotizacion)
id_detalle_solicitud INT FK Sí → detalle_solicitud(id_detalle_solicitud)
cantidad DECIMAL(10,2) — Sí CHECK cantidad > 0
precio_unitario DECIMAL(15,2) — Sí CHECK precio_unitario >= 0
subtotal DECIMAL(15,2) — Calculada Calculada: cantidad * precio_unitario

## 139

Nota. Elaboración propia a partir del script final. Restricción de unicidad compuesta:
uq_cotizacion_detalle (id_cotizacion, id_detalle_solicitud).
## Tabla A17
Diccionario de datos de la tabla ordenes_compra
Campo Tipo Llave Requerido Restricción o valor por defecto
id_orden INT PK Sí AUTO_INCREMENT
codigo_orden VARCHAR(30) UQ Sí —
id_solicitud INT FK Sí → solicitudes_compra(id_solicitud)
id_cotizacion INT FK Sí → cotizaciones(id_cotizacion)
id_comprador INT FK Sí → usuarios(id_usuario)
fecha_orden DATETIME — Sí DEFAULT CURRENT_TIMESTAMP
valor_subtotal DECIMAL(15,2) — Sí DEFAULT 0; CHECK valor_subtotal >= 0
descuento DECIMAL(15,2) — Sí DEFAULT 0; CHECK descuento >= 0
valor_impuestos DECIMAL(15,2) — Sí DEFAULT 0; CHECK valor_impuestos >= 0
valor_total DECIMAL(15,2) — Calculada Calculada: valor_subtotal - descuento + valor_impuestos
id_estado_orden INT FK Sí → estados_orden(id_estado_orden)
observaciones TEXT — No —
Nota. Elaboración propia a partir del script final.
## Tabla A18
Diccionario de datos de la tabla detalle_orden_compra
Campo Tipo Llave Requerido Restricción o valor por defecto
id_detalle_orden INT PK Sí AUTO_INCREMENT
id_orden INT FK Sí → ordenes_compra(id_orden)
id_detalle_solicitud INT FK Sí → detalle_solicitud(id_detalle_solicitud)
id_detalle_cotizacion INT FK Sí → detalle_cotizacion(id_detalle_cotizacion)
cantidad DECIMAL(10,2) — Sí CHECK cantidad > 0
precio_unitario DECIMAL(15,2) — Sí CHECK precio_unitario >= 0
descuento DECIMAL(15,2) — Sí DEFAULT 0; CHECK descuento >= 0
subtotal DECIMAL(15,2) — Calculada Calculada: cantidad * precio_unitario - descuento
Nota. Elaboración propia a partir del script final. Restricción de unicidad compuesta:
uq_orden_detalle_solicitud (id_orden, id_detalle_solicitud).

## 140

## Tabla A19
Diccionario de datos de la tabla recepciones
Campo Tipo Llave Requerido Restricción o valor por defecto
id_recepcion INT PK Sí AUTO_INCREMENT
id_orden INT FK Sí → ordenes_compra(id_orden)
id_usuario INT FK Sí → usuarios(id_usuario)
fecha_recepcion DATETIME — Sí DEFAULT CURRENT_TIMESTAMP
id_estado_recepcion INT FK Sí → estados_recepcion(id_estado_recepcion)
conforme BOOLEAN — Sí DEFAULT FALSE
observaciones TEXT — No —
Nota. Elaboración propia a partir del script final.
## Tabla A20
Diccionario de datos de la tabla detalle_recepcion
Campo Tipo Llave Requerido Restricción o valor por defecto
id_detalle_recepcion INT PK Sí AUTO_INCREMENT
id_recepcion INT FK Sí → recepciones(id_recepcion)
id_detalle_orden INT FK Sí → detalle_orden_compra(id_detalle_orden)
cantidad_recibida DECIMAL(10,2) — Sí
CHECK cantidad_recibida >= 0; CHECK
cantidad_aceptada >= 0 AND cantidad_aceptada <=
cantidad_recibida
cantidad_aceptada DECIMAL(10,2) — Sí
CHECK cantidad_aceptada >= 0 AND
cantidad_aceptada <= cantidad_recibida
cantidad_rechazada DECIMAL(10,2) — Calculada Calculada: cantidad_recibida - cantidad_aceptada
observacion TEXT — No —
Nota. Elaboración propia a partir del script final.
## Tabla A21
Diccionario de datos de la tabla facturas
Campo Tipo Llave Requerido Restricción o valor por defecto
id_factura INT PK Sí AUTO_INCREMENT
numero_factura VARCHAR(50) — Sí —
id_proveedor INT FK Sí → proveedores(id_proveedor)
id_orden INT FK Sí → ordenes_compra(id_orden)
fecha_factura DATE — Sí DEFAULT (CURRENT_DATE)
valor_subtotal DECIMAL(15,2) — Sí CHECK valor_subtotal >= 0
descuento DECIMAL(15,2) — Sí DEFAULT 0; CHECK descuento >= 0
valor_impuestos DECIMAL(15,2) — Sí DEFAULT 0; CHECK valor_impuestos >= 0
valor_total DECIMAL(15,2) — Calculada Calculada: valor_subtotal - descuento + valor_impuestos
id_estado_factura INT FK Sí → estados_factura(id_estado_factura)
observaciones TEXT — No —
Nota. Elaboración propia a partir del script final. Restricción de unicidad compuesta:
uq_factura_proveedor_numero (id_proveedor, numero_factura).

## 141

## Tabla A22
Diccionario de datos de la tabla auditoria
Campo Tipo Llave Requerido Restricción o valor por defecto
id_auditoria BIGINT PK Sí AUTO_INCREMENT
id_usuario INT FK No → usuarios(id_usuario)
tabla_afectada VARCHAR(100) — Sí —
id_registro BIGINT — Sí —
accion VARCHAR(20) — Sí CHECK accion IN ('INSERT','UPDATE','DELETE')
fecha_hora DATETIME — Sí DEFAULT CURRENT_TIMESTAMP
descripcion TEXT — No —
Nota. Elaboración propia a partir del script final. Índices de búsqueda: idx_auditoria_tabla
(tabla_afectada), idx_auditoria_registro (id_registro), idx_auditoria_accion (accion),
idx_auditoria_fecha (fecha_hora).