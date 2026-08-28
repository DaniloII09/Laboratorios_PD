:- [hechos].

esta_armado(X) :-
  arma(X, _).

enemigo_en_mismo_lugar(X) :-
  ubicacion(X, Lugar),
  enemigos_aparecen(_, Lugar).

encuentro_personajes(X, Y) :-
  X \== Y,
  ubicacion(X, Lugar),
  ubicacion(Y, Lugar).