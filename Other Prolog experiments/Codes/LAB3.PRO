domains
person=symbol

predicates
male(person)
female(person)
parent(person,person)
mother(person,person)
father(person,person)
sibling(person,person)
grandparent(person,person)

grandfather(person,person)
grandmother(person,person)
relative(person,person)
uncle(person,person)
aunt(person,person)

clauses
male(luv).
male(kush).
male(dashrath).
male(ram).
male(lakshman).
male(harsh).
male(bharat).
female(seeta).
female(kaushalya).
female(urmila).
female(sheena).
female(shakuntala).
parent(ram,luv).
parent(ram,kush).
parent(seeta,luv).
parent(seeta,kush).
parent(dashrath,ram).
parent(dashrath,lakshman).
parent(kaushalya,ram).
parent(kaushalya,lakshman).
parent(bharat,dashrath).
parent(bharat,sheena).
parent(shakuntala,dashrath).
parent(shakuntala,sheena).
grandparent(dashrath,luv).
grandparent(dashrath,kush).
grandparent(kaushalya,luv).
grandparent(kaushalya,kush).
grandparent(bharat,ram).
grandparent(bharat,lakshman).
grandparent(shakuntala,lakshman).
grandparent(shakuntala,ram).
relative(lakshman,luv).
relative(lakshman,kush).
relative(urmila,luv).
relative(urmila,kush).
relative(sheena,ram).
relative(harsh,ram).
relative(harsh,lakshman).
relative(sheena,lakshman).

father(A,B):- parent(A,B),male(A).
mother(A,B):- parent(A,B),female(A).
grandfather(A,B):- grandparent(A,B),male(A).
grandmother(A,B):- grandparent(A,B),female(A).
sibling(A,B):- parent(C,A),parent(C,B),not(A=B).
uncle(A,B):- relative(A,B),male(A).
aunt(A,B):- relative(A,B),female(A).