readline:-get0(X),process(X).
process(13):-nl.
process(X):-X=\=13,put(X),nl,readline.