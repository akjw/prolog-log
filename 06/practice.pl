% (1) Define a predicate to output the values of the squares of the integers from N1 to
% N2 inclusive and test it with N1 = 6 and N2 = 12.
go(N1,N2):-square(N1,N2).

square(Curr,End):-Curr < End, Sq is Curr*Curr, write(Sq),nl, Next is Curr+1, square(Next,End).
square(End,End):-Sq is End*End,write(Sq),nl.

% (2) Define and test a predicate to read in a series of characters input by the user and
% output all of those before the first new line or ? character.
read_chars:-get0(X),series(X).
series(63):-nl.
series(10):-nl.
series(X):-X=\=63,X=\=10,write(X),nl,read_chars.


% (3) Using the person clauses given in Section 6.3.1, find the professions of all
% those over 40.
person(john,smith,45,london,doctor).
person(henry,smith,26,manchester,plumber).
person(jane,wilson,62,london,teacher).
person(mary,smith,29,glasgow,surveyor).
person(martin,williams,33,birmingham,teacher).

forty_profesh:-person(_,_,X,_,Profession), X > 40, write(Profession),nl,fail.
forty_profesh.