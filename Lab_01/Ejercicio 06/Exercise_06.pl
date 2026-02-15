

%Escribe una regla que verifique si un elemento es miembro de una lista. 
miembro(X,[X|_]).
miembro(X,[_|T]) :-
    miembro(X,T). 

%Escribe una regla "longitud" que dada una lista, calcula su longitud.

longitud([], 0).
longitud([_|Cola], N) :-
    longitud(Cola, N1),
    writeln(N1), %Cada ciclo
    N is N1 + 1.

%Otra manera de contar la longitud
proper_length(Lista, Longitud) :- 
      is_list(Lista), 
      length(Lista, Longitud).


%Escribe una regla "concatena" que dadas dos listas, las concatene en otra.
concatena([], L, L).
concatena([X|Xs], L2, [X|R]) :-
	concatena(Xs, L2, R).


%Escribe una regla que permite obtener en una lista los N elementos de las serie de fibonacci, 
%usa la regla predifina append(L1,L2,L3), que concatena L1 y L2, en L3.
fibonacci(N, L) :-
    N > 0,
    fib_aux(N, [0,1], L).
fib_aux(1, [F|_], [F]).
fib_aux(2, [F1,F2|_], [F1,F2]).
fib_aux(N, [F1,F2|_], R) :-
    N > 2,
    F3 is F1 + F2,
    N1 is N - 1,
    append([F1], R1, R),
    fib_aux(N1, [F2,F3], R1).

%Escribe una regla que determine el reverso de una lista.
reverso([], []).
reverso([X|Xs], R) :-
    reverso(Xs, R1),
    append(R1, [X], R).

%Escribe una regla que determine si una lista es palindroma.
palindroma(L) :-
    reverso(L, L).
