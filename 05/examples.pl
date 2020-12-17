% writeq/1 to output quotes
% read goal evluation unifies input term with argument variable; if variable is unbound it is bound to input value.
% if argument is bound, it only succeeds if input term is identical to previously bound value

% ?- X=fred,read(X).
% : fred.
% X = fred

% get0/1 takes single variable argument, which is unified with ASCII value of character read from current input stream

% get/1: unifies varibale argument with value of next non-white space character from current input stream


