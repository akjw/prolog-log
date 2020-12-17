person(john,smith,45,london,doctor).
person(henry,smith,26,manchester,plumber).
person(jane,wilson,62,london,teacher).
person(mary,smith,29,glasgow,surveyor).
person(martin,williams,33,birmingham,teacher).

allteachers:-person(Forename,Surname,_,_,teacher),
write(Forename),write(' '),write(Surname),nl,
fail.
allteachers.

% stops as soon as goal Surname=williams succeeds; since predicates are evaluated in order, moving martin williams in the list of predicates will determine how many people from the db are output (i.e. if martin williams is first, only one person will be ouput)
somepeople:-person(Forename,Surname,_,_,_),
write(Forename),write(' '),write(Surname),nl,
Surname=williams.
somepeople.