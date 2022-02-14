domains
ino,qty,cost=integer
desc,itype=string
items=item(ino,desc,qty,cost)
predicates
go
inven(itype,items)
search
enter(integer)
clauses
inven("fg",item(1,"keybord",10,2000)).
inven("rm",item(2,"plasticbox",10,300)).
inven("sf",item(3,"keypad",10,500)).
inven("fgi",item(4,"mouse",10,900)).
inven("rms",item(5,"plasticbag",10,500)).
inven("ssf",item(6,"remote",10,200)).
inven("fp",item(7,"speaker",10,5000)).
inven("lg",item(8,"refrigrator",10,9000)).
inven("lg",item(9,"oven",10,8000)).
inven("rel",item(10,"mobile",10,9000)).
go:-
enter(10),nl,
search.
enter(0):-write("All data is entered.").

enter(N):-
write("enter the ten objects data:"),nl,
write("enter item type: "),readln(T),
write("enter item number: "),readint(NO),
write("enter item description: "),readln(D),
write("enter item quantity: "),readint(Q),
write("enter item cost: "),readint(C),
inven(T,item(NO,D,Q,C)),
N=N-1,enter(N).

search:-
write("The details of objects entered by user is:"),nl,
write(" item type"),
write(" item number"),
write(" item description"),
write(" item quantity"),
write(" item cost"),nl,
!,inven(T,item(NO,D,Q,C)),
write(" ",T," ",NO," ",D," ",Q," ",C),nl,fail.