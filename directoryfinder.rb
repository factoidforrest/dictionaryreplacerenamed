#confirms operation
puts "enter project directory:"
directory = gets.chomp
Dir.chdir(directory)
puts Dir.pwd
