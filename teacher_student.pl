% Facts
student_teacher('Alice', 'Mr. Johnson', 'MATH101').
student_teacher('Bob', 'Ms. Smith', 'ENG202').

% Rule to find teacher for a student and subject
find_teacher(Student, Teacher, SubjectCode) :-
    student_teacher(Student, Teacher, SubjectCode).
% Facts
planet(mercury, 0.39, 0.055).
planet(venus, 0.72, 0.815).
planet(earth, 1.00, 1.00).

% Rule to find planets within a certain distance from the sun
within_distance(Distance, Planet) :-
    planet(Planet, D, _),
    D =< Distance.
