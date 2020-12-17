% Number of input characters is output
go(Total):-count(0,Total).
count(Oldcount,Result):-get0(X),process(X,Oldcount,Result).
% once * is reached, variable Result is bound to Oldcount(the running tally), which means variable Total in goal is bound to Oldcount--this is what is output
process(42,Oldcount,Oldcount).
process(X,Oldcount,Result):-X=\=42,New is Oldcount+1,count(New,Result).
