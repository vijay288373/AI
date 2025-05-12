% Facts
name_dob('Alice', 12, 5, 1995).
name_dob('Bob', 23, 11, 1990).

% Rule to display DOB
show_dob(Name) :-
    name_dob(Name, Day, Month, Year),
    format('~w was born on ~d-~d-~d~n', [Name, Day, Month, Year]).
% Facts
student_teacher('Alice', 'Mr. Johnson', 'MATH101').
student_teacher('Bob', 'Ms. Smith', 'ENG202').

% Rule to find teacher for a student and subject
find_teacher(Student, Teacher, SubjectCode) :-
    student_teacher(Student, Teacher, SubjectCode).
