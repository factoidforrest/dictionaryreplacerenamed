#asks for folder
puts "enter project directory:"
directory = "/home/forrest/dictionaryreplace/Testdata"
puts Dir.pwd

def folder_explorer(directory) 
	puts Dir.entries(directory)

	Dir.entries(directory).each do |entry|
		if File.directory?(entry) and entry != (".") and entry != ("..")
			folder_explorer(entry)
		end
		
		if entry.include?(".rb")
			body= File.read(entry)
			new_body = body.gsub("  ","\t")
			f = File.new(entry, "w")
			f.puts(new_body)
			
		end
	
	end
end
Def file_edit(file)
				body= File.read(entry)
			new_body = body.gsub("  ","\t")
			f = File.new(entry, "w")
			f.puts(new_body)
end
folder_explorer(directory)
