setup:-seeing(S),see('people.txt'),read_data,
write('Data read'),nl,seen,see(S).

read_data:-read(A),process(A).

process(end).
process(A):-read(B),read(C),read(D),read(E),assertz(person(A,B,C,D,E)),read_data.


change(Forename,Surname,New_Profession):-
  person(Forename,Surname,Age,City,Profession),
  retract(person(Forename,Surname,Age,City,Profession)),
  assertz(person(Forename,Surname,Age,City,New_Profession)).

output_data:-
  telling(T),tell('people2.txt'),
  write_data,told,tell(T),
  write('Data written'),nl.

write_data:-person(A,B,C,D,E),
write(A),write('. '),
write(B),write('. '),
write(C),write('. '),
write(D),write('. '),
write(E),write('.'),nl,fail.

write_data:-write('end.'),nl.