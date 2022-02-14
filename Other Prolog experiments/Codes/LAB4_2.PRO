domains
name=symbol

predicates
start
rule(integer)
ancestor(name,name)

clauses

ancestor(devanshi,dineshbhai).
ancestor(aanandi,ramnikbhai).
ancestor(aash,ramnikbhai).
ancestor(bhargav,dineshbhai).
ancestor(mishri,bhargavbhai).
ancestor(riya,manishbhai).
start:-nl,
write("**************OPTION**************"),nl,
write("6.who is ancestor of given person?"),nl,
write("7.List of 'who is ancestor of whom?'."),nl,
write("Enter your choice : "),nl,
readint(C),rule(C).

rule(6):-
write("Enter the name : "),
readln(N),ancestor(N,X),write(X),nl,fail.
rule(6):-write("do you want to continue(y/n) ? "),
readln(A),
A="y",
start.

rule(7):-
nl,write("Complete list of : 'who is ancestor of whom'"),nl,nl,
write("***person-ancestor***"),nl,!,ancestor(X,Y),write(X),write(" - ",Y),nl,fail,nl.
rule(7):-write("do you want to continue(y/n) ? "),
readln(A),
A="y",
start.




