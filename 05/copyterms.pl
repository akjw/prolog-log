copyterms(Infile,Outfile):-
  seeing(S),see(Infile),telling(T),tell(Outfile),
  copy,seen,see(S),told,tell(T).
copy:-read(Term),process(Term).
process(end_of_file).
process(X):-X\==end_of_file,write(X),write('.'),nl,copy.