fibImpl := method(a, b, c,
    a println
    if(c != 0, fibImpl(b, a+b, c-1))
)

fib := method(c,
    fibImpl(1, 1, c))


fib(10)