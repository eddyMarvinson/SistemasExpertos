%MODULO PARA UN TEST DE ORIENTACION VOCACIONAL
%Institucion: Universidad Mayor de San Andres
%Carrera: Informatica
%Autor: Univ. Edson Eddy Lecoña Zarate
%Materia: INF-351
%Docente: Lic. Reynaldo Zeballos

:- use_module(library(pce)).
:- use_module(library(pce_style_item)).

%%%%%% BASE DE CONOCMIENTO Y MOTOR DE INFERENCIA %%%%%%
%Area de la Base de Conocimiento MACRO (*1*), llama a MACRO-PREGUNTAS
campo(ciencias_formales):- ciencias_formales.
campo(ciencias_naturales):- ciencias_naturales.
campo(ciencias_sociales):- ciencias_sociales.
campo(arte):- arte.
area_especifica(matematica):- matematica.
area_especifica(logica):- logica.
area_especifica(fisica):- fisica.
area_especifica(robotica):- robotica.
area_especifica(biologia):- biologia.
area_especifica(robotica):- robotica.
area_especifica(oficina):- oficina.
area_especifica(gestion):- gestion.
area_especifica(liderazgo):- liderazgo.
carrera('Ingenieria en Computacion'):- ingenieria_computacion.
carrera('Ciencias de la Computacion'):- ciencias_de_la_computacion.
carrera('Ingenieria de Software'):- ingenieria_de_software.
carrera('Sistemas de Informacion'):- sistemas_de_informacion.
carrera('Tecnologias de la Informacion'):- tecnologias_de_la_informacion.
carrera('Artes Plasticas'):- arte.
%ELSE, cuando no llega a ninguna conclusion
carrera('No se puede sugerir una carrera').

%Area MICRO de la Base de Conocimiento (*3*)
ciencias_formales:- 
    conocimiento_teorico;(riguroso,busca_argumentos).

ciencias_naturales:-
    (universo;desastres_naturales;laboratorio),
    fenomenos_naturales.

ciencias_sociales:-
    (cultura;necesidades_personas;participacion_sociedad),
    conflictos_sociales,
    problemas_sociales.

arte:-
    (detalles;originalidad),(actividades_imaginacion;jugar_imaginacion),creatividad_estetica.

matematica:-
    ciencias_formales,
    busca_soluciones,
    gusta_matematica,
    (calculo_mental;uso_de_graficos).

logica:-
    ciencias_formales,
    (analiza_hechos;concluir).

fisica:-ciencias_naturales,
    resolver_problema,
    transformar_energia,
    analizar_leyes_fisicas.

robotica:-
    ciencias_naturales,
    entender_mecanismo,
    construir_robot.

biologia:-
    ciencias_naturales,
    anatomia,
    laboratorio,
    enfermedades.

oficina:-
    ciencias_sociales,
    comunicacion,
    (redactar_informes;manipulacion_escritorio;manejar_informacion).

gestion:-
    ciencias_sociales,
    administracion,
    (informacion;redactar_informes).

liderazgo:-
    ciencias_sociales,
    persuasion,
    (organizar;plantear).

ingenieria_computacion:-
    matematica,
    logica,
    fisica,
    uso_instrumental,
    (descubrir_fallas;entender_mecanismos).

ciencias_de_la_computacion:-
    matematica,
    logica,
    (computador,messenger),
    (exactitud;fisica;robotica;biologia).

ingenieria_de_software:-
    lugares_apropiados,
    oficina,
    equipo,
    liderazgo,
    (observar_construir;gustar_construir;gestion).

sistemas_de_informacion:-
    equipo,
    vestir_formal,
    procesos,
    gestion,
    liderazgo.

tecnologias_de_la_informacion:-
    uso_instrumental,
    oficina,
    gestion,
    (programas_rapidos;trabajar_ya).

%Area de las MACRO-PREGUNTAS (*2*)
riguroso:-
    pregunta('Eres riguroso y no te gusta quedar en ambiguedades'),!.
busca_argumentos:-
    pregunta('Siempre buscas argumentos que respaldan un hecho o accion'),!.
