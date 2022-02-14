domains
city,state,person=symbol

predicates
Location(city, state)
Stays(person,city)
Res(person,state)

clauses
Location("Rajkot","Gujarat").
Location("Jamnagar","Gujarat").
Location("Gandhinagar","Gujarat").
Location("Udaipur","Rajasthan").
Location("Amritsar","Punjab").
Stays("Aanandi","Rajkot").
Stays("Devanshi","Jamnagar").
Stays("Riya","Gandhinagar").
Stays("Aash","Udaipur").
Stays("Bhargav","Amritsar").

Res(P1,S1):-
Stays(P1,X),Location(X,S1).