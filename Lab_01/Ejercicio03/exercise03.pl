% Hechos: estudiante y su nota final en un curso
nota(ana, 4.5).
nota(luis, 2.8).
nota(maria, 3.7).
nota(juan, 5.0).
nota(pedro, 2.3).


%No aprobado
reprueba(X,reprueba):- nota(X,Y), Y<3.0.

%Aprobado
aprueba(X,aprobado):- nota(X,Y), Y>2.9.

%Rango
rango(X,Min,Max):- nota(X,Y), X=X, Y>Min, Y<Max.

%Clasificacion
clasificacion_nota(Nota,Tipo):- Nota<3.0, Tipo = reprueba.
clasificacion_nota(Nota,Tipo):- Nota>2.9, Nota<4.0, Tipo = aprobado.
clasificacion_nota(Nota,Tipo):- Nota>3.9, Nota<4.5, Tipo = notable.
clasificacion_nota(Nota,Tipo):- Nota>4.4, Nota<5.1, Tipo = excellente.


%Distancia ecludiea
distancia((X1,Y1),(X2,Y2),D):- D is sqrt((X2-X1)**2 + (Y2-Y1)**2).

% Caso base: lista vacía
distancia_total([], 0).

% Caso base: un solo punto
distancia_total([_], 0).

% Caso recursivo: dos o más puntos
distancia_total([P1, P2 | Resto], Total) :-
    distancia(P1, P2, D),
    distancia_total([P2 | Resto], Subtotal),
    Total is D + Subtotal.



