/* incorrect version */
% increase (N):-N is N+1.

increase(N,M):-M is N+1.
% increase(4,X). --> X = 5

% operator precdence
% standard operator precedence is followed in an expression like A+B*C-D
% brackets should be used if different order of evaluation is required: X is (A+B)*(C-D).

checkeven(N):-M is N//2,N=:=2*M.
% The integer quotient operator // divides its first argument by its second and
% truncates the result to the nearest integer between it and zero. So 12//2 is 6, 23//2 is
% 11, -11//2 is -5 and -30//2 is -15. Dividing an integer by 2 using // and multiplying
% it by 2 again will give the original integer if it is even, but not otherwise.

% terms identical ==
% both arguments must be terms
% goal only succeeds if both terms are identical
% variables used in the terms may/may not be bound, but no variables are bound as a result of goal evaluation 

% ?- likes(X,prolog)==likes(X,prolog).
% X = _
% ?- likes(X,prolog)==likes(Y,prolog).
% no
% ?- X is 10,pred1(X)==pred1(10).
% X = 10
% ?- X==0.
% no

% value of arithmetic expression only evaulated when used with the is/2 operator; without it, 6+4 is just a term with functor + and arguments 6 & 4, and  is different from the term 3+7.
% ?- 6+4==3+7.
% no

% terms not identical \==
% ?- pred1(X)\==pred1(Y).
% X = _ ,
% Y = _
% X and Y are unbound and are different variables
% z

% Terms Identical With Unification =
% succeeds if the two terms unify (i.e. if they can be bound; if so, binding will occur)
% ?-pred1(X)=pred1(10).
% X=10
% ?- likes(X,prolog)=likes(john,Y).
% X = john ,
% Y = prolog
% ?- likes(X,prolog)=likes(Y,prolog).
% X = Y = _
% (Binding X and Y makes the terms identical.)

% Non-Unification Between Two Terms \=
% succeeds if Term1=Term2 list_trivial_fails
% ?-6+4\=3+7.
% true

% not/1 can be placed before any goal to give its negation. The
% negated goal succeeds if the original goal fails and fails if the original goal
% succeeds.
% dog(fido).
% ?-not dog(fido).
% false

%The disjunction operator ;/2 (written as a semicolon character) is used to represent
% 'or'. It is an infix operator that takes two arguments, both of which are goals.
% Goal1;Goal2 succeeds if either Goal1 or Goal2 succeeds
% ?- 6<3;7 is 5+2.
% yes
