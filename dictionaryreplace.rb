#!/usr/bin/env ruby
dictionary = {'  ' => '\t'}

print "File name: "
file_name = gets
file_name_chomped = file_name.chomp
puts file_name_chomped

text = File.read("/home/forrest/dictionaryreplace/" + file_name_chomped)

dictionary.each do |plain, code|
	@new_text = text.gsub(plain, code)
end
File.open(file_name_chomped + "-edited.txt","w") do |newcontents|
	newcontents.puts(@new_text)
end
