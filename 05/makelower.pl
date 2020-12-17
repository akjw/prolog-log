makelower:-get0(X), process(X).

% stop once special character is reached
process(13):-nl.
% Newchar is a temp variable
process(Char):-Char=\=13,processChar(Char,Newchar),put(Newchar),makelower.
% if char is uppercase, New is bound to lowercase value (offset of 25 between ASCII values of upper & lowercase chars)
processChar(Char,Newchar):-isUpper(Char),Newchar is Char+32.
% otherwise, Char is unchanged.
processChar(Char,Char).

isUpper(X):-char_type(X, upper).

