% number of vowels in series of characters 

% set inoput stream to textfile, count vowels, close text file.
go(Vowels):-see('myfile.txt'),count(0,Vowels),seen.

% alternatively, using user input in terminal as input stream:
% go(Vowels):-count(0,Vowels).

% Oldvowels bound to 0, Totweols bound to Vowels
count(Oldvowels,Totalvowels):-get0(X),process(X,Oldvowels,Totalvowels).
% once * is reached, Totalvowels bound to Oldvowels-->Vowels==Totalvowels, value is output
process(42,Oldvowels,Oldvowels).
% New is a temp variable
process(X,Oldvowels,Totalvowels):-X=\=42,processChar(X,Oldvowels,New),count(New,Totalvowels).
% if char is a vowel, New is bound to incremented value of Oldvowel.
processChar(X,Oldvowels,New):-vowel(X),New is Oldvowels+1.
% otherwise, New is bound to value of Oldvowels.
processChar(X,Oldvowels,Oldvowels).
vowel(65). /* A */
vowel(69). /* E */
vowel(73). /* I */
vowel(79). /* O */
vowel(85). /* U */
vowel(97). /* a */
vowel(101). /* e */
vowel(105). /* i */
vowel(111). /* o */
vowel(117). /* u */