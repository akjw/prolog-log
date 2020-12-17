get_answer(Ans):-write('Enter answer to question'),
nl,get_answer2(Ans).
get_answer2(Ans):-
write('answer yes or no'),
read(A),
((valid(A),Ans=A,write('Answer is '),
write(A),nl);get_answer2(Ans)).
valid(yes). valid(no).

% with repeat
get_answer_repeat(Ans):-
  write('Enter answer to question'),nl,
  repeat,write('answer yes or no'),read(Ans),
  valid(Ans),write('Answer is '),write(Ans),nl.
  valid(yes). valid(no).

readterms(Infile):-
  seeing(S),see(Infile),
  repeat,read(X),write(X),nl,X=end,
  seen,see(user).