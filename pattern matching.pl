match([], _).
match([X|Xs], [X|Ys]) :-
    match(Xs, Ys).
match(Pattern, [_|Ys]) :-
    match(Pattern, Ys).
