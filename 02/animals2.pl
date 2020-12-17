dog(fido). large(fido).
cat(mary). large(mary).
dog(rover). dog(jane).
dog(tom). large(tom). cat(harry).
dog(fred). dog(henry).
cat(bill). cat(steve).
small(henry).large(fred).
large(steve). large(jim).
large(mike).
large_animal(X):-dog(X),large(X).
large_animal(Z):-cat(Z),large(Z).

chases(X,Y):-dog(X),cat(Y),write(X),
    write(' chases '),write(Y),nl.
% declarative: 'chases(X,Y' is true if dog(X) is true and cat(Y) is true and write(X) is true, etc.
% procedural: 'to satisfy chases(X,Y0, first satisfy dog(X), then satisfy cat(Y), then satisfy write(X), etc.'

go:-dog(X),large(X),write(X),
  write(' is a large dog'),nl.

dogowner(X):-dog(Y),owns(X,Y).

owns(alex,fido).
owns(xena,rover).

dogowner(fiona).
dogowner(joany).

go5:-dogowner(X),write(X).