conocimiento_teorico:-
    pregunta('Te gusta estudiar el conocimiento mas que aplicarlo'),!.
universo:-
    pregunta('Tienes conocimiento sobre el origen del universo (cientifico)'),!.
desastres_naturales:-
    pregunta('Sabes como se producen los desastres naturales: temblor, huracanes, etc'),!.
laboratorio:-
    pregunta('Te agrada los experimentos de laboratorio'),!.
fenomenos_naturales:-
    pregunta('Te gustaria conocer sobre los cambios que se producen en la naturaleza'),!.
problemas_sociales:-
    pregunta('Te interesa saber que es lo que genera los problemas sociales.'),!.
conflictos_sociales:-
    pregunta('Te interesa los conflictos que enfrenta la sociedad actualmente'),!.
necesidades_personas:-
    pregunta('A veces te preguntas: que piensa la gente, que valora y cuales son sus necesidades'),!.
participacion_sociedad:-
    pregunta('Habra medios efectivos de participacion en la sociedad'),!.
cultura:-
    pregunta('Te interesa fomentar la cultura'),!.
jugar_imaginacion:-
    pregunta('Te gusta jugar con la imaginacion y expresarlo en tu propia forma, ya sea las letras, la imagen, la musica o la expresion del cuerpo'),!.
actividades_imaginacion:-
    pregunta('Prefieres actividades que requieran de imaginacion e intuicion'),!.
originalidad:-
    pregunta('Te gusta realizar las cosas con originalidad'),!.
detalles:-
    pregunta('Los detalles son importantes para mi, en cuanto a tu estetica'),!.
creatividad_estetica:-
    pregunta('Valoras la creatividad estetica ya sea en la palabra, la imagen , una melodia, un ritmo'),!.
gusta_matematica:-
    pregunta('Te gusta estudiar y resolver problemas matematicos'),!.
uso_de_graficos:-
    pregunta('Te gusta hacer, interpretar y utilizar graficos'),!.
calculo_mental:-
    pregunta('Tienes facilidad para hacer calculos mentales'),!.
busca_soluciones:-
    pregunta('Buscas hasta encontrar la solucion a un problema matematico cuando no te sale'),!.
analiza_hechos:
    -pregunta('Te gusta analizar las cosas, tratando de buscar una razon para los hechos que ocurren'),!.
concluir:-
    pregunta('Sacas conclusiones basandote en hechos ciertos'),!.
resolver_problema:-
    pregunta('Te gusta posesionarme de la realidad del problema hasta resolverlo'),!.
analizar_leyes_fisicas:-
    pregunta('Te llama la atencion observar los hechos reales y donde se aplican las leyes de la fisica'),!.
transformar_energia:-
    pregunta('Te interesa fijarte como se transmite la fuerza en un motor, de que manera transforma la energia electrica en movimiento'),!.
entender_mecanismo:-
    pregunta('Te gustaria entender y mejorar el funcionamiento el mecanismo de un artefacto o un juguete, etc.'),!.
construir_robot:-
    pregunta('Te agradaria conocer la estructura de un robot y luego poder construir uno'),!.
anatomia:-
    pregunta('Te gustaria estudiar a profundidad la estructura atomica del cuerpo humano'),!.
enfermedades:-
    pregunta('Quisieras aprender sobre el tratamiento y prevencion de enfermedades'),!.
comunicacion:-
    pregunta('Te gusta eso de hacer averiguaciones, conversar con una persona y otra'),!.
manejar_informacion:-
    pregunta('Manejas informacion con facilidad, como llenar formularios, documentos, fichas, etc.'),!.
manipulacion_escritorio:-
    pregunta('Te agrada la manipulacion de papeles, lapices, y todo lo que se usa en un escritorio'),!.
redactar_informes:-
    pregunta('Tienes habilidad para redactar informes'),!.
administracion:-
    pregunta('Te gustaria ser parte de la administraron de una empresa'),!.
informacion:-
    pregunta('Tienes habilidad en clasificar y verificar informacion'),!.
