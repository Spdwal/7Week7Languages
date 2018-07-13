min(A,A,A).
min(A,B,B) :- B < A.
min(A,B,A) :- A < B.
minInList([Head|Tail], Min) :- minInList(Tail, Min1), min(Head, Min1, Min).
minInList([X], X).
