domains
name,dept,sub=symbol

predicates
start
result(real,real,real,real,real,real,real,real,real,real)

clauses

start:-nl,
write("**************************************"),nl,
write("Enter Student Name : "),readln(A),
write("Enter Roll number : "),readln(B),
write("Enter subject information for 5 subjects :-"),nl,
write("Subject Name : "),readln(S1),
write("Max marks-"),readreal(M1),
write("Obtained marks-"),readreal(O1),

write("Subject Name : "),readln(S2),
write("Max marks-"),readreal(M2),
write("Obtained marks-"),readreal(O2),

write("Subject Name : "),readln(S3),
write("Max marks-"),readreal(M3),
write("Obtained marks-"),readreal(O3),

write("Subject Name : "),readln(S4),
write("Max marks-"),readreal(M4),
write("Obtained marks-"),readreal(O4),

write("Subject Name : "),readln(S5),
write("Max marks-"),readreal(M5),
write("Obtained marks-"),readreal(O5),nl,

write("****************RESULT****************"),nl,
write("Student Name: ",A),nl,
write("Roll number: ",B),nl,
write("Subjects: '",S1,"','",S2,"','",S3,"','",S4,"','",S5,"'."),nl,
result(M1,M2,M3,M4,M5,O1,O2,O3,O4,O5).


result(M1,M2,M3,M4,M5,O1,O2,O3,O4,O5):-

M=M1+M2+M3+M4+M5,
write("Total Maximum Marks: ",M),nl,

O=O1+O2+O3+O4+O5,
write("Total Obtained Marks: ",O),nl,

P=(O*100)/M,
writef("Percentage: %0.2f",P),nl,
write("**************************************"),nl,nl,
write("do you want to continue(y/n) ? "),
readln(Z),
Z="y",
start.

