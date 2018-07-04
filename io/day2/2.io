Number originDived := Number getSlot("/")
Number / := method(number, if(number==0, 0, originDived(number)))

(2/1) println
(2/0) println