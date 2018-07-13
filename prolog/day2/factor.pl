factor(0,1).
factor(X,Y) :-
    succ(X1,X),
    factor(X1, Z),
    Y is Z * X.
