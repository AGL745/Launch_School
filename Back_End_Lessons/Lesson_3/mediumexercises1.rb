# Launch School
# Exercises Medium 1 - Lesson 3
# Allan Latty

#Question 1: For this exercise, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

string = "The Flintstones Rock!"

#My answer
for i in 1..10 do puts (" " * i) + string end

#Launch answer
10.times { | count | puts (" " * count) + string}

#Question 2: Create a hash that expresses the frequency with which each letter occurs in this string:
# ex. { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

 statement = "The Flintstones Rock"


#My solution
#First create global accessible storage hash
 my_hash = {}

#Lets get each letter first
#Now lets count each char

statement.each_char do |char|
   my_hash[char] = statement.count(char)
end 
puts my_hash

#Launch Solution

result = {}
letters = ("A".."Z").to_a + ("a".."z").to_a
letters.each do | letter |
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
puts result

# Differences
# My solution includes spaces. 
# Scan - Iterates through str, matching the pattern (which may be a Regexp or a String)

#Question 3: The result of the following statement will be an error:
#puts "the value of 40 + 2 is " + (40 + 2)

#Fix 1: Convert integer to string
puts "the value of 40 + 2 is " + (40 + 2).to_s
#Fix 2: Interpolation
puts "the value of 40 + 2 is #{40 + 2}"

#Question 4: What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
p numbers
#This prints the first number in array (0 index) then shift, first in first out, removes that number from the array causing the index to change. The next iteration starts at index 1 printing the 3. Shift then removed the (0 index again) leaving 3,4. Iterator count is now at the end of array (index 3)

#What would be output by this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#Will print 1,2 pop removes via last in first out stacking. 
#Learning Point
# - Iterates operate on actual data inside array not stale meta data

#Question 5: Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

=begin
  Alyssa noticed that this will fail if you call this with an input of 0 or a negative number and asked Alan to change the loop. How can you change the loop construct (instead of using begin/end/until) to make this work? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

Bonus 1

What is the purpose of the number % dividend == 0 ?

Bonus 2

What is the purpose of the second-to-last line in the method (the divisors before the method's end)?
  
=end

def factors2(number)
  dividend = number
  divisors = []

  if number > 0
    while dividend > 0
      #number % (modulus) dividend == 0 checks that there is no remainder after dividing by dividend
      if number % dividend == 0
        divisors << number / dividend
      end
      dividend -= 1 
    end
  else
    puts "Only positive numbers please."
  end 
  #Bonus 2: Ruby automatically returns the last line in a block
  divisors
end

#factors2(0)
p factors2(20)

#Launch Answer
#while dividend > 0 do
#  divisors << number / dividend if number % dividend == 0
#  dividend -= 1
#end

#Question 6: Modifying a rolling buffer with << (shovel) or +
# shovel is destructive 

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

#During method one implementation the buffer is called as a parameter and passed via reference. The shovel symbol will modify the buffer.

#Question 7: Fix code hint - limit variable

$limit = 15

def fib(first_num, second_num)
  while second_num < $limit
    sum = first_num + second_num
    first_num = second_num
  end
    sum
end


#Error Detection process
#1 Read code (visual inspection)
#2 Recreate error in compiler
#3 Further isolate and troubleshoot with small adjustments

=begin
Error

  mediumexercises1.rb:151:in `fib': undefined local variable or method `limit' for main:Object (NameError)
  from mediumexercises1.rb:159:in `<main>'
  
=end

#Fixed by making limit a global variable

#Launch answer
# Add parameter then pass limit as an additional argument to the method

#Question 8: n another example we used some built-in string methods to change the case of a string. A notably missing method is something provided in Rails, but not in Ruby itself...titleize! This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title.

#Write your own version of the rails titleize implementation.

=begin
  pseudo code

  define a method
  accepts a string as argument
  iterates through string
  capitalize the first letter of each word
  update current string or store as new string
  return updated string titlelize
=end

#My answer
def titleized(myString)
  newString = myString.split.map { |e| e.capitalize}
  newString.join(" ")
end

p titleized("Here is my new titleize")

#Launch answer
def titleized2(words)
  words.split.map { |word| word.capitalize }.join(" ")
end


#Question 9
  
=begin
  
Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

=end

  munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female", "Array" => ["Hello", "World"]}
}

#My solution
puts munsters.each { |key, value| munsters[key].store("age_group", 
case munsters[key]["age"] 
when 0..17
  munsters[key]["age_group"] = "kid"
when 18..64
  munsters[key]["age_group"] = "adult"
else
    munsters[key]["age_group"] = "old"
end
  )}

#Launch Solution
munsters.each do |name, values|
  case values["age"]
  when 0..17
    values["age_group"] = "kid"
  when 17..65
    values["age_group"] = "adult"
  else
    values["age_group"] = "old"
  end
end
