% % isa_dog fred
% fred isa_dog
% isa_dog(fred).

% 150 is an arbitrary value used to specidfy operator precdence 
% xfy is an atom which indicates a binary predicate that will be converted to an infix operator
% fy is an atom which indicates a unary predicate that will be converted to a prefix operator
% xf is an atom which indicates a unary predicate that will be converted to a postfix operator
% this line transforms predicate into operator; must be placed in file before the first clause thast uses likes:
?-op(150,xfy,likes).
?-op(150, xf, is_female).
?-op(150,xfy,owns).
?-op(150, xf, isa_cat).

% likes(john,X):-is_female(X),owns(X,Y),isa_cat(Y).
john likes X:- X is_female, X owns Y, Y isa_cat.
% mixed notation is permitted:
% likes(john,X):-is_female(X), X owns Y, isa_cat(Y).
is_female(petra).
owns(petra,kiki).
isa_cat(kiki).



