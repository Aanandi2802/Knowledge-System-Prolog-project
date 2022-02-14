domains
name,branch,semester=symbol percentage=integer
database
students(name,branch,semester,percentage)

predicates
go
list(integer)
clauses

go:-
write("Enter your choice from given-"),nl,
write("1.Enter new student details."),nl,
write("2.Delete a student data."),nl,
write("3.Search and display specific student data."),nl,
write("4.List of students have greater than specific percentage."),nl,
readint(X),
list(X).

list(1):-
write("Enter the name: "),readln(N),
write("Enter the branch: "),readln(B),
write("Enter the semester: "),readln(S),
write("Enter the percentage: "),readint(P),
asserta(students(N,B,S,P)),
save("abc.txt"),nl,
write("Do you want to continue(y/n) ? "),
readln(A),
A="y",
go.

list(2):-
write("Enter the name of student you want to delete: "),
readln(N1),
consult("abc.txt"),nl,
retract(students(N1,_,_,_)),
write("Do you want to continue(y/n) ? "),
readln(A),
A="y",
go.

list(3):-
write("Enter the name of student you want to search: "),
readln(N1),
consult("abc.txt"),nl,
students(N1,B,S,P),
write("Given student details: "),nl,
write("Branch: ",B),nl,
write("Semester: ",S),nl,
write("Percentage: ",P),nl,
write("Do you want to continue(y/n) ? "),
readln(A),
A="y",
go.

list(4):-
write("Enter percentage: "),
readint(GP),
consult("abc.txt"),nl,
students(N,_,_,P),
P>GP,write(N),nl,
write("Do you want to continue(y/n) ? "),
readln(A),
A="y",
go.