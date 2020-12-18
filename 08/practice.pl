add_data:-write('Add animal'),nl,read(X),process(X).
  

process(end).
process(X):-animal(X),write('Animal already exists!'),nl.
process(X):-assertz(animal(X)),add_data.

display_animals:-animal(X),write(X),nl,fail.
display_animals:-write('all animals listed'),nl.

% remove2:-remove(dog),remove(cat).
% remove(X):-retract(animal(X)).
% remove(X).

% remove2:-retract(animal(dog)),retract(animal(cat)).

remove2:-remove.
remove:-retract(animal(dog)),retract(animal(cat)).
remove.