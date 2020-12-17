factorial(1,1).
factorial(N,Nfact):-N > 1,N1 is N-1,
factorial(N1,Nfact1),Nfact is N*Nfact1.


go:-repeat,read_and_check(N,Type),
write(N),write(' is '),write(Type),nl,N=:=100.
read_and_check(N,Type):-write('Enter next number: '),read(N),type(N,Type).
type(N,even):-Div is N//2,Prod is 2*Div,Prod=:=N,!.
type(N,odd).
