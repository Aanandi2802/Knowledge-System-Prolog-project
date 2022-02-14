domains
predicates
start
max(real,real,real)
min(real,real,real)
clauses
start:-
nl,
write("--------------------------"),nl,
write("Enter 1st number: "),readreal(N1),
write("Enter 2nd number: "),readreal(N2),
write("Enter 3rd number: "),readreal(N3),nl,
write("--------------------------"),nl,
max(N1,N2,N3),min(N1,N2,N3),
write("--------------------------"),nl.

max(N1,N2,N3):-
N1>N2, N1>N3 ,write("Maximum: ",N1),nl.
max(N1,N2,N3):-
N1>N2,write("Maximum: ",N3),nl.
max(_,N2,N3):-
N2>N3,write("Maximum: ",N2),nl.
max(_,_,N3):-
write("Maximum: ",N3),nl.

min(N1,N2,N3):-
N1<N2, N1<N3 ,write("Minimum: " ,N1),nl.
min(N1,N2,N3):-
N1<N2,write("Minimum: ",N3),nl.
min(_,N2,N3):-
N2<N3,write("Minimum: ",N2),nl.
min(_,_,N3):-
write("Minimum: " ,N3),nl.