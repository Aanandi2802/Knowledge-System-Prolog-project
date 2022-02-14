domains
predicates
start
square(integer)
squroot(integer)
clauses
start:-
nl,
write("-------------------------------"),nl,
write("Enter the positive number: "),readint(N),
square(N),squroot(N),
write("-------------------------------"),nl,nl.
square(N):-
S=N*N,
write("-------------------------------"),nl,
write("Square is: ",S),nl.
squroot(N):-
Y=sqrt(N),
Z=round(Y),
Y=Z,
write("Square Root: ",Y),nl.
Squroot(N):-
Y=sqrt(N),
Z=round(Y),
not(Y=Z),
write("Square Root: NA "),nl.