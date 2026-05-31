# KirbyDoro-App
Mi primera app con flutter, esta app es basicamente un temporizador, que se basa en la tecnica de gestion de tiempo: POMODORO, la cual proviene del temporizador en forma de tomate, por eso tambien su nombre. Se usa como metodo de estudio, que en mi caso me ha ayudado bastante a mantener el enfoque en mis actividades. 

Este mismo consiste en lo siguiente:

# FASES DE UN POMODORO
    * FASE 1 : TRABAJO PROFUNDO 
        -Concentracion total en la tarea, sin distraer el enfoque
        Duracion: 25min, sin embargo puede ser personalizada segun el usuario

    * FASE 2: DESCANSO CORTO (BREAK)
        -Despues de completar un ciclo de trabajo profundo, el usuario toma un break para replantearse porque eligió esta carrera
        Duracion: 5min, para no perder el hilo de lo que se estaba haciendo. Sin embargo, este tambien puede ser personalizado por el usuario sumando o restando minutos, pero esta etapa no se puede saltar

    * FASE 3: DESCANSO
        -Despues de completar 4 ciclos de Trabajo Profundo + descanso corto, El usuario toma un descanso mas largo, para replantearse ahora su existencia y la inmortalidad del cangrejo 
        Duracion: 15 minutos de manera predeterminada, sin embargo este tambien puede ser perzonalizada por el usuario sumando o restando minutos

    ESTE CICLO SE REPITE LAS VECES QUE HAGAN FALTA PARA TERMINAR LA TAREA, ES IMPORTANTE QUE DURANTE EL POMODORO SE MANTENGA EL ENFOQUE EN UNA SOLA TAREA, CUALQUIER IDEA EXTERNA SE ANOTA

Segun fuentes de internet recolecté estas reglas que explica mejor como funciona:

# REGLAS
    -El Pomodoro es indivisible: Un bloque de 25 minutos de trabajo puro no admite pausas, interrupciones ni fracciones.

    -El temporizador manda: Si terminas una tarea antes de que suene la alarma, dedica el tiempo restante a revisar o mejorar tu trabajo hasta que se agote el tiempo.

    -Descansos obligatorios: Los 5 minutos de pausa son innegociables para descansar la mente. Debes alejarte de la pantalla o de la actividad para estirarte o relajarte.

    -Descansos largos: Al completar cuatro ciclos de trabajo seguidos, debes tomar un descanso mucho más prolongado, de entre 15 y 30 minutos.

    -Gestión de interrupciones: Si una idea o urgencia te distrae, anótala en un papel para atenderla más tarde y continúa trabajando hasta que suene el timbre.

    Si mi vaga explicacion no es suficiente, puede visitar el siguiente enlace: https://www.todoist.com/es/productivity-methods/pomodoro-technique

Sin embargo, quiero hacer de esta técnica que se adapte a cada tipo de usuario, que tenga total libertad de los bloques de tiempo que desee emplear en las cosas, tambien permitir que se adapte a sus ritmos, todo dependera de la diciplica y constancia del que lo emplee

# ¿POR QUE DECIDI HACER UNA APP BASADA EN ESTO?
    -Uso esta técnica de manera regular para llevar a cabo mis actididades diarias y academicas, y para mi, es una tecnica genial que me ha permitido mantener el enfoque y administrar mis tiempos. Uso paginas que me llevan el tiempo de manera continua, y ha funcionado, sin embargo, estas son muy poco personalizadas y no me permiten en ocasiones cumplir de manera correcta, tampoco me permite llevar el registro de mis tareas. Es por ello que decidi llevar a cabo este proyecto, tambien decidi hacerlo con tematica de kirby ya que es el que siempre me acompaña a estudiar<3

# PORQUE SI EL PROFESOR HECTOR LUNA MANDO A HACER UN CONTADOR, YO HICE UN POMODORO?
    -Esto de kirbyDoro lo habia hecho antes para ver como era flutter (solo plantee la estructura), lo que me hizo ver lo chevere de este lenguaje a partir de ver lo que se puede hacer, cuando el profe subio la evaluacion busque la forma de adaptar los requerimientos que exigia y seguir este proyecto

# EXPERIENCIA DE USUARIO ¿COMO FUNCIONARA? ¿Que apartados tendra por ahora (lo que vive en mi mente y lo que tengo planeado)?
    -Por ahora solo haremos lo que incluya la parte evaluativa del profesor, que es mostrar como funcionaria el sumar y restar minutos al contador, no funcionara aun el temporizador,  POR AHORA, me gustaria seguirlo

# FLUJO DE FUNCIONALIDAD
1. ELEGIR UNA TAREA:
    -Se elige una tarea en la que se va a trabajar, actividad en la que vas a mantener el enfoque por un periodo prolongado de tiempo, para esto hare una card que me sirva de apartado (tacks) donde el usuario colocara la tarea a la que pondra todo su foco

2. CONFIGURAR CUENTA REGRESIVA
    -Aqui el usuario tendra la opcion de personalizar el tiempo que emplea en la tarea, donde el mismo establecera el tiempo que desea que tenga la fase 1 de trabajo. (aqui es donde estaran los botones, va a ser la parte que funcionara)

3. TRABAJO CONTINUO
    -Una vez empiece el temporizador, el usuario ya no tiene habilitado sumar o restar minutos, solo pausar y reestablecer el tiempo en caso de que lo desee, no se pueden saltar fases

4. DESCANSO CORTO (BREAK)
    -Cada que termine el ciclo de trabajo, el usuario tendra un descanso minimo de 5min, aqui el usuario podra sumar minutos (hasta 5 mas), o restar (Sin bajar de 5). Esto para garantizar que la mente descanse, el usuario tenga un momento para cuestionarse, pero que no pierda el hilo de lo que hace

5. DESCANSO LARGO
    -Este es cuando se completen 4 ciclos completos de trabajo + break, y sera de un minimo de 15 minutos hasta donde el usuario quiera. luego de este descanso se reinicia el contador de ciclos

6. EL USUARIO TENDRA ACCESO A SU INFORMACION
    -El usuario podra tener un perfil y visualizar su informacion (por ahora sera una card con mi informacion)
 
 # BITACORA 30/05

hoy lo que hice fue establecer la estructura de la app, pero en esta entrega solo servira los botone de sumar/restar tiempo. el concepto de lo que es pomodoro no va a ser porque hay que hacer de la entrega lo mas simple posible, asi que solo se vera reflejador el contador del tiempo (sumar/restar)

Tambien es importante aclarar que usare la IA por puros fines pedagogicos, sin que modifique nada de mi codigo, solo la usare para que en caso de un error recibir retroalimentacion y recomendaciones. Es por ello que implementare los comentarios donde YO, por mi parte, explicare cada parte de mi codigo (ya al final cuando haga el ultimo commit).

He tenido problemas con git, no se que le pasa y no me deja subir lo que tengo, asi que si en un momento dado subo todo muy adelantado es lo que he estado trabajando de dias
 
# BITACORA 31/05

ha sido un dia y noche largas, he vivido las consecuencias de no ser constante y procrastinar, sin embargo, eso no me ha impedido disfrutar de este proceso, es muy satisfactorio cuando logras algo que por mas minimo que sea, logre que la card quedara bien dios mio
