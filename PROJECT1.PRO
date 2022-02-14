domains
    name,genre,language,age = symbol
    rating = integer
database
    webseries(name,genre,language,rating,age)

predicates
    start
    rule(Integer)
	choice(Integer)
    continue(String)

clauses

start:-
        clearwindow(),
        write("======== Project: Web-Series Recommendation ========"),nl,
        write("1. Enter New Web-Series."),nl,
		write("2. Display All Web-Serie Details."),nl, 
		write("3. Display specific Web-Series Details."),nl, 
        write("4. List of Web-Series having Age Restriction."),nl,
        write("5. List of Web-Series having rating greater than specified rating."),nl,
		write("6. Display list of Webseries excluding specific genre"),nl,
		write("7. Delete the Web-Series Data"),nl,
		write("8. Exit from the program."),nl,
        write("Enter the Choice: "),readint(X),
        rule(X),nl,
		write("Do you want to continue(y/n)?"),
		readln(C),
		continue(C).

rule(1):-
        nl,
		write("Enter Web-Series:-"),
		readln(Name),
        write("Enter Genre:-"),
		readln(Genre),
        write("Enter Language:-"),
		readln(Language),
        write("Enter Rating:-"),
		readint(Rating),
		write("Enter Age Restriction:-"),
		readln(Age),
        asserta(webseries(Name,Genre,Language,Rating,Age)),nl,
        save("project.txt"),
        nl,write("Saved Successfully....!!!!"),nl.

rule(2):-
        nl,
		consult("project.txt"),
		write("Display All Web-Series Details.:- "),
		webseries(N,G,L,R,A),nl,
		write(N,"-",G,"-",L,"-",R,"-",A),fail,nl.
	
rule(3):-
        nl,
		write("Enter the category:- "),nl,
		write("1. Name."),nl,
		write("2. Genre."),nl, 
		write("3. Language."),nl, 
		write("Enter your choice: "),
		readint(Z),nl,
		choice(Z).
		
rule(4):-
		nl,
		write("Age Restriction Web-series(Yes|No):- "),
		readln(A),
		consult("project.txt"),
		webseries(N,G,L,R,A),nl,
        write(N,"-",G,"-",L,"-",R,"-",A),fail,nl.        

rule(5):-
        nl,
		consult("project.txt"),
		write("\nEnter Minimum Rating:- "),
		readint(X),
        webseries(N,G,L,R,A),
        X<R,nl,
        write(N,"-",G,"-",L,"-",R,"-",A),fail,nl.

rule(6):-
		nl,
		consult("project.txt"),
		write("Enter genre name to be excluded from Webseries list: "),
		readln(GX),!,
		webseries(N,G,L,R,A),
		G<>GX,nl,
		write(N,"-",G,"-",L,"-",R,"-",A),nl,fail.
		
rule(7):-
        nl,
		write("Enter Web-Series which you want to delete:-"),
		readln(Name),
        retract(webseries(Name,_,_,_,_)),nl,
        save("project.txt"),
        nl,write("Deleted Successfully....!!!!"),nl.
	
rule(8):-
        nl,write("Program Terminated Successfully...Thank You...!!!!!"),nl.
		
	
choice(1):-
		write("Enter Web series Name:- "),
		readln(N),nl,
		webseries(N,G,L,R,A),
        write(N,"-",G,"-",L,"-",R,"-",A),nl.
		
choice(2):-
		write("Enter Web series Genre:- "),
		readln(G),nl,
		webseries(N,G,L,R,A),
        write(N,"-",G,"-",L,"-",R,"-",A),nl,fail.
		
choice(3):-
		write("Enter Web series Language:- "),
		readln(L),nl,
		webseries(N,G,L,R,A),
        write(N,"-",G,"-",L,"-",R,"-",A),nl,fail.
	
continue(y):-
		start.
continue(n):-
		nl,write("Program Terminated Successfully...Thank You...!!!!!"),nl.
		