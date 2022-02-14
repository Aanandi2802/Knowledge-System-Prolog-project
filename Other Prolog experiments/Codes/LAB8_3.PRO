predicates
start
go1
go2
go3
go4
clauses
start:-
write("Enter the string : "),readln(X),nl,
write("Enter number of char needed in substring:"),readint(N),nl,
frontstr(N,X,Y,Z),
write("Original string is:",X),nl,
write("Substring is:",Y),nl,
write("Remaining string is:",Z),nl.

go1:-
write("Enter the String: "),readln(S),
fronttoken(S,A,B),
write(A),nl,write(B),nl.

go2:-
write("Enter the String: "),readln(S),
upper_lower(S,A),
write("Lower case String: ",A),nl,
upper_lower(B,A),
write("Upper case String: ",B),nl.

go3:-
write("Enter the String: "),readln(S),
str_len(S,A),
write("The length of the string is: ",A),nl.

go4:-
write("Enter the first String: "),readln(S1),
write("Enter the second String: "),readln(S2),
concat(S1,S2,S),
write("Concated String: ",S),nl.