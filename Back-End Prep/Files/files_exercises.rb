#Exercise one.
#Take one file content output as one

require 'pathname'
simple = File.open("simple_file.txt", "w+") do |file|
file << "another example of writing to a file.\nHere is a new line.!"

original = File.new("original_file.txt", "w+") 
File.open(original, "a") do |file|
  file.puts simple
end

File.readlines(original).each do |line|
  puts line
end


f = File.new("simple_file2.txt", "r")
pn = Pathname.new(f)

pn.extname
File.extname("simple_file.txt")

pn = Pathname.new('.')
pn.entries.each { |f| puts "#{f} has extension .txt" if f.extname == ".txt"}

