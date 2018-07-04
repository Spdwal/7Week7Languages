List2D := List clone

List2D dim := method(x, y,
    y repeat(
        innerList := list()
        x repeat(innerList append(nil))
        self append(innerList)))
List2D set := method(x, y, value,
    self at(x) atPut(y, value))


List2D get := method(x, y,
    self at(x) at(y))


List2D flip := method(
    newList2D := List2D clone
    x := self size
    y := self at(0) size
    y repeat(
        counter := 0
        innerList := List clone
        while(counter < x,
        counter println
        innerList append(self get(counter, y))
        newList2D append(innerList)
        counter := counter + 1)
    self := newList2D))


myList := List2D clone dim(2,3)
myList println

myList get(1,1) println
myList at(0) println
writeln
myList size println
myList at(0) size println


file := File with("matrix.txt")

file remove
file openForUpdating
file write(myList join("\n"))
file close