color(red).
color(blue).
color(yellow).
color(green).

adjacent(a,b).
adjacent(a, d).
adjacent(a, e).
adjacent(b, c).
adjacent(b, d).
adjacent(b, e).
adjacent(c, d).
adjacent(c, e).
adjacent(d, e).
adjacent(X, Y) :- adjacent(Y, X).

adjacent(X,Y):- X =\= Y.


different(X, Y) :- X \= Y.

map(A, B, C, D, E) :-
    color(A),
    color(B),
    color(C),
    color(D),
    color(E),

    different(A, B),
    different(A, D),
    different(A, E),
    different(B, C),
    different(B, D),
    different(B, E),
    different(C, D),
    different(C, E),
    different(D, E).


