twoDimensionalSum := method(twoList,
    mySum := 0
    twoList foreach(myList, mySum := myList sum + mySum))

twoDimensionalSum(list(list(1,2,3), list(1,2,3))) println