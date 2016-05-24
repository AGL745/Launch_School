#Methods chapter1 Exercises
#Exercises 

#Program name: "Greeting Message"
#*Formal arugment cannot be a canstant error. Trying to capitalize parameter name. 
def greeting(name= "Marie")
  puts "Please enter your name: "
  name = gets.chomp
  puts "Hello there, nice to meet you " + name + ". Do you speak English"

end

greeting()

#Exercise two
#1) x = 2        sets the variable x = 2 and returns 2 to console
#2) puts x = 2   prints to console value stored in variable returns nil
#3) p name = "Joe"  prints the value stored in name variable and returns value
#4) sets the variable four equal to the value "four". Returns "four"
#5) print something = "nothing" prints nothing to console and returns nil

#Exercise Three 
#Program Name: Variable Multiply

def multiply()
  puts "Please enter first number to be multiplied"
  num1 = gets.chomp
  puts num1.to_s + " will be mulitplied by, enter second number: "
  num2 = gets.chomp
  puts "The result is: " 
  p num1.to_i * num2.to_i 
end

multiply()

#Exercise 4
def scream(words)
  words = words + "!!!!"
  return
  puts words 
end

scream("Yippee")

# This program returns nothing because return statement is called before the puts method

#Exercise5
#Program Name: Screams Words 
def scream(words)
  words += "!!!!"
  puts words
end

scream("Hello")

#Exercise 6.
#--Passing incorrect number of arguments to method called calculate_product'

puts "Execise for Methods Complete!"
