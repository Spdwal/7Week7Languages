reverse(A, R) :- reverse(A, [], R).
reverse([], X, X).
reverse([Head|Tail], List2, List3) :-
    reverse(Tail,[Head|List2], List3).
