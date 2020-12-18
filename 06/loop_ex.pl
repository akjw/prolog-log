% outputs integers from a specified value down to 1
% terminating condition:
loop(0).
loop(N):-N>0,write('The value is: '),write(N),nl,
M is N-1,loop(M).

% outputs integers from First to Last inclusive.
output_values(Last,Last):- write(Last),nl,
write('end of example'),nl.
output_values(First,Last):-First=\=Last,write(First),
nl,N is First+1,output_values(N,Last).

/* sum the integers from 1 to N (the first argument)
inclusive */
sumto(1,1).
sumto(N,S):-N>1,N1 is N-1,sumto(N1,S1),S is S1+N.

% output the squares of the first N integers, one per line.
/* output the first N squares, one per line */
writesquares(1):-write(1),nl.
writesquares(N):-N>1,N1 is N-1,writesquares(N1),
Nsq is N*N,write(Nsq),nl.

% read first 6 terms from a specified file and writes them
% to the current output stream. 
read_six(Infile):-seeing(S),see(Infile),
process_terms(6),seen,see(S).
process_terms(0).
process_terms(N):-N>0,read(X),write(X),nl,N1 is N-1,
process_terms(N1).

% loop until condition is satisfied
go:-loop(start). /* start is a dummy value used to get
the looping process started.*/
loop(end).
loop(X):-X\=end,write('Type end to end'),read(Word),
write('Input was '),write(Word),nl,loop(Word).

loop:-write('Type end to end'),read(Word),
write('Input was '),write(Word),nl,
(Word=end;loop). % 'disjunctive goal' (Word=end;loop) succeeds if variable Word is bound to the atom end. If not, the system attempts to satisfy the goal loop recursively.