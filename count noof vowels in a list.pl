vowel(a). vowel(e). vowel(i). vowel(o). vowel(u).

count_vowels([], 0).
count_vowels([H|T], Count) :-
    vowel(H),
    count_vowels(T, Rest),
    Count is Rest + 1.

count_vowels([H|T], Count) :-
    \+ vowel(H),
    count_vowels(T, Count).
