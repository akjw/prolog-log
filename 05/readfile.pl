readfile:-seeing(S),see('testa.txt'),readchar,seen,see(S).

readchar:-count(0).
count(Sum):-process(X,Sum).
process(Char,Sum):-Sum=\=16,get0(Char),write(Char),nl,New is Sum+1,count(New).
process(Char,16):-write("end is: "),write(Char).
