/*
Dado un valor entero, almacenar cada uno de los dígitos que lo componen en
una lista, un dígito por casilla. Por ejemplo, si se quiere almacenar el número
82671, podría consultarse: ?- almacenar(82671, L). La respuesta sería: L = [1, 7,
6, 2, 8]
*/

almacenar(N, [N]) :- N < 10.
almacenar(N, [D|R]) :-
    N >= 10,
    D is N mod 10,
    N1 is N // 10,
    almacenar(N1, R).