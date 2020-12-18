dog(fido).
dog(fred).
dog(jonathan).

alldogs:-dog(X),write(X),write(' is a dog'),nl,fail.
alldogs.

% process will continue until fido, fred and jonathan have all been output,
% when evaluation will again fail. 
% Then, the call to dog(X) will also fail as there
% are no further dog clauses in the database. 
% This will cause the first clause for alldogs to fail;
% Prolog will examine the second clause of alldogs. 
% This will succeed and evaluation will stop.