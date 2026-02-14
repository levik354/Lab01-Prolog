
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
dos_listas([X1|Tail1],[X2|Tail2]):-
    new_caracteres(X1,X2),
    new_lista([_|X1,X2],
    dos_listas(Tail1,Tail2).
              
