domains

name,mrst,loc,gen,age=symbol

predicates

start
rule(integer)
status(name,mrst)
location(name,loc)
gender(name,gen)

clauses

status(devanshi,unmarried).
status(aanandi,unmarried).
status(bhargav,married).
status(aash,married).
gender(devanshi,female).
gender(aanandi,female).
gender(aash,male).
gender(bhargav,male).
location(devanshi,Gandhinagar).
location(aanandi,Rajkot).
location(aash,Junagadh).
location(bhargav,Jamnagar).

start:-
write("OPTION"),nl,
write("1.list of married employees"),nl,
write("2.list of unmarried employees"),nl,
write("3.list of male employees"),nl,
write("4.list of female employee"),nl,
write("5.list of employee at given location"),nl,
write("enter choice: "),nl,
readint(C),rule(C).

rule(1):-status(Z,married),write(Z),nl,fail.
rule(2):-status(Z,unmarried),write(Z),nl,fail.
rule(3):-gender(Z,male),write(Z),nl,fail.
rule(4):-gender(Z,female),write(Z),nl,fail.
rule(5):-write("Enter Location: "),readln(L),location(Z,L),write(Z),nl,fail.






