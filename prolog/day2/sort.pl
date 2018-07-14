min(A,A,A).
min(A,B,B) :- B < A.
min(A,B,A) :- A < B.

minInList([X|XS], M) :- minInList(XS, M1), min(X, M1, M).
minInList([X],X).

takeout(X, [X|R], R).
% Find X in the List and return the rest of the list.
takeout(X, [F|R], [F|S]) :- takeout(X,R,S).

% Merge the Min and the sorted.
mySort(List, [Min|Sorted]) :-
    % Find the min element in the List.
    minInList(List, Min),
    % Find min in the pos of the List.
    takeout(Min, List, Rest),
    % Build the Sorted with the min from right to left.
    mySort(Rest, Sorted).

mySort([X], [X]).
