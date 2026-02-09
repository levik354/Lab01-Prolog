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


%Amante de animales.
amante_animales(X):- dueno(X,Y), dueno(X,Z), perro(Y), gato(Z).

%Misma mascota.
mascota_compartida(Y):- dueno(X,Y), dueno(Z,Y), Z\=X.

%Tipo mascota.
tipo_mascota(X,perro):- dueno(X,Y), perro(Y).
tipo_mascota(X,gato):- dueno(X,Y), gato(Y).
tipo_mascota(X,ave):- dueno(X,Y), ave(Y).


