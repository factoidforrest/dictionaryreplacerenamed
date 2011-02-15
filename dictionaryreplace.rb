#!/usr/bin/env ruby
dictionary = {'  ' => '	'}

print "File name: "
file_name = gets

text = File.read (file_name)

dictionary.each do |pair|
	new_text = text.gsub(pair)
end
File.new( file_name + "-edited.txt","w") do |newcontents|
	newcontents << new_text
end
