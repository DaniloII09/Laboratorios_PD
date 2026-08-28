% 3) En el pueblo español llegan varios personajes. León es un agente y tiene 27 años.
% Ashley es una estudiante y tiene 20 años. Ada es una espía y tiene 26 años. Luis es
% un investigador y tiene 32 años. León está armado con una pistola y un cuchillo. Ada
% está armada con una pistola. Luis no lleva armas de fuego, solo un cuchillo. Los
% Ganados son enemigos infectados por Las Plagas y aparecen en el pueblo y en el
% castillo. Los Regeneradores son enemigos infectados por Las Plagas y aparecen en
% la isla. El pueblo tiene una dificultad alta. El castillo tiene una dificultad alta. La isla
% tiene una dificultad muy alta. León y Luis se encuentran en el pueblo. Ada aparece
% tanto en el pueblo como en el castillo.

% 1. Defina un mínimo de 3 reglas** derivadas de esos hechos, usando conectores
% lógicos (`,` para AND, `;` para OR) y comparaciones cuando sea necesario. Cada
% regla debe tener un propósito claro y debe poder consultarse con resultados
% verificables en `swipl`.
% 2. Separe su trabajo en dos archivos .pl distintos:
% - `hechos.pl` → contiene únicamente la base de conocimientos (los hechos).
% - `reglas.pl` → contiene únicamente las reglas, y debe cargar el archivo de hechos
% con `:- consult('hechos.pl').` (o `:- [hechos].`) al inicio para que funcione
% correctamente.
% 3. Suba ambos archivos a un repositorio de GitHub. El repositorio debe estar público
% (o con acceso habilitado).
% 4. Copie el enlace del repositorio de GitHub y envíelo en la tarea correspondiente en
% el Moodle.


% Personajes
agente(leon).
estudiante(ashley).
espia(ada).
investigador(luis).

% Edades
edad(leon, 27).
edad(ashley, 20).
edad(ada, 26).
edad(luis, 32).

% Armas
arma(leon, pistola).
arma(leon, cuchillo).
arma(ada, pistola).
arma(luis, cuchillo).

% Enemigos
enemigos(ganados).
enemigos(regeneradores).

enemigos_infectados(ganados, plagas).
enemigos_infectados(regeneradores, plagas).

enemigos_aparecen(ganados, pueblo).
enemigos_aparecen(ganados, castillo).
enemigos_aparecen(regeneradores, isla).

% Dificultad
dificultad(pueblo, alta).
dificultad(castillo, alta).
dificultad(isla, muy_alta).

% Lugar Personajes
ubicacion(leon, pueblo).
ubicacion(luis, pueblo).
ubicacion(ada, pueblo).
ubicacion(ada, castillo).

