fib(0,0).
fib(1,1).
fib(N,F) :- succ(N1,N), succ(N2,N1), fib(N1,F1), fib(N2,F2), plus(F1,F2,F).
