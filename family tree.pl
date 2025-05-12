% Facts
parent(john, mary).
parent(john, david).
parent(mary, susan).
parent(david, tom).

% Rules
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).
% Facts
diet(diabetes, 'Avoid sugar, prefer vegetables').
diet(hypertension, 'Low salt, high fiber').
diet(obesity, 'Low fat, more fruits').

% Rule
suggest_diet(Disease) :-
    diet(Disease, Recommendation),
    format('Recommended diet: ~w~n', [Recommendation]).
