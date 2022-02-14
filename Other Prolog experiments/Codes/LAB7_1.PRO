domains
number=integer

predicates
go
fact(number,number)

clauses
go:-
write("---------------------"),nl,
write("******FACTORIAL******"),nl,
write("---------------------"),nl,
write("Enter Number: "),
readint(N),
fact(1,N).
fact(N,0):-
write("Factorial is: ",N),nl,
write("---------------------"),nl.
fact(N,X):-
R=N*X,
S=X-1,
fact(R,S).