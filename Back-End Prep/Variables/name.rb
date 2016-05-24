puts "Please enter your name: "
name = gets.chomp
puts "Hello there nice to meet you " + name

puts "Lets write your name a few times: "
10.times do |n|
  puts name
end

# No errors from the following blocks 
x = 0 
3.times do 
  x += 1
end
puts x

#Error is on line 3. Explains that the variable "shoes" does not exist inside the local scope. Possibily attempting to use variable from a class/instance method inside a new block/out of scope

