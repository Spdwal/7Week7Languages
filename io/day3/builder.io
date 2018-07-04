# Build the Builder from the Object
Builder := Object clone

# Foward is a method like missing_methods
# When the methods can't find, call the forward method
Builder forward := method(
    writeln("<", call message name, ">")
    call message arguments foreach(
        arg,
        content := self doMessage(arg); if(content type == "Sequence",
        writeln(content)))
    writeln("</", call message name, ">"))


Builder ul(
    li("Io")
    li("Lua")
    li("Javascript"))