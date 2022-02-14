domains
list=integer*
database
odd(integer)
even(integer)
predicates
finde(list)
check(integer,integer)
outpute
outputo
clauses
finde([]).

finde([X|Tail]):-
Y=X mod 2,
check(X,Y),
finde(Tail).

check(X,0):-write("Even no:",X),asserta(even(X)),save("xyz.txt"),nl.
check(X,1):-write("Odd no:",X),asserta(odd(X)),save("xyz.txt"),nl.
outpute:-write("Evennumbers: "),consult("xyz.txt"),!,even(X),write(X,","),fail.
outputo:-write("Oddnumbers: "),consult("xyz.txt"),!,odd(X),write(X,","),fail.