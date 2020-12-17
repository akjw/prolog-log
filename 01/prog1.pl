% these are facts
dog(fido).
cat(mary). dog(rover).
dog(tom). cat(harry).
dog(henry).
cat(bill). cat(steve).
% dog is a predicate. It has one argument, (fido). fido is an atom (a constant which is not a number)


% this is a rule 
% :- can be read as if 
% X is a variable 
% can be read as: X is an animal if X is a dog (for any X).
animal(X) :-dog(X).

