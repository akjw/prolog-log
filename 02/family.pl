% head for first 3 clauses is a compound term with functor parent and arity 2.
parent(victoria, albert).
parent(X,Y):-father(X,Y).
parent(X,Y):-mother(X,Y).
father(john,henry).
mother(jane,henry).

% also possible for program to include clauses for which the head has functor parent, but with different arity:
% parent(john).
% parent(X):-son(X,Y).
% in this instance, parent/2 and parent/1 will be used to distinguish between the two predicates with the name parent (one hasd arity 1, the other 2)

%a also possible for parent to be used as an atom in the same program:
% animal(parent).
% but this will likely cause confusion

% atom appearing as a fact/head of a rule can be regarded as a preciate with no arguments (e.g) go/0

christmas.
go:-parent(john, B),
   write('joh has a child named '),
   write(B),nl.




