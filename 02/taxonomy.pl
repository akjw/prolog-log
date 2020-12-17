/* Animals Database */
animal(mammal,tiger,carnivore,stripes).
animal(mammal,hyena,carnivore,ugly).
animal(mammal,lion,carnivore,mane).
animal(mammal,zebra,herbivore,stripes).
animal(bird,eagle,carnivore,large).
animal(bird,sparrow,scavenger,small).
animal(reptile,snake,carnivore,long).
animal(reptile,lizard,scavenger,small).

all_mammals:-animal(mammal,A,_,_),write(A).
carnivores:-animal(mammal,A,carnivore,_),write(A).
has_stripes:-animal(mammal,A,_,stripes),write(A).
maned_reptile_exists:-animal(reptile,_,_,mane).
