#While Loops
#Loops and Iterators Chapter
puts "Please enter a number: "
user_number = gets.chomp.to_i
while user_number >= 0 do
  puts user_number
  user_number -= 1
end

#Until Loops
puts "Please enter number: "
user_input2 = gets.chomp.to_i
until user_input2 == 0 do
  if user_input2 < 0 
    user_input2 += 1
    puts user_input2
  else
    user_input2 -= 1
    puts user_input2
  end
end
puts "Done"

  
