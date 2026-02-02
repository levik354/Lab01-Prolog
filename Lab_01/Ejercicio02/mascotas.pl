perro(firulais).
perro(bruno).
perro(max).
gato(misu).
gato(luna).
gato(chanel).
gato(orion).
ave(piolin).

dueno(ana, firulais).
dueno(ana, misu).
dueno(luis, luna).
dueno(luis, orion).
dueno(luis, firulais).
dueno(maria, piolin).
dueno(julia, chanel).
dueno(pedro, bruno).

%Confirmar si la persona tiene un perro o un gato.
dueno_p(X,Y):- dueno(X,Y), perro(Y).
dueno_g(X,Y):- dueno(X,Y), gato(Y).

%Tiene mas de una mascota.
mascota(X):- perro(X).
mascota(X) :- gato(X).
dueno_vm(X):- dueno(X,Y),dueno(X,Z), Y\=Z.
dueno_vmx(X):- dueno(X,Y), mascota(Y).

