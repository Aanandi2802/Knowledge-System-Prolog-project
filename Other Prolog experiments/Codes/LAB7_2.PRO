domains
number=integer

predicates
go
fibo(number,number,number)

clauses
go:-
write("--------------------------"),nl,
write("*****FIBONACCI SERIES*****"),nl,
write("--------------------------"),nl,
write("Enter the Number: "),
readint(N),
write("Fibonacci series is: "),nl,
write("--------------------------"),nl,
fibo(0,1,N).
fibo(A,B,1):-
write(B),nl.
fibo(X,Y,M):-
N1=X+Y,
N2=Y,
N3=M-1,
write(N2," "),
fibo(N2,N1,N3).