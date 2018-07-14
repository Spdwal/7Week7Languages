hanoi(N) :- move(N, left, centre, right).

move(0, _, _, _,) :- !.

move(N, A, B, C) :-
    M is N - 1,
    move(M, A, C, B), inform(A, B), move(M, C, B, A).

imform(X, Y) :-
    write([move, a, disc, from, the, X, pole, to, the, Y, pole]),
    nl.
