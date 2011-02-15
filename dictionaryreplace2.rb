#!/usr/bin/env ruby


print "File name: "
file_name = gets
file_name_chomped= file_name.chomp
text = File.read("/home/forrest/dictionaryreplace/" + file_name_chomped) 
text_new = text.gsub("  ","bloop")
puts text_new