persuasion:-
    pregunta('Logras persuadir a los demas con tus ideas'),!.
organizar:-
    pregunta('Te gusta organizar eventos o actividades'),!.
plantear:-
    pregunta('No tienes problemas en plantear situaciones ante los demas'),!.
uso_instrumental:-
    pregunta('Te llama la atencion el uso de instrumental, manipulacion de consolas o de equipo tecnologico'),!.
descubrir_fallas:-
    pregunta('Tienes intuicion para descubrirle las fallas de funcionamiento'),!.
entender_mecanismos:-
    pregunta('Tienes curiosidad y paciencia en llegar a entender el mecanismo de algo, entender como funciona'),!.
exactitud:-
    pregunta('Te agrada la exactitud. Por ejemplo que tu reloj ande absolutamente exacto en la hora'),!.
computador:-
    pregunta('Te interesa mucho estudiar como funciona un computador'),!.
messenger:-
    pregunta('Tienes curiosidad de saber de como te comunicas por el Messenger'),!.
lugares_apropiados:-
    pregunta('Para ti es fundamental trabajar en lugares apropiados con la comodidad adecuada'),!.
observar_construir:-
    pregunta('Te gusta observar como se construye un edificio o un barco'),!.
gustar_construir:-
    pregunta('Gustas por construir, proyectar, realizar'),!.
equipo:-
    pregunta('Te gusta formar parte de un equipo de trabajo'),!.
procesos:-
    pregunta('Te interesaria planificar los procesos de una empresa'),!.
vestir_formal:-
    pregunta('Te gusta vestir formalmente: (terno)'),!.
programas_rapidos:-
    pregunta('Te gustaria desarrollar programas de computacion para proveer de soluciones rapida para una organizacion'),!.
trabajar_ya:-
    pregunta('Prefieres estudiar y trabajar ya'),!.

%Tipo de respuestas Si o NO
:-dynamic si/1,no/1.

%INICIALIZACION
main:-
    new(Menu, dialog('Test vocacional de Computacion', size(1000,1000))),
    new(L, label(nombre,'BIENVENIDO!')),
    new(@texto,label(nombre,'Haga click en Nueva Consulta para comenzar el TEST')),
    new(@opcion,label(nombre,'')),
    new(Salir,button('SALIR',and(message(Menu,destroy),message(Menu,free)))),
    new(@boton,button('Nueva Consulta',message(@prolog,botones))),
    send(Menu,append(L)),
    new(@btnpregunta,button('¿Prueba?')),
    send(Menu,display,L,point(125,20)),
    send(Menu,display,@boton,point(20,50)),
    send(Menu,display,@texto,point(20,100)),
    send(Menu,display,Salir,point(20,400)),
    send(Menu,display,@opcion,point(20,150)),
    send(Menu,open_centered).

%MENU PRINCIPAL
preguntar(Problema):- new(Dialogo,dialog('Pregunta')),
    new(L2,label(texto,'Responde la siguiente pregunta:')),
    new(La,label(prob,Problema)),

    new(B1,button(si,and(message(Dialogo,return,si)))),
    new(B2,button(no,and(message(Dialogo,return,no)))),

    send(Dialogo,append(L2)),
    send(Dialogo,append(La)),
    send(Dialogo,append(B1)),
    send(Dialogo,append(B2)),

    send(Dialogo,default_button,si),
    send(Dialogo,open_centered),get(Dialogo,confirm,Respuesta),
    
    write(Respuesta),send(Dialogo,destroy),

    ((Respuesta==si)->assert(si(Problema));assert(no(Problema)),fail).

pregunta(S):-(si(S)->true;(no(S)->fail;preguntar(S))).
limpiar:-retract(si(_)),fail.
limpiar:-retract(no(_)),fail.
limpiar.

%SECCION DECISION FINAL
botones:-lim,
    %send(@boton, free),
    %send(@btnpregunta,free),
    carrera(Enfer),
    send(@texto,selection('Segun sus respuestas, usted puede estudiar:')),
    send(@opcion,selection(Enfer)),
    limpiar.
lim:-send(@opcion,selection('')).