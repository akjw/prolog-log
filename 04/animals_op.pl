
?-op(150,xfy,chases).
?-op(150,xf,large_dog).
?-op(150,xf,small_animal).
?-op(150,xf,small).
?-op(150,xf,large).
?-op(150,xf,dog).
?-op(150,xf,cat).

fido dog. fido large.
% dog(fido). large(fido).
mary cat. mary large.
% cat(mary). large(mary).
dog(rover). small(rover).
cat(jane). small(jane).
dog(tom). small(tom).
cat(harry).
dog(fred). large(fred).
cat(henry). large(henry).
cat(bill).
cat(steve). large(steve).
large(jim).
large(mike).
large_dog(X):- dog(X),large(X).

A small_animal:- A dog, A small.
% small_animal(A):- dog(A),small(A).
small_animal(B):- cat(B),small(B).


X chases Y:- X large_dog, Y small_animal,write(X),write(' chases '),write(Y),nl.
% chases(X,Y):-
% large_dog(X),small_animal(Y),
% write(X),write(' chases '),write(Y),nl.

do_stuff(X,Y):-Avg is (X+Y)/2, Root is sqrt(X*Y), Max is max(X,Y), 
write("average: "),write(Avg),nl,
write("root: "),write(Root),nl,
write("max: "),write(Max).