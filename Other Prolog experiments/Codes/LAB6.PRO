domains
name=symbol
branch=symbol
choice=integer

predicates
student(name,branch)
menu(integer)
start

clauses
student(aanandi,it).
student(trusha,it).
student(twiency,it).
student(priyanka,ce).
student(rahul,ce).
student(kesha,ec).
student(devanshi,ec).
student(raj,ec).

start:-
write("------------------------OPTIONS-----------------------"),nl,
write("1.Display list of all students"),nl,
write("2.Display list of students for given specific branch"),nl,
write("3.Display list of students excluding specific branch"),nl,
write("------------------------------------------------------"),nl,
write("Enter Your Choice : "),
readint(C),menu(C).
start.

menu(1):-write("List of all students"),nl,
student(S,_),write("Name:",S),nl,fail.
menu(1):-write("Do you want to continue(y/n)? "),
readln(A),
A="y",
start.

menu(2):-write("Enter branch: "),readln(L),
student(Z,L),
write(Z),nl,fail.
menu(2):-write("Do you want to continue(y/n) ? "),
readln(A),
A="y",
start.

menu(3):-write("Enter the branch you want to exclude: "),
readln(X),nl,
student(N,B),
not(X=B),
write("Name-",N,","),write("Branch-",B),nl,fail.
menu(3):-write("Do you want to continue(y/n) ? "),
readln(A),
A="y",
start.