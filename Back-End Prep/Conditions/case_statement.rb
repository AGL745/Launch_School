#Program Case Statement

#Declare a as variable
a = 5 

case a 
when 5
  puts "a is 5"
when 6
  puts "a is 6"
when 7
  puts "a is 7"
else
  puts "Not quite sure about your number" 
end 

#Refactor Code
a = 5 
answer = case a 
         when 5
           "a is 5"
         when 6
           "a is 6"
         else
           "neither"
         end
puts answer 
