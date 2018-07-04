# Add a operator to the operator tab
OperatorTable addAssignOperator(":", "atPutNumber")

# call the method when the code meet the {}
curlyBrackets := method(
    r := Map clone
    # The text in the {}
    call message arguments foreach(arg,
        # For example it will call as r "BobSmith": "xxxxxxx"
        # The : operator means r atPutNumber("BobSmith", "xxxxxxx")
        # r is a Map
        r doMessage(arg)
    )
    r
)


Map atPutNumber := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""), call evalArgAt(1))
)

# openForReading return a File Object for reading, contents return the contents of the File
s := File with("phonebook.txt") openForReading contents
# Let s act as io programming code
phoneNumbers := doString(s)
phoneNumbers keys println
phoneNumbers values println