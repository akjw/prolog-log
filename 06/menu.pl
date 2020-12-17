go:- write('This shows how a repeated menu works'),
menu.
menu:-nl,write('MENU'),nl,
write('a. Activity A'),nl,write('b. Activity B'),nl,
write('c. Activity C'),nl,write('d. End'),nl,
read(Choice),nl,choice(Choice).
choice(a):-write('Activity A chosen'),menu.
choice(b):-write('Activity B chosen'),menu.
choice(c):-write('Activity C chosen'),menu.
choice(d):-write('Goodbye!'),nl.
choice(_):-write('Please try again!'),menu.