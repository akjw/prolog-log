combine(First,Second,Outfile):-
  seeing(S),see(First),telling(T),tell(Outfile),
  copy,seen,see(Second),copy,write(end),seen,see(S),told,tell(T).

copy:-read(Term),process(Term).
process(X):-X==end.
process(X):-X\==end,write(X),nl,copy.
