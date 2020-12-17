% readterms(Infile,Outfile):-
%   see(Infile),tell(Outfile),
%   read(T1),write(T1),nl,read(T2),write(T2),nl,
%   read(T3),write(T3),nl,read(T4),write(T4),nl,
%   seen,told.

% above version assumes previous input and output streams were 'user', since that is what seen and told default to, but this is not necessarily the case

% modified version:
% seeing(S): bind S to name of current input stream (i.e. save previous input setting)
% see(Infile): set input stream to infile
% telling(T):bind name of current output stream to variable T (i.e. remember previous output setting)
% tell(Outfile): set output stream to outfile
% read and write first four terms, each output on a separate line
% close input file, reset input stream to S
% close output file, reset output stream to T
readterms(Infile,Outfile):-
  seeing(S),see(Infile),telling(T),tell(Outfile),
  read(T1),write(T1),nl,read(T2),write(T2),nl,
  read(T3),write(T3),nl,read(T4),write(T4),nl,
  seen,see(S),told,tell(T).