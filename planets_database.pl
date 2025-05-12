% Facts
planet(mercury, 0.39, 0.055).
planet(venus, 0.72, 0.815).
planet(earth, 1.00, 1.00).

% Rule to find planets within a certain distance from the sun
within_distance(Distance, Planet) :-
    planet(Planet, D, _),
    D =< Distance.
move(1, Source, Target, _) :-
    format('Move disk from ~w to ~w~n', [Source, Target]).
move(N, Source, Target, Auxiliary) :-
    N > 1,
    N1 is N - 1,
    move(N1, Source, Auxiliary, Target),
    move(1, Source, Target, _),
    move(N1, Auxiliary, Target, Source).
