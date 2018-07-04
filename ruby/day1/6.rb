srand 1111
number = rand(20)

print("Please guess the number: ")

str = gets

value = str.to_i

while(value != number) do
  if(value < number) then print "Please guess a bigger number.\n"
  else
    print "Please guess a smaller number.\n"
  end
  str = gets
  value = str.to_i
end

print "Get!"
