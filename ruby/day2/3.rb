print("Filename:")
filename = gets().chomp()
print("grep:")

str = gets().chomp()

file = File.new(filename, "r")

file.each_line() do |line|

  if line =~ Regexp.new(str)
    puts line
  end
end
