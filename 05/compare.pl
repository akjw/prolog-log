compare(File1,File2):-
  seeing(S),compfile(File1,File2),
  see(File1),seen, see(File2),seen,see(S).
  compfile(File1,File2):-
  see(File1),read(X),see(File2),read(Y),
  comp(X,Y),process(X,Y,File1,File2).
  comp(A,A):-write(A),write(' is the same as '),
  write(A),nl.
  comp(A,B):-write(A),write(' is different from '),
  write(B),nl.
  process(end,end,_,_).
  process(_,_,File1,File2):-compfile(File1,File2).