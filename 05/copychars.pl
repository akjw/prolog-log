% copies characters input as a single line @terminal to specified file
% stops once ! is reached 

% 1) bind name of current output stream to variable T (i.e. remember previous output setting)
% 2) set output to text file
% 3) copy characters over to output file
% 4) close output file 
% 5) reset output stream to T

copychars(Outfile):- telling(T),tell(Outfile), 
copy_characters,told,tell(T).
copy_characters:-get0(N),process(N).
/* 33 is ASCII value of character ! */
process(33).
process(N):-N=\=33,put(N),copy_characters.