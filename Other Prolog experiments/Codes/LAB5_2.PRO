domains
name,dept=symbol

predicates
start
empinfo(symbol,symbol,integer,real,real)
dallowance(real)
gsalary(real,real)

clauses

start:-nl,
write("*******************************"),nl,
write("Enter Employee Name : "),readln(A),
write("Enter Department : "),readln(B),
write("Enter Age : "),readint(C),
write("Enter HRA : "),readreal(H),
write("Enter Basic Salary : "),readreal(S),
empinfo(A,B,C,S,H).

empinfo(A,B,C,S,H):-nl,
write("************PAYSLIP************"),nl,
write("Employee Details:-"),nl,
write("Name : ",A),nl,
write("Department : ",B),nl,
write("Age : ",C),nl,
write("BA : ",S),nl,
dallowance(S),
write("HRA : ",H),nl,
gsalary(S,H),
write("*******************************"),nl,
write("do you want to continue(y/n) ? "),
readln(Z),
Z="y",
start.

dallowance(S):-
D=S*0.15,write("DA : ",D),nl.

gsalary(S,H):-
G=S+H+(0.15*S),
write("GS : ",G),nl.
