#Execises

x = [1,2,3,4,5]
x.each do |a|
  a + 1
end

#This method call on the x array will iterate through the array adding 1 to each index element value

#Exercise 2
loop do
  puts "Please enter your input: "
  user_input = gets.chomp

  if user_input == 'STOP'
    break
  end

  puts "Type STOP to quit"
end

#Exercise 2a
x = ""
while x != "STOP" do
  puts "Hi how are you doing? "
  answer = gets.chomp
  puts "Should I ask you again? "
  x = gets.chomp
end


#Exercise 3
name_array = ["Dan", "Jimmy", "Blake", "Andrew"]

name_array.each_with_index { |i, j| puts "#{i}. #{j}" }

#Exercise 4
def countdown(num)
  
  if num == 0
    puts num 
  else
    puts num
    puts countdown(num - 1)
  end
end

countdown(5)





