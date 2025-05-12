fact(a).
fact(b).

rule(c) :- fact(a), fact(b).

forward :- rule(X), \+ fact(X), assertz(fact(X)), write(X), nl, forward.
forward.
