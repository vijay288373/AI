% Initial state: monkey on floor, banana on ceiling, box in room

% Actions
action(grab, [on_box, banana_at_hand], [has_banana]).
action(climb_box, [at_box, on_floor], [on_box]).
action(push_box, [at(monkey, A), at(box, A)], [at(monkey, B), at(box, B)]) :- adjacent(A, B).
action(walk(A, B), [at(monkey, A)], [at(monkey, B)]).

% Locations
adjacent(room1, room2).
